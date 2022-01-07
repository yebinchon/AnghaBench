
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int LOCKMODE ;
typedef int Datum ;


 int InvalidOid ;
 int NoLock ;
 int create_toast_table (int ,int ,int ,int ,int ,int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
CheckAndCreateToastTable(Oid relOid, Datum reloptions, LOCKMODE lockmode, bool check)
{
 Relation rel;

 rel = table_open(relOid, lockmode);


 (void) create_toast_table(rel, InvalidOid, InvalidOid, reloptions, lockmode, check);

 table_close(rel, NoLock);
}
