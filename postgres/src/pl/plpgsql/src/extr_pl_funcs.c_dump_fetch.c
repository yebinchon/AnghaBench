
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int curvar; TYPE_1__* target; int is_move; } ;
struct TYPE_5__ {int dno; char* refname; } ;
typedef TYPE_2__ PLpgSQL_stmt_fetch ;


 int dump_cursor_direction (TYPE_2__*) ;
 int dump_ind () ;
 int dump_indent ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
dump_fetch(PLpgSQL_stmt_fetch *stmt)
{
 dump_ind();

 if (!stmt->is_move)
 {
  printf("FETCH curvar=%d\n", stmt->curvar);
  dump_cursor_direction(stmt);

  dump_indent += 2;
  if (stmt->target != ((void*)0))
  {
   dump_ind();
   printf("    target = %d %s\n",
       stmt->target->dno, stmt->target->refname);
  }
  dump_indent -= 2;
 }
 else
 {
  printf("MOVE curvar=%d\n", stmt->curvar);
  dump_cursor_direction(stmt);
 }
}
