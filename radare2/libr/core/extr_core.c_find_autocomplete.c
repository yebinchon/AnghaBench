
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef size_t ut8 ;
struct TYPE_28__ {int help_msg; struct TYPE_28__** sub; } ;
struct TYPE_27__ {TYPE_5__ root_cmd_descriptor; int config; TYPE_3__* autocomplete; } ;
struct TYPE_26__ {size_t length; scalar_t__ type; int n_subcmds; TYPE_1__** subcmds; } ;
struct TYPE_25__ {char* data; size_t length; } ;
struct TYPE_24__ {int cmd; } ;
typedef int RLineCompletion ;
typedef TYPE_2__ RLineBuffer ;
typedef TYPE_3__ RCoreAutocomplete ;
typedef TYPE_4__ RCore ;
typedef TYPE_5__ RCmdDescriptor ;


 size_t R_ARRAY_SIZE (TYPE_5__**) ;
 int autocomplete_breakpoints (TYPE_4__*,int *,char const*) ;
 int autocomplete_evals (TYPE_4__*,int *,char const*) ;
 int autocomplete_file (int *,char const*) ;
 int autocomplete_flags (TYPE_4__*,int *,char const*) ;
 int autocomplete_flagspaces (TYPE_4__*,int *,char const*) ;
 int autocomplete_functions (TYPE_4__*,int *,char const*) ;
 int autocomplete_macro (TYPE_4__*,int *,char const*) ;
 int autocomplete_minus (TYPE_4__*,int *,char const*) ;
 int autocomplete_ms_file (TYPE_4__*,int *,char const*) ;
 int autocomplete_project (TYPE_4__*,int *,char const*) ;
 int autocomplete_sdb (TYPE_4__*,int *,char const*) ;
 int autocomplete_theme (TYPE_4__*,int *,char const*) ;
 int autocomplete_zignatures (TYPE_4__*,int *,char const*) ;
 int memcpy (char*,char const*,int) ;
 int r_config_get_i (int ,char*) ;
 int r_cons_flush () ;
 TYPE_3__* r_core_autocomplete_find (TYPE_3__*,char*,int) ;
 int r_core_cmd_help (TYPE_4__*,int ) ;
 int r_line_completion_clear (int *) ;
 int r_line_completion_push (int *,int ) ;
 char* r_str_trim_ro (char const*) ;
 char* r_str_trim_wp (char const*) ;
 int strlen (char*) ;
 int strncmp (char*,int ,int) ;

__attribute__((used)) static bool find_autocomplete(RCore *core, RLineCompletion *completion, RLineBuffer *buf) {
 RCoreAutocomplete* child = ((void*)0);
 RCoreAutocomplete* parent = core->autocomplete;
 const char* p = buf->data;
 if (!*p) {
  return 0;
 }
 char arg[256];
 arg[0] = 0;
 while (*p) {
  const char* e = r_str_trim_wp (p);
  if (!e || (e - p) >= 256 || e == p) {
   return 0;
  }
  memcpy (arg, p, e - p);
  arg[e - p] = 0;
  child = r_core_autocomplete_find (parent, arg, 0);
  if (child && child->length < buf->length && p[child->length] == ' ') {


   p = r_str_trim_ro (p + child->length);
   if (child->type == 133) {
    continue;
   }
   parent = child;
  } else {
   break;
  }
 }
 int i;

 r_line_completion_clear (completion);
 switch (parent->type) {
 case 130:
  autocomplete_functions (core, completion, p);
 case 138:
  autocomplete_flags (core, completion, p);
  break;
 case 137:
  autocomplete_flagspaces (core, completion, p);
  break;
 case 140:
  autocomplete_functions (core, completion, p);
  break;
 case 128:
  autocomplete_zignatures (core, completion, p);
  break;
 case 141:
  autocomplete_evals (core, completion, p);
  break;
 case 132:
  autocomplete_project (core, completion, p);
  break;
 case 135:
  autocomplete_minus (core, completion, p);
  break;
 case 142:
  autocomplete_breakpoints (core, completion, p);
  break;
 case 136:
  autocomplete_macro (core, completion, p);
  break;
 case 134:
  autocomplete_ms_file(core, completion, p);
  break;
 case 139:
  autocomplete_file (completion, p);
  break;
 case 129:
  autocomplete_theme (core, completion, p);
  break;
 case 131:
  autocomplete_sdb (core, completion, p);
  break;
 case 133:

  break;
 default:
  if (r_config_get_i (core->config, "cfg.newtab")) {
   RCmdDescriptor *desc = &core->root_cmd_descriptor;
   for (i = 0; arg[i] && desc; i++) {
    ut8 c = arg[i];
    desc = c < R_ARRAY_SIZE (desc->sub) ? desc->sub[c] : ((void*)0);
   }
   if (desc && desc->help_msg) {
    r_core_cmd_help (core, desc->help_msg);
    r_cons_flush ();
    return 1;
   }

  }
  int length = strlen (arg);
  for (i = 0; i < parent->n_subcmds; i++) {
   if (!strncmp (arg, parent->subcmds[i]->cmd, length)) {
    r_line_completion_push (completion, parent->subcmds[i]->cmd);
   }
  }
  break;
 }
 return 1;
}
