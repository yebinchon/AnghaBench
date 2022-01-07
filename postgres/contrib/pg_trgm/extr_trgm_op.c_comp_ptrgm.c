
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ index; int trg; } ;
typedef TYPE_1__ pos_trgm ;


 int CMPTRGM (int ,int ) ;

__attribute__((used)) static int
comp_ptrgm(const void *v1, const void *v2)
{
 const pos_trgm *p1 = (const pos_trgm *) v1;
 const pos_trgm *p2 = (const pos_trgm *) v2;
 int cmp;

 cmp = CMPTRGM(p1->trg, p2->trg);
 if (cmp != 0)
  return cmp;

 if (p1->index < p2->index)
  return -1;
 else if (p1->index == p2->index)
  return 0;
 else
  return 1;
}
