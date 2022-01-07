
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_get_win_exe_dir (void*) ;
 char* talloc_asprintf (void*,char*,int ,char const*) ;

__attribute__((used)) static char *mp_get_win_exe_subdir(void *ta_ctx, const char *name)
{
    return talloc_asprintf(ta_ctx, "%s/%s", mp_get_win_exe_dir(ta_ctx), name);
}
