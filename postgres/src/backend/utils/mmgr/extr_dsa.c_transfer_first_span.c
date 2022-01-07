
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* dsa_pointer ;
struct TYPE_5__ {void* nextspan; int fclass; void* prevspan; } ;
typedef TYPE_1__ dsa_area_span ;
struct TYPE_6__ {void** spans; } ;
typedef TYPE_2__ dsa_area_pool ;
typedef int dsa_area ;


 scalar_t__ DsaPointerIsValid (void*) ;
 void* InvalidDsaPointer ;
 TYPE_1__* dsa_get_address (int *,void*) ;

__attribute__((used)) static bool
transfer_first_span(dsa_area *area,
     dsa_area_pool *pool, int fromclass, int toclass)
{
 dsa_pointer span_pointer;
 dsa_area_span *span;
 dsa_area_span *nextspan;


 span_pointer = pool->spans[fromclass];
 if (!DsaPointerIsValid(span_pointer))
  return 0;


 span = dsa_get_address(area, span_pointer);
 pool->spans[fromclass] = span->nextspan;
 if (DsaPointerIsValid(span->nextspan))
 {
  nextspan = (dsa_area_span *)
   dsa_get_address(area, span->nextspan);
  nextspan->prevspan = InvalidDsaPointer;
 }


 span->nextspan = pool->spans[toclass];
 pool->spans[toclass] = span_pointer;
 if (DsaPointerIsValid(span->nextspan))
 {
  nextspan = (dsa_area_span *)
   dsa_get_address(area, span->nextspan);
  nextspan->prevspan = span_pointer;
 }
 span->fclass = toclass;

 return 1;
}
