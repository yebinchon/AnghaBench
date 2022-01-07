
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {size_t num; int * p; } ;
typedef TYPE_1__ primegen ;


 int primegen_fill (TYPE_1__*) ;

uint64_t primegen_next(primegen *pg)
{
  while (!pg->num)
    primegen_fill(pg);

  return pg->p[--pg->num];
}
