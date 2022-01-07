
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int buf ;
struct TYPE_15__ {int * sdb; TYPE_1__* cons; int http_up; } ;
struct TYPE_14__ {int sdbshell_hist_iter; TYPE_2__* sdbshell_hist; } ;
struct TYPE_13__ {int head; } ;
struct TYPE_12__ {TYPE_3__* line; } ;
typedef int Sdb ;
typedef TYPE_2__ RList ;
typedef TYPE_3__ RLine ;
typedef TYPE_4__ RCore ;


 int callback_foreach_kv ;
 int eprintf (char*,...) ;
 int free (char*) ;
 int help_msg_k ;
 int r_cons_fgets (char*,int const,int ,int *) ;
 int r_cons_flush () ;
 int r_cons_is_interactive () ;
 int r_cons_print (char*) ;
 int r_cons_printf (char*,...) ;
 int r_cons_println (char*) ;
 int r_core_cmd_help (TYPE_4__*,int ) ;
 int r_file_exists (char*) ;
 int r_line_hist_cmd_down ;
 int r_line_hist_cmd_up ;
 int r_line_hist_sdb_down ;
 int r_line_hist_sdb_up ;
 int r_line_set_hist_callback (TYPE_3__*,int *,int *) ;
 int r_line_set_prompt (char const*) ;
 int r_list_append (TYPE_2__*,int ) ;
 int r_list_get_n (TYPE_2__*,int) ;
 int r_list_insert (TYPE_2__*,int,char*) ;
 int r_list_length (TYPE_2__*) ;
 TYPE_2__* r_list_newf (int (*) (char*)) ;
 int r_sandbox_enable (int ) ;
 char* r_str_ndup (char*,...) ;
 int r_str_new (char*) ;
 char* r_str_newf (char*,char*) ;
 int sdb_drain (int *,int *) ;
 int sdb_file (int *,char*) ;
 int sdb_foreach (int *,int ,int *) ;
 int * sdb_new (int *,char*,int ) ;
 int * sdb_ns (int *,char*,int) ;
 int * sdb_ns_path (int *,char*,int) ;
 char* sdb_querys (int *,int *,int ,char const*) ;
 int sdb_sync (int *) ;
 void* strchr (char const*,char) ;
 int strcmp (int ,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int cmd_kuery(void *data, const char *input) {
 char buf[1024], *out;
 RCore *core = (RCore*)data;
 const char *sp, *p = "[sdb]> ";
 const int buflen = sizeof (buf) - 1;
 Sdb *s = core->sdb;

 char *cur_pos, *cur_cmd, *next_cmd = ((void*)0);
 char *temp_pos, *temp_cmd, *temp_storage = ((void*)0);

 switch (input[0]) {

 case 'j':
  out = sdb_querys (s, ((void*)0), 0, "anal/**");
  if (!out) {
   r_cons_println ("No Output from sdb");
   break;
  }

  r_cons_printf ("{\"anal\":{");

  while (*out) {
   cur_pos = strchr (out, '\n');
   if (!cur_pos) {
     break;
   }
   cur_cmd = r_str_ndup (out, cur_pos - out);

   r_cons_printf ("\n\n\"%s\" : [", cur_cmd);

   next_cmd = r_str_newf ("anal/%s/*", cur_cmd);
   temp_storage = sdb_querys (s, ((void*)0), 0, next_cmd);

   if (!temp_storage) {
    r_cons_println ("\nEMPTY\n");
    r_cons_printf ("],\n\n");
    out += cur_pos - out + 1;
    continue;
   }

   while (*temp_storage) {
    temp_pos = strchr (temp_storage, '\n');
    if (!temp_pos) {
     break;
    }

    temp_cmd = r_str_ndup (temp_storage, temp_pos - temp_storage);
    r_cons_printf ("\"%s\",", temp_cmd);
    temp_storage += temp_pos - temp_storage + 1;
   }

   r_cons_printf ("],\n\n");
   out += cur_pos - out + 1;
  }

  r_cons_printf ("}}");
  free (next_cmd);
  free (temp_storage);
  break;

 case ' ':
  out = sdb_querys (s, ((void*)0), 0, input + 1);
  if (out) {
   r_cons_print (out);
  }
  free (out);
  break;


 case '\0':
  sdb_foreach (s, callback_foreach_kv, ((void*)0));
  break;

 case 's':
  if (core->http_up) {
   return 0;
  }
  if (!r_cons_is_interactive ()) {
   return 0;
  }
  if (input[1] == ' ') {
   char *n, *o, *p = strdup (input + 2);

   for (n = o = p; n; o = n) {
    n = strchr (o, '/');
    if (n) {
     *n++ = 0;
    }
    s = sdb_ns (s, o, 1);
   }
   free (p);
  }
  if (!s) {
   s = core->sdb;
  }
  RLine *line = core->cons->line;
  if (!line->sdbshell_hist) {
   line->sdbshell_hist = r_list_newf (free);
   r_list_append (line->sdbshell_hist, r_str_new ("\0"));
  }
  RList *sdb_hist = line->sdbshell_hist;
  r_line_set_hist_callback (line, &r_line_hist_sdb_up, &r_line_hist_sdb_down);
  for (;;) {
   r_line_set_prompt (p);
   if (r_cons_fgets (buf, buflen, 0, ((void*)0)) < 1) {
    break;
   }
   if (!*buf) {
    break;
   }
   if (sdb_hist) {
    if ((r_list_length (sdb_hist) == 1) || (r_list_length (sdb_hist) > 1 && strcmp (r_list_get_n (sdb_hist, 1), buf))) {
     r_list_insert (sdb_hist, 1, strdup (buf));
    }
    line->sdbshell_hist_iter = sdb_hist->head;
   }
   out = sdb_querys (s, ((void*)0), 0, buf);
   if (out) {
    r_cons_println (out);
    r_cons_flush ();
   }
  }
  r_line_set_hist_callback (core->cons->line, &r_line_hist_cmd_up, &r_line_hist_cmd_down);
  break;
 case 'o':
  if (r_sandbox_enable (0)) {
   eprintf ("This command is disabled in sandbox mode\n");
   return 0;
  }
  if (input[1] == ' ') {
   char *fn = strdup (input + 2);
   if (!fn) {
    eprintf("Unable to allocate memory\n");
    return 0;
   }
   char *ns = strchr (fn, ' ');
   if (ns) {
    Sdb *db;
    *ns++ = 0;
    if (r_file_exists (fn)) {
     db = sdb_ns_path (core->sdb, ns, 1);
     if (db) {
      Sdb *newdb = sdb_new (((void*)0), fn, 0);
      if (newdb) {
       sdb_drain (db, newdb);
      } else {
       eprintf ("Cannot open sdb '%s'\n", fn);
      }
     } else {
      eprintf ("Cannot find sdb '%s'\n", ns);
     }
    } else {
     eprintf ("Cannot open file\n");
    }
   } else {
    eprintf ("Missing sdb namespace\n");
   }
   free (fn);
  } else {
   eprintf ("Usage: ko [file] [namespace]\n");
  }
  break;
 case 'd':
  if (r_sandbox_enable (0)) {
   eprintf ("This command is disabled in sandbox mode\n");
   return 0;
  }
  if (input[1] == ' ') {
   char *fn = strdup (input + 2);
   char *ns = strchr (fn, ' ');
   if (ns) {
    *ns++ = 0;
    Sdb *db = sdb_ns_path (core->sdb, ns, 0);
    if (db) {
     sdb_file (db, fn);
     sdb_sync (db);
    } else {
     eprintf ("Cannot find sdb '%s'\n", ns);
    }
   } else {
    eprintf ("Missing sdb namespace\n");
   }
   free (fn);
  } else {
   eprintf ("Usage: kd [file] [namespace]\n");
  }
  break;
 case '?':
  r_core_cmd_help (core, help_msg_k);
  break;
 }

 if (input[0] == '\0') {

  return 0;
 }

 sp = strchr (input + 1, ' ');
 if (sp) {
  char *inp = strdup (input);
  inp [(size_t)(sp - input)] = 0;
  s = sdb_ns (core->sdb, inp + 1, 1);
  out = sdb_querys (s, ((void*)0), 0, sp + 1);
  if (out) {
   r_cons_println (out);
   free (out);
  }
  free (inp);
  return 0;
 }
 return 0;
}
