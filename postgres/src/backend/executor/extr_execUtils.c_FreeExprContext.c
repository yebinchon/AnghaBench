
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int es_exprcontexts; } ;
struct TYPE_7__ {TYPE_2__* ecxt_estate; int ecxt_per_tuple_memory; } ;
typedef TYPE_1__ ExprContext ;
typedef TYPE_2__ EState ;


 int MemoryContextDelete (int ) ;
 int ShutdownExprContext (TYPE_1__*,int) ;
 int list_delete_ptr (int ,TYPE_1__*) ;
 int pfree (TYPE_1__*) ;

void
FreeExprContext(ExprContext *econtext, bool isCommit)
{
 EState *estate;


 ShutdownExprContext(econtext, isCommit);

 MemoryContextDelete(econtext->ecxt_per_tuple_memory);

 estate = econtext->ecxt_estate;
 if (estate)
  estate->es_exprcontexts = list_delete_ptr(estate->es_exprcontexts,
              econtext);

 pfree(econtext);
}
