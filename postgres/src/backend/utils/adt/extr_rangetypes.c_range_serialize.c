
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_14__ {int type_id; TYPE_1__* rngelemtype; } ;
typedef TYPE_2__ TypeCacheEntry ;
struct TYPE_16__ {int lower; void* val; scalar_t__ inclusive; scalar_t__ infinite; } ;
struct TYPE_15__ {int rangetypid; } ;
struct TYPE_13__ {int typlen; int typbyval; char typalign; char typstorage; } ;
typedef int Size ;
typedef TYPE_3__ RangeType ;
typedef TYPE_4__ RangeBound ;
typedef char* Pointer ;


 int Assert (int) ;
 int ERRCODE_DATA_EXCEPTION ;
 int ERROR ;
 int MAXALIGN (int) ;
 int PG_DETOAST_DATUM_PACKED (void*) ;
 void* PointerGetDatum (int ) ;
 char RANGE_EMPTY ;
 scalar_t__ RANGE_HAS_LBOUND (char) ;
 scalar_t__ RANGE_HAS_UBOUND (char) ;
 char RANGE_LB_INC ;
 char RANGE_LB_INF ;
 char RANGE_UB_INC ;
 char RANGE_UB_INF ;
 int SET_VARSIZE (TYPE_3__*,int) ;
 int datum_compute_size (int,void*,int,char,int,char) ;
 char* datum_write (char*,void*,int,char,int,char) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ palloc0 (int) ;
 int range_cmp_bound_values (TYPE_2__*,TYPE_4__*,TYPE_4__*) ;

RangeType *
range_serialize(TypeCacheEntry *typcache, RangeBound *lower, RangeBound *upper,
    bool empty)
{
 RangeType *range;
 int cmp;
 Size msize;
 Pointer ptr;
 int16 typlen;
 bool typbyval;
 char typalign;
 char typstorage;
 char flags = 0;





 Assert(lower->lower);
 Assert(!upper->lower);

 if (empty)
  flags |= RANGE_EMPTY;
 else
 {
  cmp = range_cmp_bound_values(typcache, lower, upper);


  if (cmp > 0)
   ereport(ERROR,
     (errcode(ERRCODE_DATA_EXCEPTION),
      errmsg("range lower bound must be less than or equal to range upper bound")));


  if (cmp == 0 && !(lower->inclusive && upper->inclusive))
   flags |= RANGE_EMPTY;
  else
  {

   if (lower->infinite)
    flags |= RANGE_LB_INF;
   else if (lower->inclusive)
    flags |= RANGE_LB_INC;
   if (upper->infinite)
    flags |= RANGE_UB_INF;
   else if (upper->inclusive)
    flags |= RANGE_UB_INC;
  }
 }


 typlen = typcache->rngelemtype->typlen;
 typbyval = typcache->rngelemtype->typbyval;
 typalign = typcache->rngelemtype->typalign;
 typstorage = typcache->rngelemtype->typstorage;


 msize = sizeof(RangeType);
 Assert(msize == MAXALIGN(msize));


 if (RANGE_HAS_LBOUND(flags))
 {
  if (typlen == -1)
   lower->val = PointerGetDatum(PG_DETOAST_DATUM_PACKED(lower->val));

  msize = datum_compute_size(msize, lower->val, typbyval, typalign,
           typlen, typstorage);
 }

 if (RANGE_HAS_UBOUND(flags))
 {

  if (typlen == -1)
   upper->val = PointerGetDatum(PG_DETOAST_DATUM_PACKED(upper->val));

  msize = datum_compute_size(msize, upper->val, typbyval, typalign,
           typlen, typstorage);
 }


 msize += sizeof(char);


 range = (RangeType *) palloc0(msize);
 SET_VARSIZE(range, msize);


 range->rangetypid = typcache->type_id;

 ptr = (char *) (range + 1);

 if (RANGE_HAS_LBOUND(flags))
 {
  Assert(lower->lower);
  ptr = datum_write(ptr, lower->val, typbyval, typalign, typlen,
        typstorage);
 }

 if (RANGE_HAS_UBOUND(flags))
 {
  Assert(!upper->lower);
  ptr = datum_write(ptr, upper->val, typbyval, typalign, typlen,
        typstorage);
 }

 *((char *) ptr) = flags;

 return range;
}
