
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* mp_get_win_exe_subdir (void*,char*) ;
 scalar_t__ mp_path_exists (char*) ;
 int portable_path ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;
 int talloc_strdup (int *,char*) ;

__attribute__((used)) static void path_init(void)
{
    void *tmp = talloc_new(((void*)0));
    char *path = mp_get_win_exe_subdir(tmp, "portable_config");
    if (path && mp_path_exists(path))
        portable_path = talloc_strdup(((void*)0), path);
    talloc_free(tmp);
}
