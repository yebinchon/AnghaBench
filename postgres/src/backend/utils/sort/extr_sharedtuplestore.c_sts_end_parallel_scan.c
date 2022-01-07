
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * read_file; } ;
typedef TYPE_1__ SharedTuplestoreAccessor ;


 int BufFileClose (int *) ;

void
sts_end_parallel_scan(SharedTuplestoreAccessor *accessor)
{





 if (accessor->read_file != ((void*)0))
 {
  BufFileClose(accessor->read_file);
  accessor->read_file = ((void*)0);
 }
}
