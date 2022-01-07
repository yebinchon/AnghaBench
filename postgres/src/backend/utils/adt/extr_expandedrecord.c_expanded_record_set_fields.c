
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
struct TYPE_14__ {int flags; int nfields; int* dnulls; char* fstartptr; char* fendptr; TYPE_1__ hdr; int er_domaininfo; int er_decltypeid; int * dvalues; scalar_t__ flat_size; TYPE_2__* er_tupdesc; } ;
struct TYPE_13__ {int attlen; int attbyval; scalar_t__ attisdropped; } ;
struct TYPE_12__ {int natts; } ;
typedef int MemoryContext ;
typedef TYPE_3__* Form_pg_attribute ;
typedef TYPE_4__ ExpandedRecordHeader ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ER_FLAG_DVALUES_ALLOCED ;
 int ER_FLAG_DVALUES_VALID ;
 int ER_FLAG_FVALUE_VALID ;
 int ER_FLAG_HAVE_EXTERNAL ;
 int ER_FLAG_IS_DOMAIN ;
 int ER_FLAG_IS_DUMMY ;
 int ExpandedRecordGetRODatum (TYPE_4__*) ;
 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (int ) ;
 TYPE_3__* TupleDescAttr (TYPE_2__*,int) ;
 scalar_t__ VARATT_IS_EXTERNAL (scalar_t__) ;
 int datumCopy (int ,int,int) ;
 int deconstruct_expanded_record (TYPE_4__*) ;
 int detoast_external_attr (struct varlena*) ;
 int domain_check (int ,int,int ,int *,int ) ;
 int get_short_term_cxt (TYPE_4__*) ;
 int pfree (char*) ;
 scalar_t__ unlikely (int) ;

void
expanded_record_set_fields(ExpandedRecordHeader *erh,
         const Datum *newValues, const bool *isnulls,
         bool expand_external)
{
 TupleDesc tupdesc;
 Datum *dvalues;
 bool *dnulls;
 int fnumber;
 MemoryContext oldcxt;


 Assert(!(erh->flags & ER_FLAG_IS_DUMMY));


 if (!(erh->flags & ER_FLAG_DVALUES_VALID))
  deconstruct_expanded_record(erh);


 tupdesc = erh->er_tupdesc;
 Assert(erh->nfields == tupdesc->natts);


 erh->flags &= ~ER_FLAG_FVALUE_VALID;

 erh->flat_size = 0;

 oldcxt = MemoryContextSwitchTo(erh->hdr.eoh_context);

 dvalues = erh->dvalues;
 dnulls = erh->dnulls;

 for (fnumber = 0; fnumber < erh->nfields; fnumber++)
 {
  Form_pg_attribute attr = TupleDescAttr(tupdesc, fnumber);
  Datum newValue;
  bool isnull;


  if (attr->attisdropped)
   continue;

  newValue = newValues[fnumber];
  isnull = isnulls[fnumber];

  if (!attr->attbyval)
  {




   if (!isnull)
   {

    if (attr->attlen == -1 &&
     VARATT_IS_EXTERNAL(DatumGetPointer(newValue)))
    {
     if (expand_external)
     {

      newValue = PointerGetDatum(detoast_external_attr((struct varlena *) DatumGetPointer(newValue)));
     }
     else
     {

      newValue = datumCopy(newValue, 0, -1);

      if (VARATT_IS_EXTERNAL(DatumGetPointer(newValue)))
       erh->flags |= ER_FLAG_HAVE_EXTERNAL;
     }
    }
    else
    {

     newValue = datumCopy(newValue, 0, attr->attlen);
    }


    erh->flags |= ER_FLAG_DVALUES_ALLOCED;
   }





   if (unlikely(!dnulls[fnumber]))
   {
    char *oldValue;

    oldValue = (char *) DatumGetPointer(dvalues[fnumber]);

    if (oldValue < erh->fstartptr || oldValue >= erh->fendptr)
     pfree(oldValue);
   }
  }


  dvalues[fnumber] = newValue;
  dnulls[fnumber] = isnull;
 }






 if (erh->flags & ER_FLAG_IS_DOMAIN)
 {

  MemoryContextSwitchTo(get_short_term_cxt(erh));

  domain_check(ExpandedRecordGetRODatum(erh), 0,
      erh->er_decltypeid,
      &erh->er_domaininfo,
      erh->hdr.eoh_context);
 }

 MemoryContextSwitchTo(oldcxt);
}
