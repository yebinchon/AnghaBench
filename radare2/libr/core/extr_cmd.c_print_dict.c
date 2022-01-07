
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; char* name; } ;
struct TYPE_4__ {int n_subcmds; scalar_t__ type; struct TYPE_4__** subcmds; int cmd; scalar_t__ locked; } ;
typedef TYPE_1__ RCoreAutocomplete ;


 int R_CORE_AUTOCMPLT_END ;
 TYPE_3__* autocomplete_flags ;
 int eprintf (char*,int,char const*,int ) ;

__attribute__((used)) static inline void print_dict(RCoreAutocomplete* a, int sub) {
 if (!a) {
  return;
 }
 int i, j;
 const char* name = "unknown";
 for (i = 0; i < a->n_subcmds; ++i) {
  RCoreAutocomplete* b = a->subcmds[i];
  if (b->locked) {
   continue;
  }
  for (j = 0; j < R_CORE_AUTOCMPLT_END; ++j) {
   if (b->type == autocomplete_flags[j].type) {
    name = autocomplete_flags[j].name;
    break;
   }
  }
  eprintf ("[%3d] %s: '%s'\n", sub, name, b->cmd);
  print_dict (a->subcmds[i], sub + 1);
 }
}
