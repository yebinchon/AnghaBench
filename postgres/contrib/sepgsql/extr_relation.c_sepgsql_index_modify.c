
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int Anum_pg_index_indexrelid ;
 int Anum_pg_index_indrelid ;
 int IndexRelationId ;
 int IndexRelidIndexId ;
 int sepgsql_relation_setattr_extra (int ,int ,int ,int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
sepgsql_index_modify(Oid indexOid)
{
 Relation catalog = table_open(IndexRelationId, AccessShareLock);


 sepgsql_relation_setattr_extra(catalog,
           IndexRelidIndexId,
           indexOid,
           Anum_pg_index_indrelid,
           Anum_pg_index_indexrelid);
 table_close(catalog, AccessShareLock);
}
