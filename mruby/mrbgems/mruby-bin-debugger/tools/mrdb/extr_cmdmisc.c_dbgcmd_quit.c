
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_9__ {TYPE_1__* dbg; } ;
typedef TYPE_2__ mrdb_state ;
struct TYPE_10__ {int eException_class; } ;
typedef TYPE_3__ mrb_state ;
typedef int dbgcmd_state ;
struct TYPE_8__ {int xm; } ;


 int DBGST_PROMPT ;

 void* DBG_QUIT ;


 int EOF ;
 int fflush (int ) ;
 int getchar () ;
 struct RClass* mrb_define_class (TYPE_3__*,char*,int ) ;
 int mrb_raise (TYPE_3__*,struct RClass*,char*) ;
 int printf (char*) ;
 int stdout ;

dbgcmd_state
dbgcmd_quit(mrb_state *mrb, mrdb_state *mrdb)
{
  switch (mrdb->dbg->xm) {
  case 129:
  case 128:
  case 130:
    while (1) {
      char c;
      int buf;

      printf("The program is running.  Exit anyway? (y or n) ");
      fflush(stdout);

      if ((buf = getchar()) == EOF) {
        mrdb->dbg->xm = DBG_QUIT;
        break;
      }
      c = buf;
      while (buf != '\n' && (buf = getchar()) != EOF) ;

      if (c == 'y' || c == 'Y') {
        mrdb->dbg->xm = DBG_QUIT;
        break;
      }
      else if (c == 'n' || c == 'N') {
        break;
      }
      else {
        printf("Please answer y or n.\n");
      }
    }
    break;
  default:
    mrdb->dbg->xm = DBG_QUIT;
    break;
  }

  if (mrdb->dbg->xm == DBG_QUIT) {
    struct RClass *exc;
    exc = mrb_define_class(mrb, "DebuggerExit", mrb->eException_class);
    mrb_raise(mrb, exc, "Exit mrdb.");
  }
  return DBGST_PROMPT;
}
