
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int sync_index; TYPE_1__* log; } ;
struct TYPE_14__ {int last; } ;
typedef int RCoreTask ;
typedef int RCoreLogCallback ;
typedef TYPE_2__ RCore ;


 int atoi (char const*) ;
 int eprintf (char*) ;
 int free (char*) ;
 int getIndexFromLogString (char*) ;
 int help_msg_T ;
 int log_callback_all ;
 int log_callback_r2 ;
 int r_cons_break_pop () ;
 int r_cons_break_push (int *,int *) ;
 int r_cons_is_breaked () ;
 int r_cons_is_interactive () ;
 int r_cons_less_str (char*,int *) ;
 int r_cons_printf (char*,...) ;
 void* r_cons_sleep_begin () ;
 int r_cons_sleep_end (void*) ;
 int r_core_cmd0 (TYPE_2__*,char*) ;
 int r_core_cmd_help (TYPE_2__*,int ) ;
 int r_core_log_add (TYPE_2__*,char const*) ;
 int r_core_log_del (TYPE_2__*,int) ;
 char* r_core_log_get (TYPE_2__*,int) ;
 int r_core_log_list (TYPE_2__*,int,int,char const) ;
 int r_core_log_run (TYPE_2__*,char*,int ) ;
 int r_core_task_enqueue (TYPE_2__*,int *) ;
 int * r_core_task_new (TYPE_2__*,int,char*,int *,TYPE_2__*) ;
 char* r_file_slurp (char*,int *) ;
 int r_sys_sleep (int) ;
 void* strchr (char const*,char) ;
 int textlog_chat (TYPE_2__*) ;

__attribute__((used)) static int cmd_log(void *data, const char *input) {
 RCore *core = (RCore *) data;
 const char *arg, *input2;
 int n, n2;

 if (!input) {
  return 1;
 }

 input2 = (input && *input)? input + 1: "";
 arg = strchr (input2, ' ');
 n = atoi (input2);
 n2 = arg? atoi (arg + 1): 0;

 switch (*input) {
 case 'e':
  {
   char *p = strchr (input, ' ');
   if (p) {
    char *b = r_file_slurp (p + 1, ((void*)0));
    if (b) {
     r_cons_less_str (b, ((void*)0));
     free (b);
    } else {
     eprintf ("File not found\n");
    }
   } else {
    eprintf ("Usage: less [filename]\n");
   }
  }
  break;
 case 'l':
  r_cons_printf ("%d\n", core->log->last - 1);
  break;
 case '-':
  r_core_log_del (core, n);
  break;
 case '?':
  r_core_cmd_help (core, help_msg_T);
  break;
 case 'T':
  if (r_cons_is_interactive ()) {
   textlog_chat (core);
  } else {
   eprintf ("Only available when the screen is interactive\n");
  }
  break;
 case '=':
  if (input[1] == '&') {
   if (input[2] == '&') {
    r_cons_break_push (((void*)0), ((void*)0));
    while (!r_cons_is_breaked ()) {
     r_core_cmd0 (core, "T=");
     void *bed = r_cons_sleep_begin();
     r_sys_sleep (1);
     r_cons_sleep_end (bed);
    }
    r_cons_break_pop ();
   } else {

    eprintf ("Background thread syncing with http.sync started.\n");
    RCoreTask *task = r_core_task_new (core, 1, "T=&&", ((void*)0), core);
    r_core_task_enqueue (core, task);
   }
  } else {
   if (atoi (input + 1) > 0 || (input[1] == '0')) {
    core->sync_index = 0;
   } else {
    RCoreLogCallback log_callback = (input[1] == '*')
     ? log_callback_all: log_callback_r2;
    char *res = r_core_log_get (core, core->sync_index);
    if (res) {
     int idx = getIndexFromLogString (res);
     if (idx != -1) {
      core->sync_index = idx + 1;
     }
     r_core_log_run (core, res, log_callback);
     free (res);
    } else {
     r_cons_printf ("Please check e http.sync\n");
    }
   }
  }
  break;
 case ' ':
  if (n > 0 || *input == '0') {
   r_core_log_list (core, n, n2, *input);
  } else {
   r_core_log_add (core, input + 1);
  }
  break;
 case 'm':
  if (n > 0) {
   r_core_log_list (core, n, 1, 't');
  } else {
   r_core_log_list (core, n, 0, 't');
  }
  break;
 case 'j':
 case '*':
 case '\0':
  r_core_log_list (core, n, n2, *input);
  break;
 }
 return 0;
}
