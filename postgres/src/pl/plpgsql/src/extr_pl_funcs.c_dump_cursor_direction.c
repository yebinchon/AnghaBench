
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int direction; int how_many; scalar_t__ expr; } ;
typedef TYPE_1__ PLpgSQL_stmt_fetch ;






 int dump_expr (scalar_t__) ;
 int dump_ind () ;
 int dump_indent ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_cursor_direction(PLpgSQL_stmt_fetch *stmt)
{
 dump_indent += 2;
 dump_ind();
 switch (stmt->direction)
 {
  case 129:
   printf("    FORWARD ");
   break;
  case 130:
   printf("    BACKWARD ");
   break;
  case 131:
   printf("    ABSOLUTE ");
   break;
  case 128:
   printf("    RELATIVE ");
   break;
  default:
   printf("??? unknown cursor direction %d", stmt->direction);
 }

 if (stmt->expr)
 {
  dump_expr(stmt->expr);
  printf("\n");
 }
 else
  printf("%ld\n", stmt->how_many);

 dump_indent -= 2;
}
