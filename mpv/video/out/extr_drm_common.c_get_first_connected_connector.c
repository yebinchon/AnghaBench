
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct kms {int fd; } ;
struct TYPE_7__ {int count_connectors; int * connectors; } ;
typedef TYPE_1__ drmModeRes ;
struct TYPE_8__ {scalar_t__ connection; scalar_t__ count_modes; } ;
typedef TYPE_2__ drmModeConnector ;


 scalar_t__ DRM_MODE_CONNECTED ;
 int drmModeFreeConnector (TYPE_2__*) ;
 TYPE_2__* drmModeGetConnector (int ,int ) ;

__attribute__((used)) static drmModeConnector *get_first_connected_connector(const struct kms *kms,
                                                       const drmModeRes *res)
{
    for (int i = 0; i < res->count_connectors; i++) {
        drmModeConnector *connector
            = drmModeGetConnector(kms->fd, res->connectors[i]);
        if (!connector)
            continue;
        if (connector->connection == DRM_MODE_CONNECTED
        && connector->count_modes > 0) {
            return connector;
        }
        drmModeFreeConnector(connector);
    }
    return ((void*)0);
}
