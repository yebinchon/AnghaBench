
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int instr_time ;
struct TYPE_12__ {TYPE_1__** commands; } ;
struct TYPE_11__ {size_t use_file; size_t command; int id; int cstack; scalar_t__ sleep_until; } ;
struct TYPE_10__ {scalar_t__ type; int argc; char** argv; scalar_t__ meta; int * expr; } ;
typedef int PgBenchValue ;
typedef int PgBenchExpr ;
typedef int ConnectionStateEnum ;
typedef TYPE_1__ Command ;
typedef TYPE_2__ CState ;


 int Assert (int) ;
 int CSTATE_ABORTED ;
 int CSTATE_END_COMMAND ;
 int CSTATE_SLEEP ;






 scalar_t__ INSTR_TIME_GET_MICROSEC (int ) ;
 int INSTR_TIME_SET_CURRENT_LAZY (int ) ;
 int INSTR_TIME_SET_ZERO (int ) ;
 scalar_t__ META_COMMAND ;
 scalar_t__ META_ELIF ;
 scalar_t__ META_ELSE ;
 scalar_t__ META_ENDIF ;
 scalar_t__ META_IF ;
 scalar_t__ META_SET ;
 scalar_t__ META_SETSHELL ;
 scalar_t__ META_SHELL ;
 scalar_t__ META_SLEEP ;
 int commandFailed (TYPE_2__*,char*,char*) ;
 int conditional_stack_empty (int ) ;
 int conditional_stack_peek (int ) ;
 int conditional_stack_poke (int ,int) ;
 int conditional_stack_pop (int ) ;
 int conditional_stack_push (int ,int) ;
 scalar_t__ debug ;
 int evaluateExpr (TYPE_2__*,int *,int *) ;
 int evaluateSleep (TYPE_2__*,int,char**,int*) ;
 int fprintf (int ,char*,...) ;
 int putVariableValue (TYPE_2__*,char*,char*,int *) ;
 int runShellCommand (TYPE_2__*,char*,char**,int) ;
 TYPE_3__* sql_script ;
 int stderr ;
 int valueTruth (int *) ;

__attribute__((used)) static ConnectionStateEnum
executeMetaCommand(CState *st, instr_time *now)
{
 Command *command = sql_script[st->use_file].commands[st->command];
 int argc;
 char **argv;

 Assert(command != ((void*)0) && command->type == META_COMMAND);

 argc = command->argc;
 argv = command->argv;

 if (debug)
 {
  fprintf(stderr, "client %d executing \\%s", st->id, argv[0]);
  for (int i = 1; i < argc; i++)
   fprintf(stderr, " %s", argv[i]);
  fprintf(stderr, "\n");
 }

 if (command->meta == META_SLEEP)
 {
  int usec;







  if (!evaluateSleep(st, argc, argv, &usec))
  {
   commandFailed(st, "sleep", "execution of meta-command failed");
   return CSTATE_ABORTED;
  }

  INSTR_TIME_SET_CURRENT_LAZY(*now);
  st->sleep_until = INSTR_TIME_GET_MICROSEC(*now) + usec;
  return CSTATE_SLEEP;
 }
 else if (command->meta == META_SET)
 {
  PgBenchExpr *expr = command->expr;
  PgBenchValue result;

  if (!evaluateExpr(st, expr, &result))
  {
   commandFailed(st, argv[0], "evaluation of meta-command failed");
   return CSTATE_ABORTED;
  }

  if (!putVariableValue(st, argv[0], argv[1], &result))
  {
   commandFailed(st, "set", "assignment of meta-command failed");
   return CSTATE_ABORTED;
  }
 }
 else if (command->meta == META_IF)
 {

  PgBenchExpr *expr = command->expr;
  PgBenchValue result;
  bool cond;

  if (!evaluateExpr(st, expr, &result))
  {
   commandFailed(st, argv[0], "evaluation of meta-command failed");
   return CSTATE_ABORTED;
  }

  cond = valueTruth(&result);
  conditional_stack_push(st->cstack, cond ? 128 : 131);
 }
 else if (command->meta == META_ELIF)
 {

  PgBenchExpr *expr = command->expr;
  PgBenchValue result;
  bool cond;

  if (conditional_stack_peek(st->cstack) == 128)
  {

   conditional_stack_poke(st->cstack, 130);
   return CSTATE_END_COMMAND;
  }

  if (!evaluateExpr(st, expr, &result))
  {
   commandFailed(st, argv[0], "evaluation of meta-command failed");
   return CSTATE_ABORTED;
  }

  cond = valueTruth(&result);
  Assert(conditional_stack_peek(st->cstack) == 131);
  conditional_stack_poke(st->cstack, cond ? 128 : 131);
 }
 else if (command->meta == META_ELSE)
 {
  switch (conditional_stack_peek(st->cstack))
  {
   case 128:
    conditional_stack_poke(st->cstack, 133);
    break;
   case 131:
   case 130:
   case 129:
   case 132:
   case 133:
   default:

    Assert(0);
  }
 }
 else if (command->meta == META_ENDIF)
 {
  Assert(!conditional_stack_empty(st->cstack));
  conditional_stack_pop(st->cstack);
 }
 else if (command->meta == META_SETSHELL)
 {
  if (!runShellCommand(st, argv[1], argv + 2, argc - 2))
  {
   commandFailed(st, "setshell", "execution of meta-command failed");
   return CSTATE_ABORTED;
  }
 }
 else if (command->meta == META_SHELL)
 {
  if (!runShellCommand(st, ((void*)0), argv + 1, argc - 1))
  {
   commandFailed(st, "shell", "execution of meta-command failed");
   return CSTATE_ABORTED;
  }
 }





 INSTR_TIME_SET_ZERO(*now);

 return CSTATE_END_COMMAND;
}
