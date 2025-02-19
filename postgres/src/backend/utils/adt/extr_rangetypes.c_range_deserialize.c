
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_8__ {scalar_t__ type_id; TYPE_1__* rngelemtype; } ;
typedef TYPE_2__ TypeCacheEntry ;
struct TYPE_9__ {int infinite; int inclusive; int lower; void* val; } ;
struct TYPE_7__ {int typbyval; char typalign; int typlen; } ;
typedef int RangeType ;
typedef TYPE_3__ RangeBound ;
typedef scalar_t__ Pointer ;
typedef void* Datum ;


 int Assert (int) ;
 char RANGE_EMPTY ;
 scalar_t__ RANGE_HAS_LBOUND (char) ;
 scalar_t__ RANGE_HAS_UBOUND (char) ;
 char RANGE_LB_INC ;
 char RANGE_LB_INF ;
 char RANGE_UB_INC ;
 char RANGE_UB_INF ;
 scalar_t__ RangeTypeGetOid (int const*) ;
 int VARSIZE (int const*) ;
 scalar_t__ att_addlength_pointer (scalar_t__,int ,scalar_t__) ;
 scalar_t__ att_align_pointer (scalar_t__,char,int ,scalar_t__) ;
 void* fetch_att (scalar_t__,int,int ) ;

void
range_deserialize(TypeCacheEntry *typcache, const RangeType *range,
      RangeBound *lower, RangeBound *upper, bool *empty)
{
 char flags;
 int16 typlen;
 bool typbyval;
 char typalign;
 Pointer ptr;
 Datum lbound;
 Datum ubound;


 Assert(RangeTypeGetOid(range) == typcache->type_id);


 flags = *((const char *) range + VARSIZE(range) - 1);


 typlen = typcache->rngelemtype->typlen;
 typbyval = typcache->rngelemtype->typbyval;
 typalign = typcache->rngelemtype->typalign;


 ptr = (Pointer) (range + 1);


 if (RANGE_HAS_LBOUND(flags))
 {

  lbound = fetch_att(ptr, typbyval, typlen);
  ptr = (Pointer) att_addlength_pointer(ptr, typlen, ptr);
 }
 else
  lbound = (Datum) 0;


 if (RANGE_HAS_UBOUND(flags))
 {
  ptr = (Pointer) att_align_pointer(ptr, typalign, typlen, ptr);
  ubound = fetch_att(ptr, typbyval, typlen);

 }
 else
  ubound = (Datum) 0;



 *empty = (flags & RANGE_EMPTY) != 0;

 lower->val = lbound;
 lower->infinite = (flags & RANGE_LB_INF) != 0;
 lower->inclusive = (flags & RANGE_LB_INC) != 0;
 lower->lower = 1;

 upper->val = ubound;
 upper->infinite = (flags & RANGE_UB_INF) != 0;
 upper->inclusive = (flags & RANGE_UB_INC) != 0;
 upper->lower = 0;
}
