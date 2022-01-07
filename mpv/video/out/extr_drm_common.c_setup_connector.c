
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct kms {TYPE_1__* connector; int card_no; int log; } ;
typedef int drmModeRes ;
struct TYPE_5__ {scalar_t__ connection; scalar_t__ count_modes; } ;
typedef TYPE_1__ drmModeConnector ;


 scalar_t__ DRM_MODE_CONNECTED ;
 int MP_ERR (struct kms*,char*,...) ;
 int drmModeFreeConnector (TYPE_1__*) ;
 TYPE_1__* get_connector_by_name (struct kms*,int const*,char const*) ;
 TYPE_1__* get_first_connected_connector (struct kms*,int const*) ;
 int kms_show_available_connectors (int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool setup_connector(struct kms *kms, const drmModeRes *res,
                            const char *connector_name)
{
    drmModeConnector *connector;

    if (connector_name
    && strcmp(connector_name, "")
    && strcmp(connector_name, "auto")) {
        connector = get_connector_by_name(kms, res, connector_name);
        if (!connector) {
            MP_ERR(kms, "No connector with name %s found\n", connector_name);
            kms_show_available_connectors(kms->log, kms->card_no);
            return 0;
        }
    } else {
        connector = get_first_connected_connector(kms, res);
        if (!connector) {
            MP_ERR(kms, "No connected connectors found\n");
            return 0;
        }
    }

    if (connector->connection != DRM_MODE_CONNECTED) {
        drmModeFreeConnector(connector);
        MP_ERR(kms, "Chosen connector is disconnected\n");
        return 0;
    }

    if (connector->count_modes == 0) {
        drmModeFreeConnector(connector);
        MP_ERR(kms, "Chosen connector has no valid modes\n");
        return 0;
    }

    kms->connector = connector;
    return 1;
}
