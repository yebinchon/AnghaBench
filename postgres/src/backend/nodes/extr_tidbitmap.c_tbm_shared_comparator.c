
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ blockno; } ;
typedef TYPE_1__ PagetableEntry ;



__attribute__((used)) static int
tbm_shared_comparator(const void *left, const void *right, void *arg)
{
 PagetableEntry *base = (PagetableEntry *) arg;
 PagetableEntry *lpage = &base[*(int *) left];
 PagetableEntry *rpage = &base[*(int *) right];

 if (lpage->blockno < rpage->blockno)
  return -1;
 else if (lpage->blockno > rpage->blockno)
  return 1;
 return 0;
}
