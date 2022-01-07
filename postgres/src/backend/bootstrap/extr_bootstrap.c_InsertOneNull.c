
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int attname; scalar_t__ attnotnull; } ;
struct TYPE_4__ {int rd_att; } ;


 int Assert (int) ;
 int DEBUG4 ;
 int ERROR ;
 int MAXATTR ;
 int NameStr (int ) ;
 int* Nulls ;
 int PointerGetDatum (int *) ;
 int RelationGetRelationName (TYPE_1__*) ;
 TYPE_2__* TupleDescAttr (int ,int) ;
 TYPE_1__* boot_reldesc ;
 int elog (int ,char*,int,...) ;
 int * values ;

void
InsertOneNull(int i)
{
 elog(DEBUG4, "inserting column %d NULL", i);
 Assert(i >= 0 && i < MAXATTR);
 if (TupleDescAttr(boot_reldesc->rd_att, i)->attnotnull)
  elog(ERROR,
    "NULL value specified for not-null column \"%s\" of relation \"%s\"",
    NameStr(TupleDescAttr(boot_reldesc->rd_att, i)->attname),
    RelationGetRelationName(boot_reldesc));
 values[i] = PointerGetDatum(((void*)0));
 Nulls[i] = 1;
}
