#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dwSize; int dwObjSize; int dwFlags; unsigned int dwNumObjs; TYPE_1__* rgodf; int /*<<< orphan*/  dwDataSize; } ;
struct TYPE_4__ {int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  dwType; int /*<<< orphan*/  dwOfs; int /*<<< orphan*/  pguid; } ;
typedef  int /*<<< orphan*/  DIOBJECTDATAFORMAT ;
typedef  TYPE_2__ DIDATAFORMAT ;

/* Variables and functions */
#define  DIDF_ABSAXIS 129 
#define  DIDF_RELAXIS 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(const DIDATAFORMAT *df) {
    unsigned int i;

    FUNC0("Dumping DIDATAFORMAT structure:\n");
    FUNC0("  - dwSize: %d\n", df->dwSize);
    if (df->dwSize != sizeof(DIDATAFORMAT)) {
        FUNC1("Non-standard DIDATAFORMAT structure size %d\n", df->dwSize);
    }
    FUNC0("  - dwObjsize: %d\n", df->dwObjSize);
    if (df->dwObjSize != sizeof(DIOBJECTDATAFORMAT)) {
        FUNC1("Non-standard DIOBJECTDATAFORMAT structure size %d\n", df->dwObjSize);
    }
    FUNC0("  - dwFlags: 0x%08x (", df->dwFlags);
    switch (df->dwFlags) {
        case DIDF_ABSAXIS: FUNC0("DIDF_ABSAXIS"); break;
	case DIDF_RELAXIS: FUNC0("DIDF_RELAXIS"); break;
	default: FUNC0("unknown"); break;
    }
    FUNC0(")\n");
    FUNC0("  - dwDataSize: %d\n", df->dwDataSize);
    FUNC0("  - dwNumObjs: %d\n", df->dwNumObjs);
    
    for (i = 0; i < df->dwNumObjs; i++) {
	FUNC0("  - Object %d:\n", i);
	FUNC0("      * GUID: %s ('%s')\n", FUNC5(df->rgodf[i].pguid), FUNC4(df->rgodf[i].pguid));
        FUNC0("      * dwOfs: %d\n", df->rgodf[i].dwOfs);
        FUNC0("      * dwType: 0x%08x\n", df->rgodf[i].dwType);
	FUNC0("        "); FUNC2(df->rgodf[i].dwType); FUNC0("\n");
        FUNC0("      * dwFlags: 0x%08x\n", df->rgodf[i].dwFlags);
	FUNC0("        "); FUNC3(df->rgodf[i].dwFlags); FUNC0("\n");
    }
}