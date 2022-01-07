
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ adl_score; } ;
typedef TYPE_1__ avl_dbase ;



__attribute__((used)) static int
db_comparator(const void *a, const void *b)
{
 if (((const avl_dbase *) a)->adl_score == ((const avl_dbase *) b)->adl_score)
  return 0;
 else
  return (((const avl_dbase *) a)->adl_score < ((const avl_dbase *) b)->adl_score) ? 1 : -1;
}
