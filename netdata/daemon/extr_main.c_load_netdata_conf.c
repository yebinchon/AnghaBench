
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int config_load (char*,char) ;
 scalar_t__ errno ;
 int error (char*,char*) ;
 int freez (char*) ;
 int info (char*,char*) ;
 int netdata_configured_stock_config_dir ;
 int netdata_configured_user_config_dir ;
 char* strdupz_path_subpath (int ,char*) ;

__attribute__((used)) static int load_netdata_conf(char *filename, char overwrite_used) {
    errno = 0;

    int ret = 0;

    if(filename && *filename) {
        ret = config_load(filename, overwrite_used);
        if(!ret)
            error("CONFIG: cannot load config file '%s'.", filename);
    }
    else {
        filename = strdupz_path_subpath(netdata_configured_user_config_dir, "netdata.conf");

        ret = config_load(filename, overwrite_used);
        if(!ret) {
            info("CONFIG: cannot load user config '%s'. Will try the stock version.", filename);
            freez(filename);

            filename = strdupz_path_subpath(netdata_configured_stock_config_dir, "netdata.conf");
            ret = config_load(filename, overwrite_used);
            if(!ret)
                info("CONFIG: cannot load stock config '%s'. Running with internal defaults.", filename);
        }

        freez(filename);
    }

    return ret;
}
