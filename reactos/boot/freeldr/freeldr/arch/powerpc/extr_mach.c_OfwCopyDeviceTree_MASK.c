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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  PCONFIGURATION_COMPONENT_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  AdapterClass ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MultiFunctionAdapter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,int) ; 
 int FUNC6 (int,char*) ; 
 int FUNC7 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 char* FUNC13 (char*,char) ; 

VOID FUNC14
(PCONFIGURATION_COMPONENT_DATA ParentKey,
 char *name,
 int innode,
 ULONG *BusNumber,
 ULONG *DiskController,
 ULONG *DiskNumber)
{
    int proplen = 0, node = innode;
    char *prev_name, cur_name[64], data[256], *slash, devtype[64];
    wchar_t wide_name[64];
    PCONFIGURATION_COMPONENT_DATA NewKey;

    FUNC1(wide_name, name);

    /* Create a key for this device */
    FUNC0
        (ParentKey,
         AdapterClass,
         MultiFunctionAdapter,
         0,
         0,
         (ULONG)-1,
         NULL,
         NULL,
         0,
         &NewKey);

    /* Add properties */
    for (prev_name = ""; FUNC7(node, prev_name, cur_name) == 1; )
    {
        proplen = FUNC6(node, cur_name);
        if (proplen > 256 || proplen < 0)
        {
            FUNC10("Warning: not getting prop %s (too long: %d)\n",
                   cur_name, proplen);
            continue;
        }
        FUNC5(node, cur_name, data, sizeof(data));

        /* Get device type so we can examine it */
        if (!FUNC11(cur_name, "device_type"))
            FUNC12(devtype, (char *)data);

        FUNC1(wide_name, cur_name);
        //RegSetValue(NewKey, wide_name, REG_BINARY, data, proplen);

        FUNC12(data, cur_name);
        prev_name = data;
    }

#if 0
    /* Special device handling */
    if (!strcmp(devtype, "ata"))
    {
        OfwHandleDiskController(NewKey, node, *DiskController);
        (*DiskController)++;
        *DiskNumber = 0;
    }
    else if (!strcmp(devtype, "disk"))
    {
        OfwHandleDiskObject(NewKey, node, *DiskController, *DiskNumber);
        (*DiskNumber)++;
    }
#endif

    /* Subdevices */
    for (node = FUNC4(node); node; node = FUNC9(node))
    {
        FUNC8(node, data, sizeof(data));
        slash = FUNC13(data, '/');
        if (slash) slash++; else continue;
        FUNC14
            (NewKey, slash, node, BusNumber, DiskController, DiskNumber);
    }
}