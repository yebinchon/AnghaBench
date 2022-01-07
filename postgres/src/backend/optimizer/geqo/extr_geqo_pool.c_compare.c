
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ worth; } ;
typedef TYPE_1__ Chromosome ;



__attribute__((used)) static int
compare(const void *arg1, const void *arg2)
{
 const Chromosome *chromo1 = (const Chromosome *) arg1;
 const Chromosome *chromo2 = (const Chromosome *) arg2;

 if (chromo1->worth == chromo2->worth)
  return 0;
 else if (chromo1->worth > chromo2->worth)
  return 1;
 else
  return -1;
}
