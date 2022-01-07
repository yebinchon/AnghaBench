
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lwan_config {int config_file_path; } ;
struct TYPE_2__ {int request_flags; scalar_t__ allow_cors; scalar_t__ proxy_protocol; } ;
struct lwan {TYPE_1__ config; } ;


 int REQUEST_ALLOW_CORS ;
 int REQUEST_ALLOW_PROXY_REQS ;
 int lwan_status_critical (char*,int ) ;
 int lwan_status_init (struct lwan*) ;
 int setup_from_config (struct lwan*,int ) ;

__attribute__((used)) static void try_setup_from_config(struct lwan *l,
                                  const struct lwan_config *config)
{
    if (!setup_from_config(l, config->config_file_path)) {
        if (config->config_file_path) {
            lwan_status_critical("Could not read config file: %s",
                                 config->config_file_path);
        }
    }

    lwan_status_init(l);

    l->config.request_flags =
        (l->config.proxy_protocol ? REQUEST_ALLOW_PROXY_REQS : 0) |
        (l->config.allow_cors ? REQUEST_ALLOW_CORS : 0);
}
