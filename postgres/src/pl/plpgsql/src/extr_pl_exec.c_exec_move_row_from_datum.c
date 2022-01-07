
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef int TupleDesc ;
struct TYPE_34__ {scalar_t__ er_magic; scalar_t__ er_decltypeid; int flags; scalar_t__ er_typeid; scalar_t__ er_typmod; int dnulls; int dvalues; TYPE_4__* fvalue; } ;
struct TYPE_33__ {int t_data; int t_tableOid; int t_self; int t_len; } ;
struct TYPE_32__ {int atomic; } ;
struct TYPE_31__ {scalar_t__ rectypeid; TYPE_5__* erh; } ;
struct TYPE_30__ {scalar_t__ dtype; } ;
typedef TYPE_1__ PLpgSQL_variable ;
typedef TYPE_2__ PLpgSQL_rec ;
typedef TYPE_3__ PLpgSQL_execstate ;
typedef scalar_t__ Oid ;
typedef int MemoryContext ;
typedef int HeapTupleHeader ;
typedef TYPE_4__ HeapTupleData ;
typedef TYPE_5__ ExpandedRecordHeader ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetEOHP (int ) ;
 int DatumGetHeapTupleHeader (int ) ;
 int DatumGetPointer (int ) ;
 int ER_FLAG_FVALUE_VALID ;
 scalar_t__ ER_MAGIC ;
 int ExpandedRecordIsDomain (TYPE_5__*) ;
 scalar_t__ ExpandedRecordIsEmpty (TYPE_5__*) ;
 int HeapTupleHeaderGetDatumLength (int ) ;
 scalar_t__ HeapTupleHeaderGetTypMod (int ) ;
 scalar_t__ HeapTupleHeaderGetTypeId (int ) ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ PLPGSQL_DTYPE_REC ;
 scalar_t__ RECORDOID ;
 int ReleaseTupleDesc (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED_RW (int ) ;
 int assign_record_var (TYPE_3__*,TYPE_2__*,TYPE_5__*) ;
 int deconstruct_expanded_record (TYPE_5__*) ;
 int exec_move_row (TYPE_3__*,TYPE_1__*,TYPE_4__*,int ) ;
 int exec_move_row_from_fields (TYPE_3__*,TYPE_1__*,TYPE_5__*,int ,int ,int ) ;
 int expanded_record_get_tupdesc (TYPE_5__*) ;
 int expanded_record_set_tuple (TYPE_5__*,TYPE_4__*,int,int) ;
 int get_eval_mcontext (TYPE_3__*) ;
 int lookup_rowtype_tupdesc (scalar_t__,scalar_t__) ;
 TYPE_5__* make_expanded_record_for_rec (TYPE_3__*,TYPE_2__*,int *,TYPE_5__*) ;
 TYPE_5__* make_expanded_record_from_typeid (scalar_t__,scalar_t__,int ) ;
 int revalidate_rectypeid (TYPE_2__*) ;

__attribute__((used)) static void
exec_move_row_from_datum(PLpgSQL_execstate *estate,
       PLpgSQL_variable *target,
       Datum value)
{

 if (VARATT_IS_EXTERNAL_EXPANDED(DatumGetPointer(value)))
 {
  ExpandedRecordHeader *erh = (ExpandedRecordHeader *) DatumGetEOHP(value);
  ExpandedRecordHeader *newerh = ((void*)0);

  Assert(erh->er_magic == ER_MAGIC);


  if (target->dtype == PLPGSQL_DTYPE_REC)
  {
   PLpgSQL_rec *rec = (PLpgSQL_rec *) target;
   if (erh == rec->erh)
    return;




   revalidate_rectypeid(rec);
   if (VARATT_IS_EXTERNAL_EXPANDED_RW(DatumGetPointer(value)) &&
    (rec->rectypeid == erh->er_decltypeid ||
     (rec->rectypeid == RECORDOID &&
      !ExpandedRecordIsDomain(erh))))
   {
    assign_record_var(estate, rec, erh);
    return;
   }
   if (rec->erh &&
    (erh->flags & ER_FLAG_FVALUE_VALID) &&
    erh->er_typeid == rec->erh->er_typeid &&
    (erh->er_typeid != RECORDOID ||
     (erh->er_typmod == rec->erh->er_typmod &&
      erh->er_typmod >= 0)))
   {
    expanded_record_set_tuple(rec->erh, erh->fvalue,
            1, !estate->atomic);
    return;
   }






   newerh = make_expanded_record_for_rec(estate, rec, ((void*)0), erh);
   if ((erh->flags & ER_FLAG_FVALUE_VALID) &&
    (rec->rectypeid == RECORDOID ||
     rec->rectypeid == erh->er_typeid))
   {
    expanded_record_set_tuple(newerh, erh->fvalue,
            1, !estate->atomic);
    assign_record_var(estate, rec, newerh);
    return;
   }





   if (ExpandedRecordIsEmpty(erh))
   {

    deconstruct_expanded_record(newerh);
    assign_record_var(estate, rec, newerh);
    return;
   }
  }







  if (ExpandedRecordIsEmpty(erh))
  {
   exec_move_row(estate, target, ((void*)0),
        expanded_record_get_tupdesc(erh));
   return;
  }





  deconstruct_expanded_record(erh);
  exec_move_row_from_fields(estate, target, newerh,
          erh->dvalues, erh->dnulls,
          expanded_record_get_tupdesc(erh));
 }
 else
 {





  HeapTupleHeader td;
  HeapTupleData tmptup;
  Oid tupType;
  int32 tupTypmod;
  TupleDesc tupdesc;
  MemoryContext oldcontext;


  oldcontext = MemoryContextSwitchTo(get_eval_mcontext(estate));

  td = DatumGetHeapTupleHeader(value);
  MemoryContextSwitchTo(oldcontext);


  tmptup.t_len = HeapTupleHeaderGetDatumLength(td);
  ItemPointerSetInvalid(&(tmptup.t_self));
  tmptup.t_tableOid = InvalidOid;
  tmptup.t_data = td;


  tupType = HeapTupleHeaderGetTypeId(td);
  tupTypmod = HeapTupleHeaderGetTypMod(td);


  if (target->dtype == PLPGSQL_DTYPE_REC)
  {
   PLpgSQL_rec *rec = (PLpgSQL_rec *) target;
   if (rec->erh &&
    tupType == rec->erh->er_typeid &&
    (tupType != RECORDOID ||
     (tupTypmod == rec->erh->er_typmod &&
      tupTypmod >= 0)))
   {
    expanded_record_set_tuple(rec->erh, &tmptup,
            1, !estate->atomic);
    return;
   }







   if (rec->rectypeid == RECORDOID || rec->rectypeid == tupType)
   {
    ExpandedRecordHeader *newerh;
    MemoryContext mcontext = get_eval_mcontext(estate);

    newerh = make_expanded_record_from_typeid(tupType, tupTypmod,
                mcontext);
    expanded_record_set_tuple(newerh, &tmptup,
            1, !estate->atomic);
    assign_record_var(estate, rec, newerh);
    return;
   }





  }





  tupdesc = lookup_rowtype_tupdesc(tupType, tupTypmod);


  exec_move_row(estate, target, &tmptup, tupdesc);


  ReleaseTupleDesc(tupdesc);
 }
}
