
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int ExtensionInfo ;


 int extinfoindex ;
 scalar_t__ findObjectByOid (int ,int ,int ) ;
 int numExtensions ;

ExtensionInfo *
findExtensionByOid(Oid oid)
{
 return (ExtensionInfo *) findObjectByOid(oid, extinfoindex, numExtensions);
}
