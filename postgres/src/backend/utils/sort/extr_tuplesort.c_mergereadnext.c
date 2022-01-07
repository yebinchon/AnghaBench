
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* mergeactive; } ;
typedef TYPE_1__ Tuplesortstate ;
typedef int SortTuple ;


 int READTUP (TYPE_1__*,int *,int,unsigned int) ;
 unsigned int getlen (TYPE_1__*,int,int) ;

__attribute__((used)) static bool
mergereadnext(Tuplesortstate *state, int srcTape, SortTuple *stup)
{
 unsigned int tuplen;

 if (!state->mergeactive[srcTape])
  return 0;


 if ((tuplen = getlen(state, srcTape, 1)) == 0)
 {
  state->mergeactive[srcTape] = 0;
  return 0;
 }
 READTUP(state, stup, srcTape, tuplen);

 return 1;
}
