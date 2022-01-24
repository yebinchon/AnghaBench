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
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  MACHVTBL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MachVtbl ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

VOID
FUNC7(const char *CmdLine)
{
    ULONG PciId;

    FUNC6(&MachVtbl, 0, sizeof(MACHVTBL));

    /* Check for Xbox by identifying device at PCI 0:0:0, if it's
     * 0x10de/0x02a5 then we're running on an Xbox */
    FUNC4((ULONG*)0xcf8, FUNC0(0, 0, 0));
    PciId = FUNC3((ULONG*)0xcfc);
    if (PciId == 0x02a510de)
    {
        FUNC5(CmdLine);
    }
    else
    {
        FUNC2(CmdLine);
    }

    FUNC1();
}