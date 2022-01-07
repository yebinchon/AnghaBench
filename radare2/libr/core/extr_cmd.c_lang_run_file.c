
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lang; } ;
typedef int RLang ;
typedef TYPE_1__ RCore ;


 int r_core_sysenv_begin (TYPE_1__*,int *) ;
 int r_lang_run_file (int ,char const*) ;

__attribute__((used)) static int lang_run_file(RCore *core, RLang *lang, const char *file) {
 r_core_sysenv_begin (core, ((void*)0));
 return r_lang_run_file (core->lang, file);
}
