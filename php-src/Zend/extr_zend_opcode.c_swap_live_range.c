
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* end; void* start; void* var; } ;
typedef TYPE_1__ zend_live_range ;
typedef void* uint32_t ;



__attribute__((used)) static void swap_live_range(zend_live_range *a, zend_live_range *b) {
 uint32_t tmp;
 tmp = a->var;
 a->var = b->var;
 b->var = tmp;
 tmp = a->start;
 a->start = b->start;
 b->start = tmp;
 tmp = a->end;
 a->end = b->end;
 b->end = tmp;
}
