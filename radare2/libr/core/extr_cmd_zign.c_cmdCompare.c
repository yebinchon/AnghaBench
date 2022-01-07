
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anal; int config; } ;
typedef int RSignOptions ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 int help_msg_zc ;
 char* r_config_get (int ,char*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int r_sign_diff (int ,int *,char const*) ;
 int r_sign_diff_by_name (int ,int *,char const*,int) ;
 int r_sign_options_free (int *) ;
 int * r_sign_options_new (char const*,char const*) ;

__attribute__((used)) static int cmdCompare(void *data, const char *input) {
 int result = 1;
 RCore *core = (RCore *) data;
 const char *raw_bytes_thresh = r_config_get (core->config, "zign.diff.bthresh");
 const char *raw_graph_thresh = r_config_get (core->config, "zign.diff.gthresh");
 RSignOptions *options = r_sign_options_new (raw_bytes_thresh, raw_graph_thresh);

 switch (*input) {
 case ' ':
  if (!input[1]) {
   eprintf ("usage: zc other_space\n");
   result = 0;
   break;
  }
  result = r_sign_diff (core->anal, options, input + 1);
  break;
 case 'n':
  switch (input[1]) {
  case ' ':
   if (!input[2]) {
    eprintf ("usage: zcn other_space\n");
    result = 0;
    break;
   }
   result = r_sign_diff_by_name (core->anal, options, input + 2, 0);
   break;
  case '!':
   if (input[2] != ' ' || !input[3]) {
    eprintf ("usage: zcn! other_space\n");
    result = 0;
    break;
   }
   result = r_sign_diff_by_name (core->anal, options, input + 3, 1);
   break;
  default:
   eprintf ("usage: zcn! other_space\n");
   result = 0;
  }
  break;
 case '?':
  r_core_cmd_help (core, help_msg_zc);
  break;
 default:
  eprintf ("usage: zc[?n!] other_space\n");
  result = 0;
 }

 r_sign_options_free (options);

 return result;
}
