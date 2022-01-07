
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kms {int fd; } ;
struct TYPE_3__ {int count_connectors; int * connectors; } ;
typedef TYPE_1__ drmModeRes ;
typedef int drmModeConnector ;


 int MAX_CONNECTOR_NAME_LEN ;
 int drmModeFreeConnector (int *) ;
 int * drmModeGetConnector (int ,int ) ;
 int get_connector_name (int *,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static drmModeConnector *get_connector_by_name(const struct kms *kms,
                                               const drmModeRes *res,
                                               const char *connector_name)
{
    for (int i = 0; i < res->count_connectors; i++) {
        drmModeConnector *connector
            = drmModeGetConnector(kms->fd, res->connectors[i]);
        if (!connector)
            continue;
        char other_connector_name[MAX_CONNECTOR_NAME_LEN];
        get_connector_name(connector, other_connector_name);
        if (!strcmp(connector_name, other_connector_name))
            return connector;
        drmModeFreeConnector(connector);
    }
    return ((void*)0);
}
