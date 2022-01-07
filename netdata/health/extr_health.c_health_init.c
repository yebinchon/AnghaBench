
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_SECTION_HEALTH ;
 int D_HEALTH ;
 scalar_t__ config_get_boolean (int ,char*,unsigned int) ;
 int debug (int ,char*) ;
 unsigned int default_health_enabled ;
 int health_silencers_init () ;

void health_init(void) {
    debug(D_HEALTH, "Health configuration initializing");

    if(!(default_health_enabled = (unsigned int)config_get_boolean(CONFIG_SECTION_HEALTH, "enabled", default_health_enabled))) {
        debug(D_HEALTH, "Health is disabled.");
        return;
    }

    health_silencers_init();
}
