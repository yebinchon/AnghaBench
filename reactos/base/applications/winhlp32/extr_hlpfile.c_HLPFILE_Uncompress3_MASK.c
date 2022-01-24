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
struct TYPE_3__ {unsigned int num_phrases; unsigned int* phrases_offsets; int const* phrases_buffer; } ;
typedef  TYPE_1__ HLPFILE ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,unsigned int) ; 

__attribute__((used)) static BOOL FUNC3(HLPFILE* hlpfile, char* dst, const char* dst_end,
                                const BYTE* src, const BYTE* src_end)
{
    unsigned int idx, len;

    for (; src < src_end; src++)
    {
        if ((*src & 1) == 0)
        {
            idx = *src / 2;
            if (idx > hlpfile->num_phrases)
            {
                FUNC0("index in phrases %d/%d\n", idx, hlpfile->num_phrases);
                len = 0;
            }
            else
            {
                len = hlpfile->phrases_offsets[idx + 1] - hlpfile->phrases_offsets[idx];
                if (dst + len <= dst_end)
                    FUNC1(dst, &hlpfile->phrases_buffer[hlpfile->phrases_offsets[idx]], len);
            }
        }
        else if ((*src & 0x03) == 0x01)
        {
            idx = (*src + 1) * 64;
            idx += *++src;
            if (idx > hlpfile->num_phrases)
            {
                FUNC0("index in phrases %d/%d\n", idx, hlpfile->num_phrases);
                len = 0;
            }
            else
            {
                len = hlpfile->phrases_offsets[idx + 1] - hlpfile->phrases_offsets[idx];
                if (dst + len <= dst_end)
                    FUNC1(dst, &hlpfile->phrases_buffer[hlpfile->phrases_offsets[idx]], len);
            }
        }
        else if ((*src & 0x07) == 0x03)
        {
            len = (*src / 8) + 1;
            if (dst + len <= dst_end)
                FUNC1(dst, src + 1, len);
            src += len;
        }
        else
        {
            len = (*src / 16) + 1;
            if (dst + len <= dst_end)
                FUNC2(dst, ((*src & 0x0F) == 0x07) ? ' ' : 0, len);
        }
        dst += len;
    }

    if (dst > dst_end) FUNC0("buffer overflow (%p > %p)\n", dst, dst_end);
    return TRUE;
}