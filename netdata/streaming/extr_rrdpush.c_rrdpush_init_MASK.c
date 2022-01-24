#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SECTION_GLOBAL ; 
 int /*<<< orphan*/  CONFIG_SECTION_STREAM ; 
 scalar_t__ NETDATA_SSL_FORCE ; 
 scalar_t__ NETDATA_SSL_INVALID_CERTIFICATE ; 
 scalar_t__ NETDATA_SSL_OPTIONAL ; 
 scalar_t__ NETDATA_SSL_VALID_CERTIFICATE ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * default_rrdpush_api_key ; 
 int /*<<< orphan*/ * default_rrdpush_destination ; 
 int default_rrdpush_enabled ; 
 void* default_rrdpush_send_charts_matching ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* netdata_ssl_ca_file ; 
 void* netdata_ssl_ca_path ; 
 scalar_t__ netdata_use_ssl_on_stream ; 
 scalar_t__ netdata_validate_server ; 
 int /*<<< orphan*/  rrdhost_free_orphan_time ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stream_config ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 

int FUNC8() {
    // --------------------------------------------------------------------
    // load stream.conf
    FUNC5();

    default_rrdpush_enabled     = (unsigned int)FUNC1(&stream_config, CONFIG_SECTION_STREAM, "enabled", default_rrdpush_enabled);
    default_rrdpush_destination = FUNC0(&stream_config, CONFIG_SECTION_STREAM, "destination", "");
    default_rrdpush_api_key     = FUNC0(&stream_config, CONFIG_SECTION_STREAM, "api key", "");
    default_rrdpush_send_charts_matching      = FUNC0(&stream_config, CONFIG_SECTION_STREAM, "send charts matching", "*");
    rrdhost_free_orphan_time    = FUNC2(CONFIG_SECTION_GLOBAL, "cleanup orphan hosts after seconds", rrdhost_free_orphan_time);

    if(default_rrdpush_enabled && (!default_rrdpush_destination || !*default_rrdpush_destination || !default_rrdpush_api_key || !*default_rrdpush_api_key)) {
        FUNC3("STREAM [send]: cannot enable sending thread - information is missing.");
        default_rrdpush_enabled = 0;
    }

#ifdef ENABLE_HTTPS
    if (netdata_use_ssl_on_stream == NETDATA_SSL_OPTIONAL) {
        if (default_rrdpush_destination){
            char *test = strstr(default_rrdpush_destination,":SSL");
            if(test){
                *test = 0X00;
                netdata_use_ssl_on_stream = NETDATA_SSL_FORCE;
            }
        }
    }

    char *invalid_certificate = appconfig_get(&stream_config, CONFIG_SECTION_STREAM, "ssl skip certificate verification", "no");
    if ( !strcmp(invalid_certificate,"yes")){
        if (netdata_validate_server == NETDATA_SSL_VALID_CERTIFICATE){
            info("Netdata is configured to accept invalid SSL certificate.");
            netdata_validate_server = NETDATA_SSL_INVALID_CERTIFICATE;
        }
    }

    netdata_ssl_ca_path = appconfig_get(&stream_config, CONFIG_SECTION_STREAM, "CApath", "/etc/ssl/certs/");
    netdata_ssl_ca_file = appconfig_get(&stream_config, CONFIG_SECTION_STREAM, "CAfile", "/etc/ssl/certs/certs.pem");
#endif

    return default_rrdpush_enabled;
}