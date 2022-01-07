
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int size; } ;
typedef TYPE_1__ vle_t ;
struct TYPE_10__ {scalar_t__ pos; scalar_t__ end; int inc; } ;
typedef TYPE_2__ vle_handle ;


 scalar_t__ USE_INTERNAL_PPC (TYPE_2__*) ;
 TYPE_1__* find_e (scalar_t__) ;
 TYPE_1__* find_ppc (scalar_t__) ;
 TYPE_1__* find_se (scalar_t__) ;

vle_t* vle_next(vle_handle* handle) {
 vle_t *op = ((void*)0);
 if (!handle || handle->pos + handle->inc >= handle->end) {
  return ((void*)0);
 }
 handle->pos += handle->inc;


 if (USE_INTERNAL_PPC (handle) && handle->pos + 4 <= handle->end) {
  op = find_ppc (handle->pos);
 }
 if (!op && handle->pos + 4 <= handle->end) {
  op = find_e (handle->pos);
 }
 if (!op && handle->pos + 2 <= handle->end) {
  op = find_se (handle->pos);
 }

 handle->inc = op ? op->size : 0;
 return op;
}
