
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_available; int size; } ;
typedef TYPE_1__* MCB_P ;
typedef int MCB ;


 scalar_t__ FREE ;
 int allocated_mem ;
 int mcb_count ;

void r_free(void *p) {

 MCB_P ptr = (MCB_P)p;
 ptr--;

 if (ptr->is_available != FREE) {
  mcb_count--;
  ptr->is_available = FREE;
  allocated_mem -= (ptr->size - sizeof (MCB));
  }
}
