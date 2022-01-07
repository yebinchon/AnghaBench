
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int outer_tuples; int inner_tuples; } ;
struct TYPE_4__ {int nbatch; TYPE_2__* batches; } ;
typedef TYPE_1__* HashJoinTable ;


 int pfree (TYPE_2__*) ;
 int sts_end_parallel_scan (int ) ;
 int sts_end_write (int ) ;

__attribute__((used)) static void
ExecParallelHashCloseBatchAccessors(HashJoinTable hashtable)
{
 int i;

 for (i = 0; i < hashtable->nbatch; ++i)
 {

  sts_end_write(hashtable->batches[i].inner_tuples);
  sts_end_write(hashtable->batches[i].outer_tuples);
  sts_end_parallel_scan(hashtable->batches[i].inner_tuples);
  sts_end_parallel_scan(hashtable->batches[i].outer_tuples);
 }
 pfree(hashtable->batches);
 hashtable->batches = ((void*)0);
}
