
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CustomScanMethods ;


 scalar_t__ GetExtensibleNodeEntry (int ,char const*,int) ;
 int custom_scan_methods ;

const CustomScanMethods *
GetCustomScanMethods(const char *CustomName, bool missing_ok)
{
 return (const CustomScanMethods *)
  GetExtensibleNodeEntry(custom_scan_methods,
          CustomName,
          missing_ok);
}
