#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* fn_cvid_v4 ) (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  (* fn_cvid_v1 ) (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  cvid_codebook ;
struct TYPE_3__ {unsigned int strip_num; int /*<<< orphan*/ ** v1_codebook; int /*<<< orphan*/ ** v4_codebook; } ;
typedef  TYPE_1__ cinepak_info ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned long MAX_STRIPS ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,long,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,unsigned long,unsigned long,int,int,unsigned int) ; 
 long FUNC12 () ; 
 unsigned long FUNC13 () ; 
 int FUNC14 (unsigned int,int) ; 
 void* FUNC15 () ; 
 void* FUNC16 (int) ; 
 unsigned char* in_buffer ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static void FUNC20(cinepak_info *cvinfo, unsigned char *buf, int size,
           unsigned char *output, unsigned int out_width, unsigned int out_height, int bit_per_pixel, BOOL inverted)
{
    cvid_codebook *v4_codebook, *v1_codebook, *codebook = NULL;
    unsigned long x, y, y_bottom, cnum, strip_id, chunk_id,
                  x0, y0, x1, y1, ci, flag, mask;
    long top_size, chunk_size;
    unsigned char *frm_ptr;
    unsigned int i, cur_strip, addr;
    int d0, d1, d2, d3, frm_stride, bpp = 3;
    fn_cvid_v1 cvid_v1 = cvid_v1_24;
    fn_cvid_v4 cvid_v4 = cvid_v4_24;
    struct frame_header
    {
      unsigned char flags;
      unsigned long length;
      unsigned short width;
      unsigned short height;
      unsigned short strips;
    } frame;

    y = 0;
    y_bottom = 0;
    in_buffer = buf;

    frame.flags = FUNC12();
    frame.length = FUNC12() << 16;
    frame.length |= FUNC12() << 8;
    frame.length |= FUNC12();

    switch(bit_per_pixel)
        {
        case 15:
            bpp = 2;
            cvid_v1 = cvid_v1_15;
            cvid_v4 = cvid_v4_15;
            break;
        case 16:
            bpp = 2;
            cvid_v1 = cvid_v1_16;
            cvid_v4 = cvid_v4_16;
            break;
        case 24:
            bpp = 3;
            cvid_v1 = cvid_v1_24;
            cvid_v4 = cvid_v4_24;
            break;
        case 32:
            bpp = 4;
            cvid_v1 = cvid_v1_32;
            cvid_v4 = cvid_v4_32;
            break;
        }

    frm_stride = FUNC14(out_width, bpp * 8);
    frm_ptr = output;

    if(frame.length != size)
        {
        if(frame.length & 0x01) frame.length++; /* AVIs tend to have a size mismatch */
        if(frame.length != size)
            {
            FUNC0("CVID: corruption %d (QT/AVI) != %ld (CV)\n", size, frame.length);
            /* return; */
            }
        }

    frame.width = FUNC15();
    frame.height = FUNC15();
    frame.strips = FUNC15();

    if(frame.strips > cvinfo->strip_num)
        {
        if(frame.strips >= MAX_STRIPS)
            {
            FUNC0("CVID: strip overflow (more than %d)\n", MAX_STRIPS);
            return;
            }

        for(i = cvinfo->strip_num; i < frame.strips; i++)
            {
            if((cvinfo->v4_codebook[i] = FUNC16(sizeof(cvid_codebook) * 260)) == NULL)
                {
                FUNC0("CVID: codebook v4 alloc err\n");
                return;
                }

            if((cvinfo->v1_codebook[i] = FUNC16(sizeof(cvid_codebook) * 260)) == NULL)
                {
                FUNC0("CVID: codebook v1 alloc err\n");
                return;
                }
            }
        }
    cvinfo->strip_num = frame.strips;

    FUNC1("CVID: %ux%u, strips %u, length %lu\n",
          frame.width, frame.height, frame.strips, frame.length);

    for(cur_strip = 0; cur_strip < frame.strips; cur_strip++)
        {
        v4_codebook = cvinfo->v4_codebook[cur_strip];
        v1_codebook = cvinfo->v1_codebook[cur_strip];

        if((cur_strip > 0) && (!(frame.flags & 0x01)))
            {
            FUNC17(cvinfo->v4_codebook[cur_strip], cvinfo->v4_codebook[cur_strip-1], 260 * sizeof(cvid_codebook));
            FUNC17(cvinfo->v1_codebook[cur_strip], cvinfo->v1_codebook[cur_strip-1], 260 * sizeof(cvid_codebook));
            }

        strip_id = FUNC15();        /* 1000 = key strip, 1100 = iter strip */
        top_size = FUNC15();
        y0 = FUNC15();        /* FIXME: most of these are ignored at the moment */
        x0 = FUNC15();
        y1 = FUNC15();
        x1 = FUNC15();

        y_bottom += y1;
        top_size -= 12;
        x = 0;
        if(x1 != out_width)
            FUNC2("CVID: Warning x1 (%ld) != width (%d)\n", x1, out_width);

        FUNC1("   %d) %04lx %04ld <%ld,%ld> <%ld,%ld> yt %ld\n",
              cur_strip, strip_id, top_size, x0, y0, x1, y1, y_bottom);

        while(top_size > 0)
            {
            chunk_id  = FUNC15();
            chunk_size = FUNC15();

            FUNC1("        %04lx %04ld\n", chunk_id, chunk_size);
            top_size -= chunk_size;
            chunk_size -= 4;

            switch(chunk_id)
                {
                    /* -------------------- Codebook Entries -------------------- */
                case 0x2000:
                case 0x2200:
                    codebook = (chunk_id == 0x2200 ? v1_codebook : v4_codebook);
                    cnum = chunk_size/6;
                    for(i = 0; i < cnum; i++) FUNC18(codebook+i, 0);
                    break;

                case 0x2400:
                case 0x2600:        /* 8 bit per pixel */
                    codebook = (chunk_id == 0x2600 ? v1_codebook : v4_codebook);
                    cnum = chunk_size/4;
                    for(i = 0; i < cnum; i++) FUNC18(codebook+i, 1);
                    break;

                case 0x2100:
                case 0x2300:
                    codebook = (chunk_id == 0x2300 ? v1_codebook : v4_codebook);

                    ci = 0;
                    while(chunk_size > 0)
                        {
                        flag = FUNC13();
                        chunk_size -= 4;

                        for(i = 0; i < 32; i++)
                            {
                            if(flag & 0x80000000)
                                {
                                chunk_size -= 6;
                                FUNC18(codebook+ci, 0);
                                }

                            ci++;
                            flag <<= 1;
                            }
                        }
                    while(chunk_size > 0) { FUNC19(); chunk_size--; }
                    break;

                case 0x2500:
                case 0x2700:        /* 8 bit per pixel */
                    codebook = (chunk_id == 0x2700 ? v1_codebook : v4_codebook);

                    ci = 0;
                    while(chunk_size > 0)
                        {
                        flag = FUNC13();
                        chunk_size -= 4;

                        for(i = 0; i < 32; i++)
                            {
                            if(flag & 0x80000000)
                                {
                                chunk_size -= 4;
                                FUNC18(codebook+ci, 1);
                                }

                            ci++;
                            flag <<= 1;
                            }
                        }
                    while(chunk_size > 0) { FUNC19(); chunk_size--; }
                    break;

                    /* -------------------- Frame -------------------- */
                case 0x3000:
                    while((chunk_size > 0) && (y < y_bottom))
                        {
                        flag = FUNC13();
                        chunk_size -= 4;

                        for(i = 0; i < 32; i++)
                            {
                            if(y >= y_bottom) break;
                            if(flag & 0x80000000)    /* 4 bytes per block */
                                {
                                d0 = FUNC12();
                                d1 = FUNC12();
                                d2 = FUNC12();
                                d3 = FUNC12();
                                chunk_size -= 4;

                                addr = FUNC11(inverted, x, y, frm_stride, bpp, out_height);
                                cvid_v4(frm_ptr + addr, output, frm_stride, inverted, v4_codebook+d0, v4_codebook+d1, v4_codebook+d2, v4_codebook+d3);
                                }
                            else        /* 1 byte per block */
                                {
                                addr = FUNC11(inverted, x, y, frm_stride, bpp, out_height);
                                cvid_v1(frm_ptr + addr, output, frm_stride, inverted, v1_codebook + FUNC12());

                                chunk_size--;
                                }

                            x += 4;
                            if(x >= out_width)
                                {
                                x = 0;
                                y += 4;
                                }
                            flag <<= 1;
                            }
                        }
                    while(chunk_size > 0) { FUNC19(); chunk_size--; }
                    break;

                case 0x3100:
                    while((chunk_size > 0) && (y < y_bottom))
                        {
                            /* ---- flag bits: 0 = SKIP, 10 = V1, 11 = V4 ---- */
                        flag = FUNC13();
                        chunk_size -= 4;
                        mask = 0x80000000;

                        while((mask) && (y < y_bottom))
                            {
                            if(flag & mask)
                                {
                                if(mask == 1)
                                    {
                                    if(chunk_size < 0) break;
                                    flag = FUNC13();
                                    chunk_size -= 4;
                                    mask = 0x80000000;
                                    }
                                else mask >>= 1;

                                if(flag & mask)        /* V4 */
                                    {
                                    d0 = FUNC12();
                                    d1 = FUNC12();
                                    d2 = FUNC12();
                                    d3 = FUNC12();
                                    chunk_size -= 4;

                                    addr = FUNC11(inverted, x, y, frm_stride, bpp, out_height);
                                    cvid_v4(frm_ptr + addr, output, frm_stride, inverted, v4_codebook+d0, v4_codebook+d1, v4_codebook+d2, v4_codebook+d3);
                                    }
                                else        /* V1 */
                                    {
                                    chunk_size--;

                                    addr = FUNC11(inverted, x, y, frm_stride, bpp, out_height);
                                    cvid_v1(frm_ptr + addr, output, frm_stride, inverted, v1_codebook + FUNC12());
                                    }
                                }        /* else SKIP */

                            mask >>= 1;
                            x += 4;
                            if(x >= out_width)
                                {
                                x = 0;
                                y += 4;
                                }
                            }
                        }

                    while(chunk_size > 0) { FUNC19(); chunk_size--; }
                    break;

                case 0x3200:        /* each byte is a V1 codebook */
                    while((chunk_size > 0) && (y < y_bottom))
                        {
                        addr = FUNC11(inverted, x, y, frm_stride, bpp, out_height);
                        cvid_v1(frm_ptr + addr, output, frm_stride, inverted, v1_codebook + FUNC12());

                        chunk_size--;
                        x += 4;
                        if(x >= out_width)
                            {
                            x = 0;
                            y += 4;
                            }
                        }
                    while(chunk_size > 0) { FUNC19(); chunk_size--; }
                    break;

                default:
                    FUNC0("CVID: unknown chunk_id %08lx\n", chunk_id);
                    while(chunk_size > 0) { FUNC19(); chunk_size--; }
                    break;
                }
            }
        }

    if(frame.length != size)
        {
        if(frame.length & 0x01) frame.length++; /* AVIs tend to have a size mismatch */
        if(frame.length != size)
            {
            long xlen;
            FUNC19();
            xlen = FUNC12() << 16;
            xlen |= FUNC12() << 8;
            xlen |= FUNC12(); /* Read Len */
            FUNC2("CVID: END INFO chunk size %d cvid size1 %ld cvid size2 %ld\n",
                  size, frame.length, xlen);
            }
        }
}