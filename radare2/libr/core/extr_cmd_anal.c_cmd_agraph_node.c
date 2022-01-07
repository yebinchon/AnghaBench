
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int graph; } ;
typedef TYPE_1__ RCore ;


 int atoi (char*) ;
 int eprintf (char*) ;
 int free (char*) ;
 int help_msg_agn ;
 int r_agraph_add_node_with_color (int ,char*,char*,int) ;
 int r_agraph_del_node (int ,char*) ;
 scalar_t__ r_base64_decode_dyn (int ,int) ;
 int r_cons_printf (char*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 char* r_str_append (char*,char*) ;
 char** r_str_argv (char const*,int*) ;
 int r_str_argv_free (char**) ;
 char* r_str_replace (char*,char*,char*,int) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void cmd_agraph_node(RCore *core, const char *input) {
 switch (*input) {
 case ' ': {
  char *newbody = ((void*)0);
  char **args, *body;
  int n_args, B_LEN = strlen ("base64:");
  int color = -1;
  input++;
  args = r_str_argv (input, &n_args);
  if (n_args < 1 || n_args > 3) {
   r_cons_printf ("Wrong arguments\n");
   r_str_argv_free (args);
   break;
  }

  if (n_args > 1) {
   body = strdup (args[1]);
   if (strncmp (body, "base64:", B_LEN) == 0) {
    body = r_str_replace (body, "\\n", "", 1);
    newbody = (char *)r_base64_decode_dyn (body + B_LEN, -1);
    free (body);
    if (!newbody) {
     eprintf ("Cannot allocate buffer\n");
     r_str_argv_free (args);
     break;
    }
    body = newbody;
   }
   body = r_str_append (body, "\n");
   if (n_args > 2) {
           color = atoi(args[2]);
   }
  } else {
   body = strdup ("");
  }
  r_agraph_add_node_with_color (core->graph, args[0], body, color);
  r_str_argv_free (args);
  free (body);

  break;
 }
 case '-': {
  char **args;
  int n_args;

  input++;
  args = r_str_argv (input, &n_args);
  if (n_args != 1) {
   r_cons_printf ("Wrong arguments\n");
   r_str_argv_free (args);
   break;
  }
  r_agraph_del_node (core->graph, args[0]);
  r_str_argv_free (args);
  break;
 }
 case '?':
 default:
  r_core_cmd_help (core, help_msg_agn);
  break;
 }
}
