
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_20__ {int value; } ;
struct TYPE_19__ {int yank_buf; TYPE_2__* num; int offset; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*,...) ;
 int free (char*) ;
 int help_msg_y ;
 int * r_buf_data (int ,int *) ;
 int r_buf_size (int ) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 char* r_core_cmd_str (TYPE_1__*,char*) ;
 int r_core_cmdf (TYPE_1__*,char*,char*) ;
 char* r_core_editor (TYPE_1__*,int *,char*) ;
 int r_core_yank (TYPE_1__*,int ,int ) ;
 int r_core_yank_cat (TYPE_1__*,int ) ;
 int r_core_yank_cat_string (TYPE_1__*,int ) ;
 int r_core_yank_dump (TYPE_1__*,int ,char const) ;
 int r_core_yank_file_all (TYPE_1__*,char const*) ;
 int r_core_yank_file_ex (TYPE_1__*,char const*) ;
 int r_core_yank_hexdump (TYPE_1__*,int ) ;
 int r_core_yank_hexpair (TYPE_1__*,char const*) ;
 int r_core_yank_paste (TYPE_1__*,int ,int ) ;
 int r_core_yank_set (TYPE_1__*,int ,int const*,int) ;
 int r_core_yank_string (TYPE_1__*,int ,int ) ;
 int r_core_yank_to (TYPE_1__*,char const*) ;
 int r_file_dump (char const*,int const*,int ,int) ;
 int r_hex_str2bin (char const*,int *) ;
 int r_num_math (TYPE_2__*,char const*) ;
 char* r_str_trim_ro (char const*) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 int strtok (char*,char*) ;

__attribute__((used)) static int cmd_yank(void *data, const char *input) {
 ut64 n;
 RCore *core = (RCore *)data;
 switch (input[0]) {
 case ' ':
  r_core_yank (core, core->offset, r_num_math (core->num, input + 1));
  break;
 case 'l':
  core->num->value = r_buf_size (core->yank_buf);
  break;
 case 'y':
  while (input[1] == ' ') {
   input++;
  }
  n = input[1]? r_num_math (core->num, input + 1): core->offset;
  r_core_yank_paste (core, n, 0);
  break;
 case 'x':
  r_core_yank_hexdump (core, r_num_math (core->num, input + 1));
  break;
 case 'z':
  r_core_yank_string (core, core->offset, r_num_math (core->num, input + 1));
  break;
 case 'w':
  switch (input[1]) {
  case ' ':
   r_core_yank_set (core, 0, (const ut8*)input + 2, strlen (input + 2));
   break;
  case 'x':
   if (input[2] == ' ') {
    char *out = strdup (input + 3);
    int len = r_hex_str2bin (input + 3, (ut8*)out);
    if (len > 0) {
     r_core_yank_set (core, core->offset, (const ut8*)out, len);
    } else {
     eprintf ("Invalid length\n");
    }
    free (out);
   } else {
    eprintf ("Usage: ywx [hexpairs]\n");
   }

   break;
  default:
   eprintf ("Usage: ywx [hexpairs]\n");
   break;
  }
  break;
 case 'p':
  r_core_yank_cat (core, r_num_math (core->num, input + 1));
  break;
 case 's':
  r_core_yank_cat_string (core, r_num_math (core->num, input + 1));
  break;
 case 't':
  if (input[1] == 'f') {
   ut64 tmpsz;
   const char *file = r_str_trim_ro (input + 2);
   const ut8 *tmp = r_buf_data (core->yank_buf, &tmpsz);
   if (!r_file_dump (file, tmp, tmpsz, 0)) {
    eprintf ("Cannot dump to '%s'\n", file);
   }
  } else if (input[1] == ' ') {
   r_core_yank_to (core, input + 1);
  } else {
   eprintf ("Usage: wt[f] [arg] ..\n");
  }
  break;
 case 'f':
  switch (input[1]) {
  case ' ':
   r_core_yank_file_ex (core, input + 1);
   break;
  case 'x':
   r_core_yank_hexpair (core, input + 2);
   break;
  case 'a':
   r_core_yank_file_all (core, input + 2);
   break;
  default:
   eprintf ("Usage: yf[xa] [arg]\n");
   eprintf ("yf [file]     - copy blocksize from file into the clipboard\n");
   eprintf ("yfa [path]    - yank the whole file\n");
   eprintf ("yfx [hexpair] - yank from hexpair string\n");
   break;
  }
  break;
 case '!':
  {
   char *sig = r_core_cmd_str (core, "y*");
   if (!sig || !*sig) {
    free (sig);
    sig = strdup ("wx 10203040");
   }
   char *data = r_core_editor (core, ((void*)0), sig);
   (void) strtok (data, ";\n");
   r_core_cmdf (core, "y%s", data);
   free (sig);
   free (data);
  }
  break;
 case '*':
 case 'j':
 case 'q':
 case '\0':
  r_core_yank_dump (core, 0, input[0]);
  break;
 default:
  r_core_cmd_help (core, help_msg_y);
  break;
 }
 return 1;
}
