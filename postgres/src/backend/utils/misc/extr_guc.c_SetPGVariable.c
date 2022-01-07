
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int GUC_ACTION_LOCAL ;
 int GUC_ACTION_SET ;
 int PGC_SUSET ;
 int PGC_S_SESSION ;
 int PGC_USERSET ;
 char* flatten_set_variable_args (char const*,int *) ;
 int set_config_option (char const*,char*,int ,int ,int ,int,int ,int) ;
 scalar_t__ superuser () ;

void
SetPGVariable(const char *name, List *args, bool is_local)
{
 char *argstring = flatten_set_variable_args(name, args);


 (void) set_config_option(name,
        argstring,
        (superuser() ? PGC_SUSET : PGC_USERSET),
        PGC_S_SESSION,
        is_local ? GUC_ACTION_LOCAL : GUC_ACTION_SET,
        1, 0, 0);
}
