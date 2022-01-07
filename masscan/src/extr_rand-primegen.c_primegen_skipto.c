
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int num; scalar_t__* p; int pos; scalar_t__ base; int L; } ;
typedef TYPE_1__ primegen ;


 int B ;
 int B32 ;
 int primegen_fill (TYPE_1__*) ;

void primegen_skipto(primegen *pg,uint64_t to)
{
  for (;;) {
    int pos;
    while (pg->num) {
      if (pg->p[pg->num - 1] >= to) return;
      --pg->num;
    }

    pos = pg->pos;
    while ((pos < B32) && (pg->base + 1920 < to)) {
      pg->base += 1920;
      ++pos;
    }
    pg->pos = pos;
    if (pos == B32)
      while (pg->base + B * 60 < to) {
        pg->L += B;
        pg->base += B * 60;
      }

    primegen_fill(pg);
  }
}
