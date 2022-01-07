
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
typedef TYPE_1__ DECountItem ;



__attribute__((used)) static int
countitem_compare_count(const void *e1, const void *e2)
{
 const DECountItem *const *t1 = (const DECountItem *const *) e1;
 const DECountItem *const *t2 = (const DECountItem *const *) e2;

 if ((*t1)->count < (*t2)->count)
  return -1;
 else if ((*t1)->count == (*t2)->count)
  return 0;
 else
  return 1;
}
