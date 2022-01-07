
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int es_query_cxt; int * es_partition_directory; int * es_jit; scalar_t__ es_exprcontexts; } ;
typedef int ExprContext ;
typedef TYPE_1__ EState ;


 int DestroyPartitionDirectory (int *) ;
 int FreeExprContext (int *,int) ;
 int MemoryContextDelete (int ) ;
 int jit_release_context (int *) ;
 scalar_t__ linitial (scalar_t__) ;

void
FreeExecutorState(EState *estate)
{






 while (estate->es_exprcontexts)
 {




  FreeExprContext((ExprContext *) linitial(estate->es_exprcontexts),
      1);

 }


 if (estate->es_jit)
 {
  jit_release_context(estate->es_jit);
  estate->es_jit = ((void*)0);
 }


 if (estate->es_partition_directory)
 {
  DestroyPartitionDirectory(estate->es_partition_directory);
  estate->es_partition_directory = ((void*)0);
 }





 MemoryContextDelete(estate->es_query_cxt);
}
