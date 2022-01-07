
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int dsa_pointer ;
struct TYPE_11__ {scalar_t__ nallocatable; scalar_t__ nmax; int nextspan; } ;
typedef TYPE_2__ dsa_area_span ;
struct TYPE_12__ {int * spans; } ;
typedef TYPE_3__ dsa_area_pool ;
struct TYPE_13__ {TYPE_1__* control; } ;
typedef TYPE_4__ dsa_area ;
struct TYPE_10__ {TYPE_3__* pools; } ;


 int DSA_NUM_SIZE_CLASSES ;
 int DSA_SCLASS_LOCK (TYPE_4__*,int) ;
 int DSA_SCLASS_SPAN_LARGE ;
 scalar_t__ DsaPointerIsValid (int ) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int destroy_superblock (TYPE_4__*,int ) ;
 TYPE_2__* dsa_get_address (TYPE_4__*,int ) ;

void
dsa_trim(dsa_area *area)
{
 int size_class;





 for (size_class = DSA_NUM_SIZE_CLASSES - 1; size_class >= 0; --size_class)
 {
  dsa_area_pool *pool = &area->control->pools[size_class];
  dsa_pointer span_pointer;

  if (size_class == DSA_SCLASS_SPAN_LARGE)
  {

   continue;
  }






  LWLockAcquire(DSA_SCLASS_LOCK(area, size_class), LW_EXCLUSIVE);
  span_pointer = pool->spans[1];
  while (DsaPointerIsValid(span_pointer))
  {
   dsa_area_span *span = dsa_get_address(area, span_pointer);
   dsa_pointer next = span->nextspan;

   if (span->nallocatable == span->nmax)
    destroy_superblock(area, span_pointer);

   span_pointer = next;
  }
  LWLockRelease(DSA_SCLASS_LOCK(area, size_class));
 }
}
