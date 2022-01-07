
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_SECTION_REGISTRY ;
 int CONFIG_SECTION_WEB ;
 int SIMPLE_PATTERN_EXACT ;
 int Z_DEFAULT_STRATEGY ;
 int Z_FILTERED ;
 int Z_FIXED ;
 int Z_HUFFMAN_ONLY ;
 int Z_RLE ;
 void* config_get (int ,char*,char*) ;
 int config_get_boolean (int ,char*,int ) ;
 int config_get_number (int ,char*,int) ;
 int error (char*,...) ;
 void* make_dns_decision (int ,char*,char*,void*) ;
 int respect_web_browser_do_not_track_policy ;
 void* simple_pattern_create (void*,int *,int ) ;
 int strcmp (char*,char*) ;
 void* web_allow_badges_dns ;
 void* web_allow_badges_from ;
 void* web_allow_connections_dns ;
 void* web_allow_connections_from ;
 void* web_allow_dashboard_dns ;
 void* web_allow_dashboard_from ;
 void* web_allow_mgmt_dns ;
 void* web_allow_mgmt_from ;
 void* web_allow_netdataconf_dns ;
 void* web_allow_netdataconf_from ;
 void* web_allow_registry_dns ;
 void* web_allow_registry_from ;
 void* web_allow_streaming_dns ;
 void* web_allow_streaming_from ;
 int web_client_first_request_timeout ;
 int web_client_streaming_rate_t ;
 int web_client_timeout ;
 int web_enable_gzip ;
 int web_gzip_level ;
 int web_gzip_strategy ;
 int * web_x_frame_options ;

void web_server_config_options(void)
{
    web_client_timeout =
        (int)config_get_number(CONFIG_SECTION_WEB, "disconnect idle clients after seconds", web_client_timeout);
    web_client_first_request_timeout =
        (int)config_get_number(CONFIG_SECTION_WEB, "timeout for first request", web_client_first_request_timeout);
    web_client_streaming_rate_t =
        config_get_number(CONFIG_SECTION_WEB, "accept a streaming request every seconds", web_client_streaming_rate_t);

    respect_web_browser_do_not_track_policy =
        config_get_boolean(CONFIG_SECTION_WEB, "respect do not track policy", respect_web_browser_do_not_track_policy);
    web_x_frame_options = config_get(CONFIG_SECTION_WEB, "x-frame-options response header", "");
    if(!*web_x_frame_options)
        web_x_frame_options = ((void*)0);

    web_allow_connections_from =
        simple_pattern_create(config_get(CONFIG_SECTION_WEB, "allow connections from", "localhost *"),
                              ((void*)0), SIMPLE_PATTERN_EXACT);
    web_allow_connections_dns =
        make_dns_decision(CONFIG_SECTION_WEB, "allow connections by dns", "heuristic", web_allow_connections_from);
    web_allow_dashboard_from =
        simple_pattern_create(config_get(CONFIG_SECTION_WEB, "allow dashboard from", "localhost *"),
                              ((void*)0), SIMPLE_PATTERN_EXACT);
    web_allow_dashboard_dns =
        make_dns_decision(CONFIG_SECTION_WEB, "allow dashboard by dns", "heuristic", web_allow_dashboard_from);
    web_allow_badges_from =
        simple_pattern_create(config_get(CONFIG_SECTION_WEB, "allow badges from", "*"), ((void*)0), SIMPLE_PATTERN_EXACT);
    web_allow_badges_dns =
        make_dns_decision(CONFIG_SECTION_WEB, "allow badges by dns", "heuristic", web_allow_badges_from);
    web_allow_registry_from =
        simple_pattern_create(config_get(CONFIG_SECTION_REGISTRY, "allow from", "*"), ((void*)0), SIMPLE_PATTERN_EXACT);
    web_allow_registry_dns = make_dns_decision(CONFIG_SECTION_REGISTRY, "allow by dns", "heuristic",
                                                   web_allow_registry_from);
    web_allow_streaming_from = simple_pattern_create(config_get(CONFIG_SECTION_WEB, "allow streaming from", "*"),
                                                       ((void*)0), SIMPLE_PATTERN_EXACT);
    web_allow_streaming_dns = make_dns_decision(CONFIG_SECTION_WEB, "allow streaming by dns", "heuristic",
                                                   web_allow_streaming_from);

    web_allow_netdataconf_from = simple_pattern_create(config_get(CONFIG_SECTION_WEB, "allow netdata.conf from",
                                                       "localhost fd* 10.* 192.168.* 172.16.* 172.17.* 172.18.*"
                                                       " 172.19.* 172.20.* 172.21.* 172.22.* 172.23.* 172.24.*"
                                                       " 172.25.* 172.26.* 172.27.* 172.28.* 172.29.* 172.30.*"
                                                       " 172.31.*"), ((void*)0), SIMPLE_PATTERN_EXACT);
    web_allow_netdataconf_dns =
        make_dns_decision(CONFIG_SECTION_WEB, "allow netdata.conf by dns", "no", web_allow_mgmt_from);
    web_allow_mgmt_from =
        simple_pattern_create(config_get(CONFIG_SECTION_WEB, "allow management from", "localhost"),
                              ((void*)0), SIMPLE_PATTERN_EXACT);
    web_allow_mgmt_dns =
        make_dns_decision(CONFIG_SECTION_WEB, "allow management by dns","heuristic",web_allow_mgmt_from);
}
