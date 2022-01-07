
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExtensibleNodeMethods ;


 scalar_t__ GetExtensibleNodeEntry (int ,char const*,int) ;
 int extensible_node_methods ;

const ExtensibleNodeMethods *
GetExtensibleNodeMethods(const char *extnodename, bool missing_ok)
{
 return (const ExtensibleNodeMethods *)
  GetExtensibleNodeEntry(extensible_node_methods,
          extnodename,
          missing_ok);
}
