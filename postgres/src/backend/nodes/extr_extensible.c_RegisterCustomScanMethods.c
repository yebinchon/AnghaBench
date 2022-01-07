
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CustomName; } ;
typedef TYPE_1__ CustomScanMethods ;


 int RegisterExtensibleNodeEntry (int *,char*,int ,TYPE_1__ const*) ;
 int custom_scan_methods ;

void
RegisterCustomScanMethods(const CustomScanMethods *methods)
{
 RegisterExtensibleNodeEntry(&custom_scan_methods,
        "Custom Scan Methods",
        methods->CustomName,
        methods);
}
