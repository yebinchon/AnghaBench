
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct utsname {int machine; int release; int nodename; int sysname; } ;
struct TYPE_10__ {int offset; } ;
struct TYPE_9__ {int * glob; int minstamp; int addr; } ;
typedef TYPE_1__ RCoreUndoCondition ;
typedef int RCoreUndo ;
typedef TYPE_2__ RCore ;


 int cmd_uname (TYPE_2__*,char const*) ;
 int cmd_uniq (TYPE_2__*,char const*) ;
 int eprintf (char*) ;
 int free (char*) ;
 int help_msg_u ;
 int r_cons_printf (char*,...) ;
 int r_core_cmd_help (void*,int ) ;
 int r_core_cmdf (void*,char*,char const*) ;
 int * r_core_undo_new (int ,char*,char*) ;
 int r_core_undo_pop (TYPE_2__*) ;
 int r_core_undo_print (TYPE_2__*,int,TYPE_1__*) ;
 int r_core_undo_push (TYPE_2__*,int *) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 int uname (struct utsname*) ;

__attribute__((used)) static int cmd_undo(void *data, const char *input) {
 RCore *core = (RCore *)data;
 switch (input[0]) {
 case '?':
  r_core_cmd_help (data, help_msg_u);
  return 1;
 case 'c':
  switch (input[1]) {
  case ' ': {
   char *cmd = strdup (input + 2);
   char *rcmd = strchr (cmd, ',');
   if (rcmd) {
    *rcmd++ = 0;
    RCoreUndo *undo = r_core_undo_new (core->offset, cmd, rcmd);
    r_core_undo_push (core, undo);
   } else {
    eprintf ("Usage: uc [cmd] [revert-cmd]");
   }
   free (cmd);
   }
   break;
  case '?':
   eprintf ("Usage: uc [cmd],[revert-cmd]\n");
   eprintf (" uc. - list all reverts in current\n");
   eprintf (" uc* - list all core undos\n");
   eprintf (" uc  - list all core undos\n");
   eprintf (" uc- - undo last action\n");
   break;
  case '.': {
   RCoreUndoCondition cond = {
    .addr = core->offset,
    .minstamp = 0,
    .glob = ((void*)0)
   };
   r_core_undo_print (core, 1, &cond);
   } break;
  case '*':
   r_core_undo_print (core, 1, ((void*)0));
   break;
  case '-':
   r_core_undo_pop (core);
   break;
  default:
   r_core_undo_print (core, 0, ((void*)0));
   break;
  }
  return 1;
 case 's':
  r_core_cmdf (data, "s-%s", input + 1);
  return 1;
 case 'w':
  r_core_cmdf (data, "wc%s", input + 1);
  return 1;
 case 'n':
  if (input[1] == 'a') {
   (void)cmd_uname (core, input);
  } else if (input[1] == 'i' && input[2] == 'q') {
   (void)cmd_uniq (core, input);
  }
  return 1;
 }
 r_cons_printf ("unknown\n");

 return 0;
}
