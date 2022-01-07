
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrdhost_system_info {int dummy; } ;


 int CONFIG_SECTION_BACKEND ;
 int CONFIG_SECTION_GLOBAL ;
 int D_RRDHOST ;
 int config_get (int ,char*,char*) ;
 int config_get_number (int ,char*,int) ;
 int debug (int ,char*,char*) ;
 int default_health_enabled ;
 int default_rrd_history_entries ;
 int default_rrd_memory_mode ;
 int default_rrd_update_every ;
 int default_rrdpush_api_key ;
 int default_rrdpush_destination ;
 int default_rrdpush_enabled ;
 int default_rrdpush_send_charts_matching ;
 int gap_when_lost_iterations_above ;
 int health_init () ;
 int localhost ;
 int netdata_configured_timezone ;
 int os_type ;
 int program_name ;
 int program_version ;
 int registry_get_this_machine_guid () ;
 int registry_get_this_machine_hostname () ;
 int registry_init () ;
 int rrd_unlock () ;
 int rrd_wrlock () ;
 int rrdhost_create (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,struct rrdhost_system_info*,int) ;
 int rrdpush_init () ;
 int rrdset_free_obsolete_time ;
 int web_client_api_v1_management_init () ;

void rrd_init(char *hostname, struct rrdhost_system_info *system_info) {
    rrdset_free_obsolete_time = config_get_number(CONFIG_SECTION_GLOBAL, "cleanup obsolete charts after seconds", rrdset_free_obsolete_time);
    gap_when_lost_iterations_above = (int)config_get_number(CONFIG_SECTION_GLOBAL, "gap when lost iterations above", gap_when_lost_iterations_above);
    if (gap_when_lost_iterations_above < 1)
        gap_when_lost_iterations_above = 1;

    health_init();
    registry_init();
    rrdpush_init();

    debug(D_RRDHOST, "Initializing localhost with hostname '%s'", hostname);
    rrd_wrlock();
    localhost = rrdhost_create(
            hostname
            , registry_get_this_machine_hostname()
            , registry_get_this_machine_guid()
            , os_type
            , netdata_configured_timezone
            , config_get(CONFIG_SECTION_BACKEND, "host tags", "")
            , program_name
            , program_version
            , default_rrd_update_every
            , default_rrd_history_entries
            , default_rrd_memory_mode
            , default_health_enabled
            , default_rrdpush_enabled
            , default_rrdpush_destination
            , default_rrdpush_api_key
            , default_rrdpush_send_charts_matching
            , system_info
            , 1
    );
    rrd_unlock();
 web_client_api_v1_management_init();
}
