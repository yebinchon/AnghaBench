
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__** bd_info; TYPE_1__* bd_tupdesc; } ;
struct TYPE_12__ {TYPE_2__* bt_columns; int bt_context; } ;
struct TYPE_11__ {int oi_nstored; } ;
struct TYPE_10__ {int bv_allnulls; int bv_hasnulls; int bv_attno; int * bv_values; } ;
struct TYPE_9__ {int natts; } ;
typedef int Datum ;
typedef int BrinValues ;
typedef TYPE_4__ BrinMemTuple ;
typedef TYPE_5__ BrinDesc ;


 int MAXALIGN (int) ;
 int MemoryContextReset (int ) ;

BrinMemTuple *
brin_memtuple_initialize(BrinMemTuple *dtuple, BrinDesc *brdesc)
{
 int i;
 char *currdatum;

 MemoryContextReset(dtuple->bt_context);

 currdatum = (char *) dtuple +
  MAXALIGN(sizeof(BrinMemTuple) +
     sizeof(BrinValues) * brdesc->bd_tupdesc->natts);
 for (i = 0; i < brdesc->bd_tupdesc->natts; i++)
 {
  dtuple->bt_columns[i].bv_allnulls = 1;
  dtuple->bt_columns[i].bv_hasnulls = 0;

  dtuple->bt_columns[i].bv_attno = i + 1;
  dtuple->bt_columns[i].bv_allnulls = 1;
  dtuple->bt_columns[i].bv_hasnulls = 0;
  dtuple->bt_columns[i].bv_values = (Datum *) currdatum;
  currdatum += sizeof(Datum) * brdesc->bd_info[i]->oi_nstored;
 }

 return dtuple;
}
