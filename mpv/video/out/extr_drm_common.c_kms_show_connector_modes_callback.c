
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_5__ {scalar_t__ connection; } ;
typedef TYPE_1__ drmModeConnector ;


 scalar_t__ DRM_MODE_CONNECTED ;
 int MAX_CONNECTOR_NAME_LEN ;
 int get_connector_name (TYPE_1__ const*,char*) ;
 int kms_show_available_modes (struct mp_log*,TYPE_1__ const*) ;
 int mp_info (struct mp_log*,char*,...) ;

__attribute__((used)) static void kms_show_connector_modes_callback(struct mp_log *log, int card_no,
                                              const drmModeConnector *connector)
{
    if (connector->connection != DRM_MODE_CONNECTED)
        return;

    char other_connector_name[MAX_CONNECTOR_NAME_LEN];
    get_connector_name(connector, other_connector_name);
    mp_info(log, "Available modes for drm-connector=%d.%s\n",
            card_no, other_connector_name);
    kms_show_available_modes(log, connector);
    mp_info(log, "\n");
}
