
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* dsa_pointer ;
struct TYPE_4__ {int fclass; void* nextspan; void* prevspan; void* pool; } ;
typedef TYPE_1__ dsa_area_span ;
struct TYPE_5__ {void** spans; } ;
typedef TYPE_2__ dsa_area_pool ;
typedef int dsa_area ;


 scalar_t__ DsaPointerIsValid (void*) ;
 void* InvalidDsaPointer ;
 void* dsa_get_address (int *,void*) ;

__attribute__((used)) static void
add_span_to_fullness_class(dsa_area *area, dsa_area_span *span,
         dsa_pointer span_pointer,
         int fclass)
{
 dsa_area_pool *pool = dsa_get_address(area, span->pool);

 if (DsaPointerIsValid(pool->spans[fclass]))
 {
  dsa_area_span *head = dsa_get_address(area,
             pool->spans[fclass]);

  head->prevspan = span_pointer;
 }
 span->prevspan = InvalidDsaPointer;
 span->nextspan = pool->spans[fclass];
 pool->spans[fclass] = span_pointer;
 span->fclass = fclass;
}
