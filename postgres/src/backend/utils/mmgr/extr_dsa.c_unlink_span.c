
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t fclass; int nextspan; int pool; int prevspan; } ;
typedef TYPE_1__ dsa_area_span ;
struct TYPE_5__ {int * spans; } ;
typedef TYPE_2__ dsa_area_pool ;
typedef int dsa_area ;


 scalar_t__ DsaPointerIsValid (int ) ;
 void* dsa_get_address (int *,int ) ;

__attribute__((used)) static void
unlink_span(dsa_area *area, dsa_area_span *span)
{
 if (DsaPointerIsValid(span->nextspan))
 {
  dsa_area_span *next = dsa_get_address(area, span->nextspan);

  next->prevspan = span->prevspan;
 }
 if (DsaPointerIsValid(span->prevspan))
 {
  dsa_area_span *prev = dsa_get_address(area, span->prevspan);

  prev->nextspan = span->nextspan;
 }
 else
 {
  dsa_area_pool *pool = dsa_get_address(area, span->pool);

  pool->spans[span->fclass] = span->nextspan;
 }
}
