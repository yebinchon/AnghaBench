
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t connector_type; int connector_type_id; } ;
typedef TYPE_1__ drmModeConnector ;


 int MAX_CONNECTOR_NAME_LEN ;
 char** connector_names ;
 int snprintf (char*,int ,char*,char*,int) ;

__attribute__((used)) static void get_connector_name(const drmModeConnector *connector,
                               char ret[MAX_CONNECTOR_NAME_LEN])
{
    snprintf(ret, MAX_CONNECTOR_NAME_LEN, "%s-%d",
             connector_names[connector->connector_type],
             connector->connector_type_id);
}
