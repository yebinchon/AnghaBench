#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lzx_bits {int dummy; } ;
struct LZXstate {unsigned char* window; int window_posn; int window_size; int R0; int R1; int R2; int header_read; int intel_filesize; int block_remaining; int block_type; int block_length; int main_elements; int intel_started; int intel_curpos; int /*<<< orphan*/  frames_read; } ;
typedef  int /*<<< orphan*/  UWORD ;
typedef  int ULONG ;
typedef  unsigned char UBYTE ;
typedef  int LONG ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DECR_DATAFORMAT ; 
 int DECR_ILLEGALDATA ; 
 int DECR_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  INIT_BITSTREAM ; 
 int /*<<< orphan*/  LENGTH ; 
 int* FUNC2 (int /*<<< orphan*/ ) ; 
#define  LZX_BLOCKTYPE_ALIGNED 130 
#define  LZX_BLOCKTYPE_UNCOMPRESSED 129 
#define  LZX_BLOCKTYPE_VERBATIM 128 
 int LZX_MIN_MATCH ; 
 int LZX_NUM_CHARS ; 
 int LZX_NUM_PRIMARY_LENGTHS ; 
 int LZX_NUM_SECONDARY_LENGTHS ; 
 int /*<<< orphan*/  MAINTREE ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int* extra_bits ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * position_base ; 

int FUNC7(struct LZXstate *pState, unsigned char *inpos, unsigned char *outpos, int inlen, int outlen) {
    UBYTE *endinp = inpos + inlen;
    UBYTE *window = pState->window;
    UBYTE *runsrc, *rundest;
    UWORD *hufftbl; /* used in READ_HUFFSYM macro as chosen decoding table */

    ULONG window_posn = pState->window_posn;
    ULONG window_size = pState->window_size;
    ULONG R0 = pState->R0;
    ULONG R1 = pState->R1;
    ULONG R2 = pState->R2;

    register ULONG bitbuf;
    register int bitsleft;
    ULONG match_offset, i,j,k; /* ijk used in READ_HUFFSYM macro */
    struct lzx_bits lb; /* used in READ_LENGTHS macro */

    int togo = outlen, this_run, main_element, aligned_bits;
    int match_length, length_footer, extra, verbatim_bits;
    int copy_length;

    INIT_BITSTREAM;

    /* read header if necessary */
    if (!pState->header_read) {
        i = j = 0;
        FUNC3(k, 1); if (k) { FUNC3(i,16); FUNC3(j,16); }
        pState->intel_filesize = (i << 16) | j; /* or 0 if not encoded */
        pState->header_read = 1;
    }

    /* main decoding loop */
    while (togo > 0) {
        /* last block finished, new block expected */
        if (pState->block_remaining == 0) {
            if (pState->block_type == LZX_BLOCKTYPE_UNCOMPRESSED) {
                if (pState->block_length & 1) inpos++; /* realign bitstream to word */
                INIT_BITSTREAM;
            }

            FUNC3(pState->block_type, 3);
            FUNC3(i, 16);
            FUNC3(j, 8);
            pState->block_remaining = pState->block_length = (i << 8) | j;

            switch (pState->block_type) {
                case LZX_BLOCKTYPE_ALIGNED:
                    for (i = 0; i < 8; i++) { FUNC3(j, 3); FUNC2(ALIGNED)[i] = j; }
                    FUNC0(ALIGNED);
                    /* rest of aligned header is same as verbatim */

                case LZX_BLOCKTYPE_VERBATIM:
                    FUNC5(MAINTREE, 0, 256);
                    FUNC5(MAINTREE, 256, pState->main_elements);
                    FUNC0(MAINTREE);
                    if (FUNC2(MAINTREE)[0xE8] != 0) pState->intel_started = 1;

                    FUNC5(LENGTH, 0, LZX_NUM_SECONDARY_LENGTHS);
                    FUNC0(LENGTH);
                    break;

                case LZX_BLOCKTYPE_UNCOMPRESSED:
                    pState->intel_started = 1; /* because we can't assume otherwise */
                    FUNC1(16); /* get up to 16 pad bits into the buffer */
                    if (bitsleft > 16) inpos -= 2; /* and align the bitstream! */
                    R0 = inpos[0]|(inpos[1]<<8)|(inpos[2]<<16)|(inpos[3]<<24);inpos+=4;
                    R1 = inpos[0]|(inpos[1]<<8)|(inpos[2]<<16)|(inpos[3]<<24);inpos+=4;
                    R2 = inpos[0]|(inpos[1]<<8)|(inpos[2]<<16)|(inpos[3]<<24);inpos+=4;
                    break;

                default:
                    return DECR_ILLEGALDATA;
            }
        }

        /* buffer exhaustion check */
        if (inpos > endinp) {
            /* it's possible to have a file where the next run is less than
             * 16 bits in size. In this case, the READ_HUFFSYM() macro used
             * in building the tables will exhaust the buffer, so we should
             * allow for this, but not allow those accidentally read bits to
             * be used (so we check that there are at least 16 bits
             * remaining - in this boundary case they aren't really part of
             * the compressed data)
             */
            if (inpos > (endinp+2) || bitsleft < 16) return DECR_ILLEGALDATA;
        }

        while ((this_run = pState->block_remaining) > 0 && togo > 0) {
            if (this_run > togo) this_run = togo;
            togo -= this_run;
            pState->block_remaining -= this_run;

            /* apply 2^x-1 mask */
            window_posn &= window_size - 1;
            /* runs can't straddle the window wraparound */
            if ((window_posn + this_run) > window_size)
                return DECR_DATAFORMAT;

            switch (pState->block_type) {

                case LZX_BLOCKTYPE_VERBATIM:
                    while (this_run > 0) {
                        FUNC4(MAINTREE, main_element);

                        if (main_element < LZX_NUM_CHARS) {
                            /* literal: 0 to LZX_NUM_CHARS-1 */
                            window[window_posn++] = main_element;
                            this_run--;
                        }
                        else {
                            /* match: LZX_NUM_CHARS + ((slot<<3) | length_header (3 bits)) */
                            main_element -= LZX_NUM_CHARS;

                            match_length = main_element & LZX_NUM_PRIMARY_LENGTHS;
                            if (match_length == LZX_NUM_PRIMARY_LENGTHS) {
                                FUNC4(LENGTH, length_footer);
                                match_length += length_footer;
                            }
                            match_length += LZX_MIN_MATCH;

                            match_offset = main_element >> 3;

                            if (match_offset > 2) {
                                /* not repeated offset */
                                if (match_offset != 3) {
                                    extra = extra_bits[match_offset];
                                    FUNC3(verbatim_bits, extra);
                                    match_offset = position_base[match_offset] - 2 + verbatim_bits;
                                }
                                else {
                                    match_offset = 1;
                                }

                                /* update repeated offset LRU queue */
                                R2 = R1; R1 = R0; R0 = match_offset;
                            }
                            else if (match_offset == 0) {
                                match_offset = R0;
                            }
                            else if (match_offset == 1) {
                                match_offset = R1;
                                R1 = R0; R0 = match_offset;
                            }
                            else /* match_offset == 2 */ {
                                match_offset = R2;
                                R2 = R0; R0 = match_offset;
                            }

                            rundest = window + window_posn;
                            this_run -= match_length;

                            /* copy any wrapped around source data */
                            if (window_posn >= match_offset) {
                                /* no wrap */
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
 
                            /* copy match data - no worries about destination wraps */
                            while (match_length-- > 0) *rundest++ = *runsrc++;

                        }
                    }
                    break;

                case LZX_BLOCKTYPE_ALIGNED:
                    while (this_run > 0) {
                        FUNC4(MAINTREE, main_element);

                        if (main_element < LZX_NUM_CHARS) {
                            /* literal: 0 to LZX_NUM_CHARS-1 */
                            window[window_posn++] = main_element;
                            this_run--;
                        }
                        else {
                            /* match: LZX_NUM_CHARS + ((slot<<3) | length_header (3 bits)) */
                            main_element -= LZX_NUM_CHARS;

                            match_length = main_element & LZX_NUM_PRIMARY_LENGTHS;
                            if (match_length == LZX_NUM_PRIMARY_LENGTHS) {
                                FUNC4(LENGTH, length_footer);
                                match_length += length_footer;
                            }
                            match_length += LZX_MIN_MATCH;

                            match_offset = main_element >> 3;

                            if (match_offset > 2) {
                                /* not repeated offset */
                                extra = extra_bits[match_offset];
                                match_offset = position_base[match_offset] - 2;
                                if (extra > 3) {
                                    /* verbatim and aligned bits */
                                    extra -= 3;
                                    FUNC3(verbatim_bits, extra);
                                    match_offset += (verbatim_bits << 3);
                                    FUNC4(ALIGNED, aligned_bits);
                                    match_offset += aligned_bits;
                                }
                                else if (extra == 3) {
                                    /* aligned bits only */
                                    FUNC4(ALIGNED, aligned_bits);
                                    match_offset += aligned_bits;
                                }
                                else if (extra > 0) { /* extra==1, extra==2 */
                                    /* verbatim bits only */
                                    FUNC3(verbatim_bits, extra);
                                    match_offset += verbatim_bits;
                                }
                                else /* extra == 0 */ {
                                    /* ??? */
                                    match_offset = 1;
                                }

                                /* update repeated offset LRU queue */
                                R2 = R1; R1 = R0; R0 = match_offset;
                            }
                            else if (match_offset == 0) {
                                match_offset = R0;
                            }
                            else if (match_offset == 1) {
                                match_offset = R1;
                                R1 = R0; R0 = match_offset;
                            }
                            else /* match_offset == 2 */ {
                                match_offset = R2;
                                R2 = R0; R0 = match_offset;
                            }

                            rundest = window + window_posn;
                            this_run -= match_length;

                            /* copy any wrapped around source data */
                            if (window_posn >= match_offset) {
                                /* no wrap */
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
 
                            /* copy match data - no worries about destination wraps */
                            while (match_length-- > 0) *rundest++ = *runsrc++;

                        }
                    }
                    break;

                case LZX_BLOCKTYPE_UNCOMPRESSED:
                    if ((inpos + this_run) > endinp) return DECR_ILLEGALDATA;
                    FUNC6(window + window_posn, inpos, (size_t) this_run);
                    inpos += this_run; window_posn += this_run;
                    break;

                default:
                    return DECR_ILLEGALDATA; /* might as well */
            }

        }
    }

    if (togo != 0) return DECR_ILLEGALDATA;
    FUNC6(outpos, window + ((!window_posn) ? window_size : window_posn) - outlen, (size_t) outlen);

    pState->window_posn = window_posn;
    pState->R0 = R0;
    pState->R1 = R1;
    pState->R2 = R2;

    /* intel E8 decoding */
    if ((pState->frames_read++ < 32768) && pState->intel_filesize != 0) {
        if (outlen <= 6 || !pState->intel_started) {
            pState->intel_curpos += outlen;
        }
        else {
            UBYTE *data    = outpos;
            UBYTE *dataend = data + outlen - 10;
            LONG curpos    = pState->intel_curpos;
            LONG filesize  = pState->intel_filesize;
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