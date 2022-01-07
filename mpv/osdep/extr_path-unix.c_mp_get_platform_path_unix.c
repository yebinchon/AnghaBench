
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* MPV_CONFDIR ;
 char const* getenv (char*) ;
 char const* mpv_home ;
 char const* old_home ;
 int path_init ;
 int path_init_once ;
 int pthread_once (int *,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

const char *mp_get_platform_path_unix(void *talloc_ctx, const char *type)
{
    pthread_once(&path_init_once, path_init);
    if (strcmp(type, "home") == 0)
        return mpv_home;
    if (strcmp(type, "old_home") == 0)
        return old_home;
    if (strcmp(type, "global") == 0)
        return MPV_CONFDIR;
    if (strcmp(type, "desktop") == 0)
        return getenv("HOME");
    return ((void*)0);
}
