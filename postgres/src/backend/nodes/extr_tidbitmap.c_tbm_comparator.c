
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ blockno; } ;
typedef TYPE_1__ PagetableEntry ;
typedef scalar_t__ BlockNumber ;



__attribute__((used)) static int
tbm_comparator(const void *left, const void *right)
{
 BlockNumber l = (*((PagetableEntry *const *) left))->blockno;
 BlockNumber r = (*((PagetableEntry *const *) right))->blockno;

 if (l < r)
  return -1;
 else if (l > r)
  return 1;
 return 0;
}
