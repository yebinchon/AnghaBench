
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int RangeVar ;
typedef int Oid ;
typedef scalar_t__ LOCKMODE ;


 int AcceptInvalidationMessages () ;
 scalar_t__ NoLock ;
 int RangeVarGetRelid (int const*,scalar_t__,int) ;
 int relation_open (int ,scalar_t__) ;

Relation
relation_openrv(const RangeVar *relation, LOCKMODE lockmode)
{
 Oid relOid;
 if (lockmode != NoLock)
  AcceptInvalidationMessages();


 relOid = RangeVarGetRelid(relation, lockmode, 0);


 return relation_open(relOid, NoLock);
}
