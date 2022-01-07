
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OprInfo ;
typedef int Oid ;


 scalar_t__ findObjectByOid (int ,int ,int ) ;
 int numOperators ;
 int oprinfoindex ;

OprInfo *
findOprByOid(Oid oid)
{
 return (OprInfo *) findObjectByOid(oid, oprinfoindex, numOperators);
}
