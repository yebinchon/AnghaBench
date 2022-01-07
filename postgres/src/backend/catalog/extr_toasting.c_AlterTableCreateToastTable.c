
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int LOCKMODE ;
typedef int Datum ;


 int CheckAndCreateToastTable (int ,int ,int ,int) ;

void
AlterTableCreateToastTable(Oid relOid, Datum reloptions, LOCKMODE lockmode)
{
 CheckAndCreateToastTable(relOid, reloptions, lockmode, 1);
}
