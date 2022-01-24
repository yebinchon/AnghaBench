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
typedef  int UINT ;
struct TYPE_4__ {int version; int num_phrases; int* phrases_offsets; int* phrases_buffer; int /*<<< orphan*/  hasPhrases; } ;
typedef  TYPE_1__ HLPFILE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL FUNC9(HLPFILE* hlpfile)
{
    UINT i, num, dec_size, head_size;
    BYTE *buf, *end;

    if (!FUNC2(hlpfile, "|Phrases", &buf, &end)) return FALSE;

    if (hlpfile->version <= 16)
        head_size = 13;
    else
        head_size = 17;

    num = hlpfile->num_phrases = FUNC0(buf, 9);
    if (buf + 2 * num + 0x13 >= end) {FUNC7("1a\n"); return FALSE;};

    if (hlpfile->version <= 16)
        dec_size = end - buf - 15 - 2 * num;
    else
        dec_size = FUNC4(buf + 0x13 + 2 * num, end);

    hlpfile->phrases_offsets = FUNC5(FUNC1(), 0, sizeof(unsigned) * (num + 1));
    hlpfile->phrases_buffer  = FUNC5(FUNC1(), 0, dec_size);
    if (!hlpfile->phrases_offsets || !hlpfile->phrases_buffer)
    {
        FUNC6(FUNC1(), 0, hlpfile->phrases_offsets);
        FUNC6(FUNC1(), 0, hlpfile->phrases_buffer);
        return FALSE;
    }

    for (i = 0; i <= num; i++)
        hlpfile->phrases_offsets[i] = FUNC0(buf, head_size + 2 * i) - 2 * num - 2;

    if (hlpfile->version <= 16)
        FUNC8(hlpfile->phrases_buffer, buf + 15 + 2*num, dec_size);
    else
        FUNC3(buf + 0x13 + 2 * num, end, (BYTE*)hlpfile->phrases_buffer);

    hlpfile->hasPhrases = TRUE;
    return TRUE;
}