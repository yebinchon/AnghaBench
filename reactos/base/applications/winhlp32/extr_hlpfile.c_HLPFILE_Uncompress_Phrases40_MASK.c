#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
typedef  int UINT ;
struct TYPE_4__ {int num_phrases; int /*<<< orphan*/  hasPhrases40; scalar_t__* phrases_buffer; scalar_t__* phrases_offsets; } ;
typedef  int INT ;
typedef  TYPE_1__ HLPFILE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL FUNC13(HLPFILE* hlpfile)
{
    UINT num;
    INT dec_size, cpr_size;
    BYTE *buf_idx, *end_idx;
    BYTE *buf_phs, *end_phs;
    ULONG* ptr, mask = 0;
    unsigned int i;
    unsigned short bc, n;

    if (!FUNC3(hlpfile, "|PhrIndex", &buf_idx, &end_idx) ||
        !FUNC3(hlpfile, "|PhrImage", &buf_phs, &end_phs)) return FALSE;

    ptr = (ULONG*)(buf_idx + 9 + 28);
    bc = FUNC1(buf_idx, 9 + 24) & 0x0F;
    num = hlpfile->num_phrases = FUNC1(buf_idx, 9 + 4);

    FUNC8("Index: Magic=%08x #entries=%u CpsdSize=%u PhrImgSize=%u\n"
               "\tPhrImgCprsdSize=%u 0=%u bc=%x ukn=%x\n",
               FUNC0(buf_idx, 9 + 0),
               FUNC0(buf_idx, 9 + 4),
               FUNC0(buf_idx, 9 + 8),
               FUNC0(buf_idx, 9 + 12),
               FUNC0(buf_idx, 9 + 16),
               FUNC0(buf_idx, 9 + 20),
               FUNC1(buf_idx, 9 + 24),
               FUNC1(buf_idx, 9 + 26));

    dec_size = FUNC0(buf_idx, 9 + 12);
    cpr_size = FUNC0(buf_idx, 9 + 16);

    if (dec_size != cpr_size &&
        dec_size != FUNC5(buf_phs + 9, end_phs))
    {
        FUNC9("size mismatch %u %u\n",
                  dec_size, FUNC5(buf_phs + 9, end_phs));
        dec_size = FUNC11(dec_size, FUNC5(buf_phs + 9, end_phs));
    }

    hlpfile->phrases_offsets = FUNC6(FUNC2(), 0, sizeof(unsigned) * (num + 1));
    hlpfile->phrases_buffer  = FUNC6(FUNC2(), 0, dec_size);
    if (!hlpfile->phrases_offsets || !hlpfile->phrases_buffer)
    {
        FUNC7(FUNC2(), 0, hlpfile->phrases_offsets);
        FUNC7(FUNC2(), 0, hlpfile->phrases_buffer);
        return FALSE;
    }

#define getbit() ((mask <<= 1) ? (*ptr & mask) != 0: (*++ptr & (mask=1)) != 0)

    hlpfile->phrases_offsets[0] = 0;
    ptr--; /* as we'll first increment ptr because mask is 0 on first getbit() call */
    for (i = 0; i < num; i++)
    {
        for (n = 1; getbit(); n += 1 << bc);
        if (getbit()) n++;
        if (bc > 1 && getbit()) n += 2;
        if (bc > 2 && getbit()) n += 4;
        if (bc > 3 && getbit()) n += 8;
        if (bc > 4 && getbit()) n += 16;
        hlpfile->phrases_offsets[i + 1] = hlpfile->phrases_offsets[i] + n;
    }
#undef getbit

    if (dec_size == cpr_size)
        FUNC12(hlpfile->phrases_buffer, buf_phs + 9, dec_size);
    else
        FUNC4(buf_phs + 9, end_phs, (BYTE*)hlpfile->phrases_buffer);

    hlpfile->hasPhrases40 = TRUE;
    return TRUE;
}