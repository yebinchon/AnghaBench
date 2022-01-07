
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int data ;
typedef int VOID ;
typedef int ULONG ;
typedef int PCONFIGURATION_COMPONENT_DATA ;


 int AdapterClass ;
 int FldrCreateComponentKey (int ,int ,int ,int ,int ,int ,int *,int *,int ,int *) ;
 int MultiFunctionAdapter ;
 int NarrowToWide (int *,char*) ;
 int OfwHandleDiskController (int ,int,int ) ;
 int OfwHandleDiskObject (int ,int,int ,int ) ;
 int ofw_child (int) ;
 int ofw_getprop (int,char*,char*,int) ;
 int ofw_getproplen (int,char*) ;
 int ofw_nextprop (int,char*,char*) ;
 int ofw_package_to_path (int,char*,int) ;
 int ofw_peer (int) ;
 int printf (char*,char*,int) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 char* strrchr (char*,char) ;

VOID OfwCopyDeviceTree
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

    NarrowToWide(wide_name, name);


    FldrCreateComponentKey
        (ParentKey,
         AdapterClass,
         MultiFunctionAdapter,
         0,
         0,
         (ULONG)-1,
         ((void*)0),
         ((void*)0),
         0,
         &NewKey);


    for (prev_name = ""; ofw_nextprop(node, prev_name, cur_name) == 1; )
    {
        proplen = ofw_getproplen(node, cur_name);
        if (proplen > 256 || proplen < 0)
        {
            printf("Warning: not getting prop %s (too long: %d)\n",
                   cur_name, proplen);
            continue;
        }
        ofw_getprop(node, cur_name, data, sizeof(data));


        if (!strcmp(cur_name, "device_type"))
            strcpy(devtype, (char *)data);

        NarrowToWide(wide_name, cur_name);


        strcpy(data, cur_name);
        prev_name = data;
    }
    for (node = ofw_child(node); node; node = ofw_peer(node))
    {
        ofw_package_to_path(node, data, sizeof(data));
        slash = strrchr(data, '/');
        if (slash) slash++; else continue;
        OfwCopyDeviceTree
            (NewKey, slash, node, BusNumber, DiskController, DiskNumber);
    }
}
