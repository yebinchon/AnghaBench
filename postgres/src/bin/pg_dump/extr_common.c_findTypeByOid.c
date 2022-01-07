
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeInfo ;
typedef int Oid ;


 scalar_t__ findObjectByOid (int ,int ,int ) ;
 int numTypes ;
 int typinfoindex ;

TypeInfo *
findTypeByOid(Oid oid)
{
 return (TypeInfo *) findObjectByOid(oid, typinfoindex, numTypes);
}
