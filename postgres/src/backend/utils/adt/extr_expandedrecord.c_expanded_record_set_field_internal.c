
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct varlena {int dummy; } ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_11__ {int eoh_context; } ;
struct TYPE_14__ {int flags; scalar_t__ nfields; int* dnulls; char* fstartptr; char* fendptr; scalar_t__ flat_size; int * dvalues; int er_short_term_cxt; TYPE_1__ hdr; TYPE_2__* er_tupdesc; } ;
struct TYPE_13__ {int attlen; int attbyval; } ;
struct TYPE_12__ {scalar_t__ natts; } ;
typedef int MemoryContext ;
typedef TYPE_3__* Form_pg_attribute ;
typedef TYPE_4__ ExpandedRecordHeader ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 int ER_FLAG_DVALUES_ALLOCED ;
 int ER_FLAG_DVALUES_VALID ;
 int ER_FLAG_FVALUE_VALID ;
 int ER_FLAG_HAVE_EXTERNAL ;
 int ER_FLAG_IS_DOMAIN ;
 int ER_FLAG_IS_DUMMY ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (int ) ;
 TYPE_3__* TupleDescAttr (TYPE_2__*,int) ;
 scalar_t__ VARATT_IS_EXTERNAL (scalar_t__) ;
 int check_domain_for_new_field (TYPE_4__*,int,int ,int) ;
 int datumCopy (int ,int,int) ;
 int deconstruct_expanded_record (TYPE_4__*) ;
 int detoast_external_attr (struct varlena*) ;
 int elog (int ,char*,int) ;
 int get_short_term_cxt (TYPE_4__*) ;
 int pfree (char*) ;
 scalar_t__ unlikely (int) ;

void
expanded_record_set_field_internal(ExpandedRecordHeader *erh, int fnumber,
           Datum newValue, bool isnull,
           bool expand_external,
           bool check_constraints)
{
 TupleDesc tupdesc;
 Form_pg_attribute attr;
 Datum *dvalues;
 bool *dnulls;
 char *oldValue;





 Assert(!(erh->flags & ER_FLAG_IS_DUMMY) || !check_constraints);


 if ((erh->flags & ER_FLAG_IS_DOMAIN) && check_constraints)
  check_domain_for_new_field(erh, fnumber, newValue, isnull);


 if (!(erh->flags & ER_FLAG_DVALUES_VALID))
  deconstruct_expanded_record(erh);


 tupdesc = erh->er_tupdesc;
 Assert(erh->nfields == tupdesc->natts);


 if (unlikely(fnumber <= 0 || fnumber > erh->nfields))
  elog(ERROR, "cannot assign to field %d of expanded record", fnumber);





 attr = TupleDescAttr(tupdesc, fnumber - 1);
 if (!isnull && !attr->attbyval)
 {
  MemoryContext oldcxt;


  if (expand_external)
  {
   if (attr->attlen == -1 &&
    VARATT_IS_EXTERNAL(DatumGetPointer(newValue)))
   {

    oldcxt = MemoryContextSwitchTo(get_short_term_cxt(erh));
    newValue = PointerGetDatum(detoast_external_attr((struct varlena *) DatumGetPointer(newValue)));
    MemoryContextSwitchTo(oldcxt);
   }
   else
    expand_external = 0;
  }


  oldcxt = MemoryContextSwitchTo(erh->hdr.eoh_context);
  newValue = datumCopy(newValue, 0, attr->attlen);
  MemoryContextSwitchTo(oldcxt);


  if (expand_external)
   MemoryContextReset(erh->er_short_term_cxt);


  erh->flags |= ER_FLAG_DVALUES_ALLOCED;







  if (attr->attlen == -1 &&
   VARATT_IS_EXTERNAL(DatumGetPointer(newValue)))
   erh->flags |= ER_FLAG_HAVE_EXTERNAL;
 }




 dvalues = erh->dvalues;
 dnulls = erh->dnulls;


 erh->flags &= ~ER_FLAG_FVALUE_VALID;

 erh->flat_size = 0;


 if (!attr->attbyval && !dnulls[fnumber - 1])
  oldValue = (char *) DatumGetPointer(dvalues[fnumber - 1]);
 else
  oldValue = ((void*)0);


 dvalues[fnumber - 1] = newValue;
 dnulls[fnumber - 1] = isnull;
 if (oldValue && !(erh->flags & ER_FLAG_IS_DUMMY))
 {

  if (oldValue < erh->fstartptr || oldValue >= erh->fendptr)
   pfree(oldValue);
 }
}
