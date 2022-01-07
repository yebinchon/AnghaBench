
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_4__ {scalar_t__ connection; } ;
typedef TYPE_1__ drmModeConnector ;


 scalar_t__ DRM_MODE_CONNECTED ;
 int MAX_CONNECTOR_NAME_LEN ;
 int get_connector_name (TYPE_1__ const*,char*) ;
 int mp_info (struct mp_log*,char*,char*,char const*) ;

__attribute__((used)) static void kms_show_connector_name_and_state_callback(
    struct mp_log *log, int card_no, const drmModeConnector *connector)
{
    char other_connector_name[MAX_CONNECTOR_NAME_LEN];
    get_connector_name(connector, other_connector_name);
    const char *connection_str =
        (connector->connection == DRM_MODE_CONNECTED) ? "connected" : "disconnected";
    mp_info(log, "  %s (%s)\n", other_connector_name, connection_str);
}
