
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int NamespaceInfo ;


 scalar_t__ findObjectByOid (int ,int ,int ) ;
 int nspinfoindex ;
 int numNamespaces ;

NamespaceInfo *
findNamespaceByOid(Oid oid)
{
 return (NamespaceInfo *) findObjectByOid(oid, nspinfoindex, numNamespaces);
}
