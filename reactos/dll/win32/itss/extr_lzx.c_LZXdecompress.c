
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzx_bits {int dummy; } ;
struct LZXstate {unsigned char* window; int window_posn; int window_size; int R0; int R1; int R2; int header_read; int intel_filesize; int block_remaining; int block_type; int block_length; int main_elements; int intel_started; int intel_curpos; int frames_read; } ;
typedef int UWORD ;
typedef int ULONG ;
typedef unsigned char UBYTE ;
typedef int LONG ;


 int ALIGNED ;
 int BUILD_TABLE (int ) ;
 int DECR_DATAFORMAT ;
 int DECR_ILLEGALDATA ;
 int DECR_OK ;
 int ENSURE_BITS (int) ;
 int INIT_BITSTREAM ;
 int LENGTH ;
 int* LENTABLE (int ) ;



 int LZX_MIN_MATCH ;
 int LZX_NUM_CHARS ;
 int LZX_NUM_PRIMARY_LENGTHS ;
 int LZX_NUM_SECONDARY_LENGTHS ;
 int MAINTREE ;
 int READ_BITS (int,int) ;
 int READ_HUFFSYM (int ,int) ;
 int READ_LENGTHS (int ,int,int) ;
 int* extra_bits ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int * position_base ;

int LZXdecompress(struct LZXstate *pState, unsigned char *inpos, unsigned char *outpos, int inlen, int outlen) {
    UBYTE *endinp = inpos + inlen;
    UBYTE *window = pState->window;
    UBYTE *runsrc, *rundest;
    UWORD *hufftbl;

    ULONG window_posn = pState->window_posn;
    ULONG window_size = pState->window_size;
    ULONG R0 = pState->R0;
    ULONG R1 = pState->R1;
    ULONG R2 = pState->R2;

    register ULONG bitbuf;
    register int bitsleft;
    ULONG match_offset, i,j,k;
    struct lzx_bits lb;

    int togo = outlen, this_run, main_element, aligned_bits;
    int match_length, length_footer, extra, verbatim_bits;
    int copy_length;

    INIT_BITSTREAM;


    if (!pState->header_read) {
        i = j = 0;
        READ_BITS(k, 1); if (k) { READ_BITS(i,16); READ_BITS(j,16); }
        pState->intel_filesize = (i << 16) | j;
        pState->header_read = 1;
    }


    while (togo > 0) {

        if (pState->block_remaining == 0) {
            if (pState->block_type == 129) {
                if (pState->block_length & 1) inpos++;
                INIT_BITSTREAM;
            }

            READ_BITS(pState->block_type, 3);
            READ_BITS(i, 16);
            READ_BITS(j, 8);
            pState->block_remaining = pState->block_length = (i << 8) | j;

            switch (pState->block_type) {
                case 130:
                    for (i = 0; i < 8; i++) { READ_BITS(j, 3); LENTABLE(ALIGNED)[i] = j; }
                    BUILD_TABLE(ALIGNED);


                case 128:
                    READ_LENGTHS(MAINTREE, 0, 256);
                    READ_LENGTHS(MAINTREE, 256, pState->main_elements);
                    BUILD_TABLE(MAINTREE);
                    if (LENTABLE(MAINTREE)[0xE8] != 0) pState->intel_started = 1;

                    READ_LENGTHS(LENGTH, 0, LZX_NUM_SECONDARY_LENGTHS);
                    BUILD_TABLE(LENGTH);
                    break;

                case 129:
                    pState->intel_started = 1;
                    ENSURE_BITS(16);
                    if (bitsleft > 16) inpos -= 2;
                    R0 = inpos[0]|(inpos[1]<<8)|(inpos[2]<<16)|(inpos[3]<<24);inpos+=4;
                    R1 = inpos[0]|(inpos[1]<<8)|(inpos[2]<<16)|(inpos[3]<<24);inpos+=4;
                    R2 = inpos[0]|(inpos[1]<<8)|(inpos[2]<<16)|(inpos[3]<<24);inpos+=4;
                    break;

                default:
                    return DECR_ILLEGALDATA;
            }
        }


        if (inpos > endinp) {
            if (inpos > (endinp+2) || bitsleft < 16) return DECR_ILLEGALDATA;
        }

        while ((this_run = pState->block_remaining) > 0 && togo > 0) {
            if (this_run > togo) this_run = togo;
            togo -= this_run;
            pState->block_remaining -= this_run;


            window_posn &= window_size - 1;

            if ((window_posn + this_run) > window_size)
                return DECR_DATAFORMAT;

            switch (pState->block_type) {

                case 128:
                    while (this_run > 0) {
                        READ_HUFFSYM(MAINTREE, main_element);

                        if (main_element < LZX_NUM_CHARS) {

                            window[window_posn++] = main_element;
                            this_run--;
                        }
                        else {

                            main_element -= LZX_NUM_CHARS;

                            match_length = main_element & LZX_NUM_PRIMARY_LENGTHS;
                            if (match_length == LZX_NUM_PRIMARY_LENGTHS) {
                                READ_HUFFSYM(LENGTH, length_footer);
                                match_length += length_footer;
                            }
                            match_length += LZX_MIN_MATCH;

                            match_offset = main_element >> 3;

                            if (match_offset > 2) {

                                if (match_offset != 3) {
                                    extra = extra_bits[match_offset];
                                    READ_BITS(verbatim_bits, extra);
                                    match_offset = position_base[match_offset] - 2 + verbatim_bits;
                                }
                                else {
                                    match_offset = 1;
                                }


                                R2 = R1; R1 = R0; R0 = match_offset;
                            }
                            else if (match_offset == 0) {
                                match_offset = R0;
                            }
                            else if (match_offset == 1) {
                                match_offset = R1;
                                R1 = R0; R0 = match_offset;
                            }
                            else {
                                match_offset = R2;
                                R2 = R0; R0 = match_offset;
                            }

                            rundest = window + window_posn;
                            this_run -= match_length;


                            if (window_posn >= match_offset) {

                                 runsrc = rundest - match_offset;
                            } else {
                                runsrc = rundest + (window_size - match_offset);
                                copy_length = match_offset - window_posn;
                                if (copy_length < match_length) {
                                     match_length -= copy_length;
                                     window_posn += copy_length;
                                     while (copy_length-- > 0) *rundest++ = *runsrc++;
                                     runsrc = window;
                                }
                            }
                            window_posn += match_length;


                            while (match_length-- > 0) *rundest++ = *runsrc++;

                        }
                    }
                    break;

                case 130:
                    while (this_run > 0) {
                        READ_HUFFSYM(MAINTREE, main_element);

                        if (main_element < LZX_NUM_CHARS) {

                            window[window_posn++] = main_element;
                            this_run--;
                        }
                        else {

                            main_element -= LZX_NUM_CHARS;

                            match_length = main_element & LZX_NUM_PRIMARY_LENGTHS;
                            if (match_length == LZX_NUM_PRIMARY_LENGTHS) {
                                READ_HUFFSYM(LENGTH, length_footer);
                                match_length += length_footer;
                            }
                            match_length += LZX_MIN_MATCH;

                            match_offset = main_element >> 3;

                            if (match_offset > 2) {

                                extra = extra_bits[match_offset];
                                match_offset = position_base[match_offset] - 2;
                                if (extra > 3) {

                                    extra -= 3;
                                    READ_BITS(verbatim_bits, extra);
                                    match_offset += (verbatim_bits << 3);
                                    READ_HUFFSYM(ALIGNED, aligned_bits);
                                    match_offset += aligned_bits;
                                }
                                else if (extra == 3) {

                                    READ_HUFFSYM(ALIGNED, aligned_bits);
                                    match_offset += aligned_bits;
                                }
                                else if (extra > 0) {

                                    READ_BITS(verbatim_bits, extra);
                                    match_offset += verbatim_bits;
                                }
                                else {

                                    match_offset = 1;
                                }


                                R2 = R1; R1 = R0; R0 = match_offset;
                            }
                            else if (match_offset == 0) {
                                match_offset = R0;
                            }
                            else if (match_offset == 1) {
                                match_offset = R1;
                                R1 = R0; R0 = match_offset;
                            }
                            else {
                                match_offset = R2;
                                R2 = R0; R0 = match_offset;
                            }

                            rundest = window + window_posn;
                            this_run -= match_length;


                            if (window_posn >= match_offset) {

                                 runsrc = rundest - match_offset;
                            } else {
                                runsrc = rundest + (window_size - match_offset);
                                copy_length = match_offset - window_posn;
                                if (copy_length < match_length) {
                                     match_length -= copy_length;
                                     window_posn += copy_length;
                                     while (copy_length-- > 0) *rundest++ = *runsrc++;
                                     runsrc = window;
                                }
                            }
                            window_posn += match_length;


                            while (match_length-- > 0) *rundest++ = *runsrc++;

                        }
                    }
                    break;

                case 129:
                    if ((inpos + this_run) > endinp) return DECR_ILLEGALDATA;
                    memcpy(window + window_posn, inpos, (size_t) this_run);
                    inpos += this_run; window_posn += this_run;
                    break;

                default:
                    return DECR_ILLEGALDATA;
            }

        }
    }

    if (togo != 0) return DECR_ILLEGALDATA;
    memcpy(outpos, window + ((!window_posn) ? window_size : window_posn) - outlen, (size_t) outlen);

    pState->window_posn = window_posn;
    pState->R0 = R0;
    pState->R1 = R1;
    pState->R2 = R2;


    if ((pState->frames_read++ < 32768) && pState->intel_filesize != 0) {
        if (outlen <= 6 || !pState->intel_started) {
            pState->intel_curpos += outlen;
        }
        else {
            UBYTE *data = outpos;
            UBYTE *dataend = data + outlen - 10;
            LONG curpos = pState->intel_curpos;
            LONG filesize = pState->intel_filesize;
            LONG abs_off, rel_off;

            pState->intel_curpos = curpos + outlen;

            while (data < dataend) {
                if (*data++ != 0xE8) { curpos++; continue; }
                abs_off = data[0] | (data[1]<<8) | (data[2]<<16) | (data[3]<<24);
                if ((abs_off >= -curpos) && (abs_off < filesize)) {
                    rel_off = (abs_off >= 0) ? abs_off - curpos : abs_off + filesize;
                    data[0] = (UBYTE) rel_off;
                    data[1] = (UBYTE) (rel_off >> 8);
                    data[2] = (UBYTE) (rel_off >> 16);
                    data[3] = (UBYTE) (rel_off >> 24);
                }
                data += 4;
                curpos += 5;
            }
        }
    }
    return DECR_OK;
}
