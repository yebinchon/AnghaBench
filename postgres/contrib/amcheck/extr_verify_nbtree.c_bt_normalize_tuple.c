
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_19__ {int rel; } ;
struct TYPE_18__ {int attlen; scalar_t__ attbyval; int attnum; } ;
struct TYPE_17__ {int t_tid; } ;
struct TYPE_16__ {int natts; } ;
typedef TYPE_2__* IndexTuple ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int Datum ;
typedef TYPE_4__ BtreeCheckState ;


 int DatumGetPointer (int ) ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 int INDEX_MAX_KEYS ;
 int IndexTupleHasVarwidths (TYPE_2__*) ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int PG_DETOAST_DATUM (int ) ;
 int PointerGetDatum (int ) ;
 TYPE_1__* RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 scalar_t__ VARATT_IS_COMPRESSED (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ,int ) ;
 TYPE_2__* index_form_tuple (TYPE_1__*,int *,int*) ;
 int index_getattr (TYPE_2__*,int ,TYPE_1__*,int*) ;
 int pfree (int ) ;

__attribute__((used)) static IndexTuple
bt_normalize_tuple(BtreeCheckState *state, IndexTuple itup)
{
 TupleDesc tupleDescriptor = RelationGetDescr(state->rel);
 Datum normalized[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];
 bool toast_free[INDEX_MAX_KEYS];
 bool formnewtup = 0;
 IndexTuple reformed;
 int i;


 if (!IndexTupleHasVarwidths(itup))
  return itup;

 for (i = 0; i < tupleDescriptor->natts; i++)
 {
  Form_pg_attribute att;

  att = TupleDescAttr(tupleDescriptor, i);


  toast_free[i] = 0;
  normalized[i] = index_getattr(itup, att->attnum,
           tupleDescriptor,
           &isnull[i]);
  if (att->attbyval || att->attlen != -1 || isnull[i])
   continue;






  if (VARATT_IS_EXTERNAL(DatumGetPointer(normalized[i])))
   ereport(ERROR,
     (errcode(ERRCODE_INDEX_CORRUPTED),
      errmsg("external varlena datum in tuple that references heap row (%u,%u) in index \"%s\"",
       ItemPointerGetBlockNumber(&(itup->t_tid)),
       ItemPointerGetOffsetNumber(&(itup->t_tid)),
       RelationGetRelationName(state->rel))));
  else if (VARATT_IS_COMPRESSED(DatumGetPointer(normalized[i])))
  {
   formnewtup = 1;
   normalized[i] = PointerGetDatum(PG_DETOAST_DATUM(normalized[i]));
   toast_free[i] = 1;
  }
 }


 if (!formnewtup)
  return itup;
 reformed = index_form_tuple(tupleDescriptor, normalized, isnull);
 reformed->t_tid = itup->t_tid;


 for (i = 0; i < tupleDescriptor->natts; i++)
  if (toast_free[i])
   pfree(DatumGetPointer(normalized[i]));

 return reformed;
}
