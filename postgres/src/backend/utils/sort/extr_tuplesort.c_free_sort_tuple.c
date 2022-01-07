
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Tuplesortstate ;
struct TYPE_3__ {int tuple; } ;
typedef TYPE_1__ SortTuple ;


 int FREEMEM (int *,int ) ;
 int GetMemoryChunkSpace (int ) ;
 int pfree (int ) ;

__attribute__((used)) static void
free_sort_tuple(Tuplesortstate *state, SortTuple *stup)
{
 FREEMEM(state, GetMemoryChunkSpace(stup->tuple));
 pfree(stup->tuple);
}
