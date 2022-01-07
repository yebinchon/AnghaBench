
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ dsa_pointer ;
struct TYPE_13__ {scalar_t__ nallocatable; size_t firstfree; size_t ninitialized; scalar_t__ start; } ;
typedef TYPE_2__ dsa_area_span ;
struct TYPE_14__ {scalar_t__* spans; } ;
typedef TYPE_3__ dsa_area_pool ;
struct TYPE_15__ {TYPE_1__* control; } ;
typedef TYPE_4__ dsa_area ;
struct TYPE_12__ {TYPE_3__* pools; } ;


 int Assert (int) ;
 scalar_t__ DSA_FULLNESS_CLASSES ;
 int DSA_NUM_SIZE_CLASSES ;
 int DSA_SCLASS_LOCK (TYPE_4__*,int) ;
 size_t DSA_SPAN_NOTHING_FREE ;
 int DsaPointerIsValid (scalar_t__) ;
 scalar_t__ InvalidDsaPointer ;
 int LWLockAcquire (int ,int ) ;
 int LWLockHeldByMe (int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 size_t NextFreeObjectIndex (char*) ;
 char* dsa_get_address (TYPE_4__*,scalar_t__) ;
 size_t* dsa_size_classes ;
 int ensure_active_superblock (TYPE_4__*,TYPE_3__*,int) ;
 int transfer_first_span (TYPE_4__*,TYPE_3__*,int,scalar_t__) ;

__attribute__((used)) static inline dsa_pointer
alloc_object(dsa_area *area, int size_class)
{
 dsa_area_pool *pool = &area->control->pools[size_class];
 dsa_area_span *span;
 dsa_pointer block;
 dsa_pointer result;
 char *object;
 size_t size;







 Assert(!LWLockHeldByMe(DSA_SCLASS_LOCK(area, size_class)));
 LWLockAcquire(DSA_SCLASS_LOCK(area, size_class), LW_EXCLUSIVE);





 if (!DsaPointerIsValid(pool->spans[1]) &&
  !ensure_active_superblock(area, pool, size_class))
 {
  result = InvalidDsaPointer;
 }
 else
 {





  Assert(DsaPointerIsValid(pool->spans[1]));
  span = (dsa_area_span *)
   dsa_get_address(area, pool->spans[1]);
  Assert(span->nallocatable > 0);
  block = span->start;
  Assert(size_class < DSA_NUM_SIZE_CLASSES);
  size = dsa_size_classes[size_class];
  if (span->firstfree != DSA_SPAN_NOTHING_FREE)
  {
   result = block + span->firstfree * size;
   object = dsa_get_address(area, result);
   span->firstfree = NextFreeObjectIndex(object);
  }
  else
  {
   result = block + span->ninitialized * size;
   ++span->ninitialized;
  }
  --span->nallocatable;


  if (span->nallocatable == 0)
   transfer_first_span(area, pool, 1, DSA_FULLNESS_CLASSES - 1);
 }

 Assert(LWLockHeldByMe(DSA_SCLASS_LOCK(area, size_class)));
 LWLockRelease(DSA_SCLASS_LOCK(area, size_class));

 return result;
}
