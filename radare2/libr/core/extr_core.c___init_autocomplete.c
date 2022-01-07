
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ autocomplete_type; int autocomplete; } ;
typedef TYPE_1__ RCore ;


 scalar_t__ AUTOCOMPLETE_DEFAULT ;
 scalar_t__ AUTOCOMPLETE_MS ;
 int RCoreAutocomplete ;
 int R_CORE_AUTOCMPLT_MS ;
 int R_NEW0 (int ) ;
 int __init_autocomplete_default (TYPE_1__*) ;
 int ms_argc ;
 char** ms_argv ;
 int r_core_autocomplete_add (int ,char*,int ,int) ;
 int r_core_autocomplete_find (int ,char*,int) ;

__attribute__((used)) static void __init_autocomplete (RCore* core) {
 int i;
 core->autocomplete = R_NEW0 (RCoreAutocomplete);
 if (core->autocomplete_type == AUTOCOMPLETE_DEFAULT) {
  __init_autocomplete_default (core);
 } else if (core->autocomplete_type == AUTOCOMPLETE_MS) {
  r_core_autocomplete_add (core->autocomplete, "ls", R_CORE_AUTOCMPLT_MS, 1);
  r_core_autocomplete_add (core->autocomplete, "cd", R_CORE_AUTOCMPLT_MS, 1);
  r_core_autocomplete_add (core->autocomplete, "cat", R_CORE_AUTOCMPLT_MS, 1);
  r_core_autocomplete_add (core->autocomplete, "get", R_CORE_AUTOCMPLT_MS, 1);
  r_core_autocomplete_add (core->autocomplete, "mount", R_CORE_AUTOCMPLT_MS, 1);
  for (i = 0; i < ms_argc && ms_argv[i]; i++) {
   if (!r_core_autocomplete_find (core->autocomplete, ms_argv[i], 1)) {
    r_core_autocomplete_add (core->autocomplete, ms_argv[i], R_CORE_AUTOCMPLT_MS, 1);
   }
  }
 }
}
