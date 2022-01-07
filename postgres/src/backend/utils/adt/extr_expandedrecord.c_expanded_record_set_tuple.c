
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int TupleDesc ;
struct TYPE_17__ {int eoh_context; } ;
struct TYPE_19__ {int flags; char* fstartptr; char* fendptr; int nfields; int * dvalues; int * dnulls; int er_tupdesc; scalar_t__ flat_size; TYPE_2__* fvalue; int er_short_term_cxt; TYPE_1__ hdr; } ;
struct TYPE_18__ {int t_len; scalar_t__ t_data; } ;
struct TYPE_16__ {int attbyval; } ;
typedef int MemoryContext ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__ ExpandedRecordHeader ;


 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ER_FLAGS_NON_DATA ;
 int ER_FLAG_DVALUES_ALLOCED ;
 int ER_FLAG_FVALUE_ALLOCED ;
 int ER_FLAG_FVALUE_VALID ;
 int ER_FLAG_HAVE_EXTERNAL ;
 int ER_FLAG_IS_DOMAIN ;
 int ER_FLAG_IS_DUMMY ;
 scalar_t__ HeapTupleHasExternal (TYPE_2__*) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_14__* TupleDescAttr (int ,int) ;
 int check_domain_for_new_tuple (TYPE_3__*,TYPE_2__*) ;
 int get_short_term_cxt (TYPE_3__*) ;
 TYPE_2__* heap_copytuple (TYPE_2__*) ;
 int heap_freetuple (TYPE_2__*) ;
 int pfree (char*) ;
 TYPE_2__* toast_flatten_tuple (TYPE_2__*,int ) ;

void
expanded_record_set_tuple(ExpandedRecordHeader *erh,
        HeapTuple tuple,
        bool copy,
        bool expand_external)
{
 int oldflags;
 HeapTuple oldtuple;
 char *oldfstartptr;
 char *oldfendptr;
 int newflags;
 HeapTuple newtuple;
 MemoryContext oldcxt;


 Assert(!(erh->flags & ER_FLAG_IS_DUMMY));




 if (erh->flags & ER_FLAG_IS_DOMAIN)
  check_domain_for_new_tuple(erh, tuple);






 if (expand_external && tuple)
 {

  Assert(copy);
  if (HeapTupleHasExternal(tuple))
  {
   oldcxt = MemoryContextSwitchTo(get_short_term_cxt(erh));
   tuple = toast_flatten_tuple(tuple, erh->er_tupdesc);
   MemoryContextSwitchTo(oldcxt);
  }
  else
   expand_external = 0;
 }




 oldflags = erh->flags;
 newflags = oldflags & ER_FLAGS_NON_DATA;





 if (copy && tuple)
 {
  oldcxt = MemoryContextSwitchTo(erh->hdr.eoh_context);
  newtuple = heap_copytuple(tuple);
  newflags |= ER_FLAG_FVALUE_ALLOCED;
  MemoryContextSwitchTo(oldcxt);


  if (expand_external)
   MemoryContextReset(erh->er_short_term_cxt);
 }
 else
  newtuple = tuple;


 oldtuple = erh->fvalue;
 oldfstartptr = erh->fstartptr;
 oldfendptr = erh->fendptr;




 if (newtuple)
 {

  erh->fvalue = newtuple;
  erh->fstartptr = (char *) newtuple->t_data;
  erh->fendptr = ((char *) newtuple->t_data) + newtuple->t_len;
  newflags |= ER_FLAG_FVALUE_VALID;


  if (HeapTupleHasExternal(newtuple))
   newflags |= ER_FLAG_HAVE_EXTERNAL;
 }
 else
 {
  erh->fvalue = ((void*)0);
  erh->fstartptr = erh->fendptr = ((void*)0);
 }

 erh->flags = newflags;


 erh->flat_size = 0;







 if (oldflags & ER_FLAG_DVALUES_ALLOCED)
 {
  TupleDesc tupdesc = erh->er_tupdesc;
  int i;

  for (i = 0; i < erh->nfields; i++)
  {
   if (!erh->dnulls[i] &&
    !(TupleDescAttr(tupdesc, i)->attbyval))
   {
    char *oldValue = (char *) DatumGetPointer(erh->dvalues[i]);

    if (oldValue < oldfstartptr || oldValue >= oldfendptr)
     pfree(oldValue);
   }
  }
 }


 if (oldflags & ER_FLAG_FVALUE_ALLOCED)
  heap_freetuple(oldtuple);


}
