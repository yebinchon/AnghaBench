
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_4__ {int attnum; } ;
typedef int Relation ;
typedef TYPE_1__* Form_pg_attribute ;
typedef int CatalogIndexState ;


 int Assert (int) ;
 int AttributeRelationId ;
 int CatalogCloseIndexes (int ) ;
 int CatalogOpenIndexes (int ) ;
 int InsertPgAttributeTuple (int ,TYPE_1__*,int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 TYPE_1__* TupleDescAttr (int ,int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
AppendAttributeTuples(Relation indexRelation, int numatts)
{
 Relation pg_attribute;
 CatalogIndexState indstate;
 TupleDesc indexTupDesc;
 int i;




 pg_attribute = table_open(AttributeRelationId, RowExclusiveLock);

 indstate = CatalogOpenIndexes(pg_attribute);




 indexTupDesc = RelationGetDescr(indexRelation);

 for (i = 0; i < numatts; i++)
 {
  Form_pg_attribute attr = TupleDescAttr(indexTupDesc, i);

  Assert(attr->attnum == i + 1);

  InsertPgAttributeTuple(pg_attribute, attr, indstate);
 }

 CatalogCloseIndexes(indstate);

 table_close(pg_attribute, RowExclusiveLock);
}
