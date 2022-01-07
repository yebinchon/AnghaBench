
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int appconfig_load (int *,char*,int ) ;
 scalar_t__ errno ;
 int freez (char*) ;
 int info (char*,char*) ;
 int netdata_configured_stock_config_dir ;
 int netdata_configured_user_config_dir ;
 char* strdupz_path_subpath (int ,char*) ;
 int stream_config ;

__attribute__((used)) static void load_stream_conf() {
    errno = 0;
    char *filename = strdupz_path_subpath(netdata_configured_user_config_dir, "stream.conf");
    if(!appconfig_load(&stream_config, filename, 0)) {
        info("CONFIG: cannot load user config '%s'. Will try stock config.", filename);
        freez(filename);

        filename = strdupz_path_subpath(netdata_configured_stock_config_dir, "stream.conf");
        if(!appconfig_load(&stream_config, filename, 0))
            info("CONFIG: cannot load stock config '%s'. Running with internal defaults.", filename);
    }
    freez(filename);
}
