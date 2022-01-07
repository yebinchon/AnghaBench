
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef char ut8 ;
struct TYPE_13__ {int config; } ;
typedef TYPE_1__ RCore ;
typedef int FILE ;


 int R_CORE_PRJ_ALL ;
 int eprintf (char*,...) ;
 int fclose (int *) ;
 int fprintf (int *,char*,char const*) ;
 int free (char*) ;
 int help_msg_P ;
 int help_msg_Pn ;
 char* r_base64_decode_dyn (char const*,int) ;
 char* r_base64_encode_dyn (char*,int) ;
 char* r_config_get (int ,char*) ;
 int r_cons_println (char const*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int r_core_cmdf (TYPE_1__*,char*,char const*) ;
 int r_core_project_cat (TYPE_1__*,char const*) ;
 int r_core_project_delete (TYPE_1__*,char const*) ;
 int r_core_project_execute_cmds (TYPE_1__*,char const*) ;
 char* r_core_project_info (TYPE_1__*,char const*) ;
 int r_core_project_list (TYPE_1__*,char const) ;
 char* r_core_project_notes_file (TYPE_1__*,char const*) ;
 int r_core_project_open (TYPE_1__*,char const*,int) ;
 int r_core_project_save (TYPE_1__*,char const*) ;
 int r_core_project_save_rdb (TYPE_1__*,char const*,int ) ;
 int r_file_dump (char*,char const*,int ,int) ;
 char* r_file_slurp (char*,int*) ;
 int * r_sandbox_fopen (char*,char*) ;
 char* r_str_append (char*,char const*) ;
 int r_sys_cmdf (char*,char const*,char*) ;
 void* strchr (char const*,char) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 int strstr (char*,char const*) ;

__attribute__((used)) static int cmd_project(void *data, const char *input) {
 RCore *core = (RCore *) data;
 const char *file, *arg;
 const char *fileproject = r_config_get (core->config, "prj.name");
 char *str = ((void*)0);

 if (!input) {
  return 0;
 }
 str = strdup (fileproject);
 arg = strchr (input, ' ');
 if (arg) {
  arg++;
 } else {
  if (*input) {
   arg = input + 1;
   if (*arg == '&') {
    arg++;
   }
  }
 }
 file = arg;
 switch (input[0]) {
 case 'c':
  if (input[1] == ' ') {
   r_core_project_cat (core, input + 2);
  } else {
   eprintf ("Usage: Pc [prjname]\n");
  }
  break;
 case 'o':

  if (input[1] == '&') {
   r_core_cmdf (core, "& Po %s", file);
  } else if (input[1]) {
   r_core_project_open (core, file, 0);
  } else {
   if (file && *file) {
    r_cons_println (file);
   }
  }
  break;
 case 'd':
 case '-':
  r_core_project_delete (core, file);
  break;
 case 's':
  if (!file || !file[0]) {
   file = str;
  }
  if (r_core_project_save (core, file)) {
   r_cons_println (file);
  }
  break;
 case 'S':
  if (input[1] == ' ') {
   r_core_project_save_rdb (core, input + 2, R_CORE_PRJ_ALL);
  } else {
   eprintf ("Usage: PS [file]\n");
  }
  break;
 case 'n':
  if (input[1] == '?') {
   r_core_cmd_help (core, help_msg_Pn);
  } else if (!fileproject || !*fileproject) {
   eprintf ("No project\n");
  } else {
   switch (input[1]) {
   case '-':

   {
    FILE *fd = r_sandbox_fopen (str, "w");
    if (!fd) {
     eprintf ("Cannot open %s\n", str);
    } else {
     char *str = r_core_project_notes_file (core, fileproject);
     char *data = r_file_slurp (str, ((void*)0));
     int del = 0;
     if (data) {
      char *ptr, *nl;
      for (ptr = data; ptr; ptr = nl) {
       nl = strchr (ptr, '\n');
       if (nl) {
        *nl++ = 0;
        if (strstr (ptr, input + 2)) {
         del++;
        } else {
         fprintf (fd, "%s\n", ptr);
        }
       }
      }
      free (data);
     }
     if (del > 0) {
      eprintf ("Deleted %d lines\n", del);
     }
     free (str);
     fclose (fd);
    }
   }
   break;
   case ' ':
    if (input[2] == '-') {
     char *str = r_core_project_notes_file (core, fileproject);

     const char *editor = r_config_get (core->config, "cfg.editor");
     if (str && *str && editor && *editor) {
      r_sys_cmdf ("%s %s", editor, str);
     } else {
      eprintf ("No cfg.editor configured\n");
     }
     free (str);
    } else {


     char *str = r_core_project_notes_file (core, fileproject);
     char *data = r_file_slurp (str, ((void*)0));
     FILE *fd = r_sandbox_fopen (str, "a");
     if (fd) {
      fprintf (fd, "%s\n", input + 2);
      fclose (fd);
     }
     free (str);
     free (data);
    }
    break;
   case '+':
    {
     char *str = r_core_project_notes_file (core, fileproject);
     char *data = r_file_slurp (str, ((void*)0));
     data = r_str_append (data, input + 2);
     data = r_str_append (data, "\n");
     r_file_dump (str, (const ut8*)data, strlen (data), 0);
     free (data);
     free (str);
    }
    break;
   case 'j':
    if (!input[2]) {
     int len = 0;

     char *str = r_core_project_notes_file (core, fileproject);
     if (str) {
      char *data = r_file_slurp (str, &len);
      char *res = r_base64_encode_dyn (data, len);
      if (res) {
       r_cons_println (res);
       free (res);
      }
      free (data);
      free (str);
     }
    } else if (input[2] == ' ') {

     ut8 *data = r_base64_decode_dyn (input + 3, -1);
     if (data) {
      char *str = r_core_project_notes_file (core, fileproject);
      if (str) {
       r_file_dump (str, data, strlen ((const char *) data), 0);
       free (str);
      }
      free (data);
     }
    } else {
     eprintf ("Usage: `Pnj` or `Pnj ...`\n");
    }
    break;
   case 'x':
    r_core_project_execute_cmds (core, fileproject);
    break;
   case 0:
   {
    char *str = r_core_project_notes_file (core, fileproject);
    char *data = r_file_slurp (str, ((void*)0));
    if (data) {
     r_cons_println (data);
     free (data);
    }
    free (str);
   }
   break;
   }
  }
  break;
 case 'i':
  if (file && *file) {
   char *prjName = r_core_project_info (core, file);
   r_cons_println (prjName);
   free (prjName);
  }
  break;
 case 0:
 case 'j':
  r_core_project_list (core, input[0]);
  break;
 default:
  r_core_cmd_help (core, help_msg_P);
  break;
 }
 free (str);
 return 1;
}
