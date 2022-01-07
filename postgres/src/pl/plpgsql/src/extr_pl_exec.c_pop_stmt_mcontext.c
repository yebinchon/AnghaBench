
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stmt_mcontext; int stmt_mcontext_parent; } ;
typedef TYPE_1__ PLpgSQL_execstate ;


 int MemoryContextGetParent (int ) ;

__attribute__((used)) static void
pop_stmt_mcontext(PLpgSQL_execstate *estate)
{

 estate->stmt_mcontext = estate->stmt_mcontext_parent;
 estate->stmt_mcontext_parent = MemoryContextGetParent(estate->stmt_mcontext);
}
