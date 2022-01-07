
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hostname; int health_enabled; } ;
typedef TYPE_1__ RRDHOST ;


 int D_HEALTH ;
 int debug (int ,char*,int ) ;
 int health_readfile ;
 int recursive_config_double_dir_load (char const*,char const*,char const*,int ,void*,int ) ;
 scalar_t__ unlikely (int) ;

void health_readdir(RRDHOST *host, const char *user_path, const char *stock_path, const char *subpath) {
    if(unlikely(!host->health_enabled)) {
        debug(D_HEALTH, "CONFIG health is not enabled for host '%s'", host->hostname);
        return;
    }

    recursive_config_double_dir_load(user_path, stock_path, subpath, health_readfile, (void *) host, 0);
}
