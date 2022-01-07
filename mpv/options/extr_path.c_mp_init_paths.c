
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int configdir; } ;
struct MPOpts {char* force_configdir; int load_config; } ;


 int TA_FREEP (int *) ;
 char* getenv (char*) ;
 int talloc_strdup (struct mpv_global*,char const*) ;

void mp_init_paths(struct mpv_global *global, struct MPOpts *opts)
{
    TA_FREEP(&global->configdir);

    const char *force_configdir = getenv("MPV_HOME");
    if (opts->force_configdir && opts->force_configdir[0])
        force_configdir = opts->force_configdir;
    if (!opts->load_config)
        force_configdir = "";

    global->configdir = talloc_strdup(global, force_configdir);
}
