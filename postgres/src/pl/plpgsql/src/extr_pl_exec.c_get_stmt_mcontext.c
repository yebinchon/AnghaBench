
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * stmt_mcontext; int stmt_mcontext_parent; } ;
typedef TYPE_1__ PLpgSQL_execstate ;
typedef int * MemoryContext ;


 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int ,char*,int ) ;

__attribute__((used)) static MemoryContext
get_stmt_mcontext(PLpgSQL_execstate *estate)
{
 if (estate->stmt_mcontext == ((void*)0))
 {
  estate->stmt_mcontext =
   AllocSetContextCreate(estate->stmt_mcontext_parent,
          "PLpgSQL per-statement data",
          ALLOCSET_DEFAULT_SIZES);
 }
 return estate->stmt_mcontext;
}
