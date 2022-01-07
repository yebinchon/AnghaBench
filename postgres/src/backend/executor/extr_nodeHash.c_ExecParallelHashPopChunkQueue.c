
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dsa_pointer ;
struct TYPE_10__ {int area; TYPE_2__* parallel_state; } ;
struct TYPE_7__ {int shared; } ;
struct TYPE_9__ {TYPE_1__ next; } ;
struct TYPE_8__ {int lock; int chunk_work_queue; } ;
typedef TYPE_2__ ParallelHashJoinState ;
typedef TYPE_3__* HashMemoryChunk ;
typedef TYPE_4__* HashJoinTable ;


 scalar_t__ DsaPointerIsValid (int ) ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 scalar_t__ dsa_get_address (int ,int ) ;

__attribute__((used)) static HashMemoryChunk
ExecParallelHashPopChunkQueue(HashJoinTable hashtable, dsa_pointer *shared)
{
 ParallelHashJoinState *pstate = hashtable->parallel_state;
 HashMemoryChunk chunk;

 LWLockAcquire(&pstate->lock, LW_EXCLUSIVE);
 if (DsaPointerIsValid(pstate->chunk_work_queue))
 {
  *shared = pstate->chunk_work_queue;
  chunk = (HashMemoryChunk)
   dsa_get_address(hashtable->area, *shared);
  pstate->chunk_work_queue = chunk->next.shared;
 }
 else
  chunk = ((void*)0);
 LWLockRelease(&pstate->lock);

 return chunk;
}
