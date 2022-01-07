
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nbatch; TYPE_2__* parallel_state; int area; TYPE_1__* batches; } ;
struct TYPE_6__ {int batches; int build_barrier; } ;
struct TYPE_5__ {int outer_tuples; int inner_tuples; } ;
typedef TYPE_2__ ParallelHashJoinState ;
typedef TYPE_3__* HashJoinTable ;


 scalar_t__ BarrierDetach (int *) ;
 scalar_t__ DsaPointerIsValid (int ) ;
 int InvalidDsaPointer ;
 int dsa_free (int ,int ) ;
 int sts_end_parallel_scan (int ) ;
 int sts_end_write (int ) ;

void
ExecHashTableDetach(HashJoinTable hashtable)
{
 if (hashtable->parallel_state)
 {
  ParallelHashJoinState *pstate = hashtable->parallel_state;
  int i;


  if (hashtable->batches)
  {
   for (i = 0; i < hashtable->nbatch; ++i)
   {
    sts_end_write(hashtable->batches[i].inner_tuples);
    sts_end_write(hashtable->batches[i].outer_tuples);
    sts_end_parallel_scan(hashtable->batches[i].inner_tuples);
    sts_end_parallel_scan(hashtable->batches[i].outer_tuples);
   }
  }


  if (BarrierDetach(&pstate->build_barrier))
  {
   if (DsaPointerIsValid(pstate->batches))
   {
    dsa_free(hashtable->area, pstate->batches);
    pstate->batches = InvalidDsaPointer;
   }
  }

  hashtable->parallel_state = ((void*)0);
 }
}
