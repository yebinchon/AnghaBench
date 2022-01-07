
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int natts; } ;
struct TYPE_13__ {TYPE_2__* bt_columns; } ;
struct TYPE_12__ {int bs_currRangeStart; int bs_pagesPerRange; TYPE_2__* bs_bdesc; TYPE_5__* bs_dtuple; } ;
struct TYPE_11__ {TYPE_8__* bd_tupdesc; } ;
struct TYPE_10__ {int attcollation; } ;
typedef int Relation ;
typedef int ItemPointer ;
typedef TYPE_1__* Form_pg_attribute ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef TYPE_2__ BrinValues ;
typedef TYPE_3__ BrinBuildState ;
typedef int BlockNumber ;


 int BRIN_PROCNUM_ADDVALUE ;
 int BRIN_elog (int ) ;
 int DEBUG2 ;
 int FunctionCall4Coll (int *,int ,int ,int ,int ,int) ;
 int ItemPointerGetBlockNumber (int ) ;
 int PointerGetDatum (TYPE_2__*) ;
 TYPE_1__* TupleDescAttr (TYPE_8__*,int) ;
 int brin_memtuple_initialize (TYPE_5__*,TYPE_2__*) ;
 int form_and_insert_tuple (TYPE_3__*) ;
 int * index_getprocinfo (int ,int,int ) ;

__attribute__((used)) static void
brinbuildCallback(Relation index,
      ItemPointer tid,
      Datum *values,
      bool *isnull,
      bool tupleIsAlive,
      void *brstate)
{
 BrinBuildState *state = (BrinBuildState *) brstate;
 BlockNumber thisblock;
 int i;

 thisblock = ItemPointerGetBlockNumber(tid);







 while (thisblock > state->bs_currRangeStart + state->bs_pagesPerRange - 1)
 {

  BRIN_elog((DEBUG2,
       "brinbuildCallback: completed a range: %u--%u",
       state->bs_currRangeStart,
       state->bs_currRangeStart + state->bs_pagesPerRange));


  form_and_insert_tuple(state);


  state->bs_currRangeStart += state->bs_pagesPerRange;


  brin_memtuple_initialize(state->bs_dtuple, state->bs_bdesc);
 }


 for (i = 0; i < state->bs_bdesc->bd_tupdesc->natts; i++)
 {
  FmgrInfo *addValue;
  BrinValues *col;
  Form_pg_attribute attr = TupleDescAttr(state->bs_bdesc->bd_tupdesc, i);

  col = &state->bs_dtuple->bt_columns[i];
  addValue = index_getprocinfo(index, i + 1,
          BRIN_PROCNUM_ADDVALUE);




  FunctionCall4Coll(addValue,
        attr->attcollation,
        PointerGetDatum(state->bs_bdesc),
        PointerGetDatum(col),
        values[i], isnull[i]);
 }
}
