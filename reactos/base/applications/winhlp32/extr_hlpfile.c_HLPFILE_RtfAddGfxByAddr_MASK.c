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
struct RtfData {int dummy; } ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  HLPFILE ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int const*,int) ; 
 unsigned int FUNC1 (int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct RtfData*,int /*<<< orphan*/ *,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct RtfData*,int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,int) ; 

__attribute__((used)) static  BOOL    FUNC6(struct RtfData* rd, HLPFILE *hlpfile,
                                        const BYTE* ref, ULONG size)
{
    unsigned    i, numpict;

    numpict = FUNC1(ref, 2);
    FUNC5("Got picture magic=%04x #=%d\n", FUNC1(ref, 0), numpict);

    for (i = 0; i < numpict; i++)
    {
        const BYTE*     beg;
        const BYTE*     ptr;
        BYTE            type, pack;

        FUNC5("Offset[%d] = %x\n", i, FUNC0(ref, (1 + i) * 4));
        beg = ptr = ref + FUNC0(ref, (1 + i) * 4);

        type = *ptr++;
        pack = *ptr++;

        switch (type)
        {
        case 5: /* device dependent bmp */
        case 6: /* device independent bmp */
            FUNC2(rd, hlpfile, beg, type, pack);
            break;
        case 8:
            FUNC3(rd, hlpfile, beg, pack);
            break;
        default: FUNC4("Unknown type %u\n", type); return FALSE;
        }

        /* FIXME: hotspots */

        /* FIXME: implement support for multiple picture format */
        if (numpict != 1) FUNC4("Supporting only one bitmap format per logical bitmap (for now). Using first format\n");
        break;
    }
    return TRUE;
}