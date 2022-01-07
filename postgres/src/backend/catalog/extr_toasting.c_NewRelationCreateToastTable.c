
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;


 int AccessExclusiveLock ;
 int CheckAndCreateToastTable (int ,int ,int ,int) ;

void
NewRelationCreateToastTable(Oid relOid, Datum reloptions)
{
 CheckAndCreateToastTable(relOid, reloptions, AccessExclusiveLock, 0);
}
