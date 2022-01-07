
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dsa_area ;
struct TYPE_8__ {TYPE_1__* state; } ;
struct TYPE_9__ {TYPE_2__ ps; } ;
struct TYPE_11__ {TYPE_3__ ss; TYPE_4__* pstate; } ;
struct TYPE_10__ {void* prefetch_iterator; void* tbmiterator; int state; } ;
struct TYPE_7__ {int * es_query_dsa; } ;
typedef int ParallelContext ;
typedef TYPE_4__ ParallelBitmapHeapState ;
typedef TYPE_5__ BitmapHeapScanState ;


 int BM_INITIAL ;
 scalar_t__ DsaPointerIsValid (void*) ;
 void* InvalidDsaPointer ;
 int tbm_free_shared_area (int *,void*) ;

void
ExecBitmapHeapReInitializeDSM(BitmapHeapScanState *node,
         ParallelContext *pcxt)
{
 ParallelBitmapHeapState *pstate = node->pstate;
 dsa_area *dsa = node->ss.ps.state->es_query_dsa;


 if (dsa == ((void*)0))
  return;

 pstate->state = BM_INITIAL;

 if (DsaPointerIsValid(pstate->tbmiterator))
  tbm_free_shared_area(dsa, pstate->tbmiterator);

 if (DsaPointerIsValid(pstate->prefetch_iterator))
  tbm_free_shared_area(dsa, pstate->prefetch_iterator);

 pstate->tbmiterator = InvalidDsaPointer;
 pstate->prefetch_iterator = InvalidDsaPointer;
}
