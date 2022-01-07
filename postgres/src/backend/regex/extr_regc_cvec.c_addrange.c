
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvec {int nranges; int rangespace; void** ranges; } ;
typedef void* chr ;


 int assert (int) ;

__attribute__((used)) static void
addrange(struct cvec *cv,
   chr from,
   chr to)
{
 assert(cv->nranges < cv->rangespace);
 cv->ranges[cv->nranges * 2] = from;
 cv->ranges[cv->nranges * 2 + 1] = to;
 cv->nranges++;
}
