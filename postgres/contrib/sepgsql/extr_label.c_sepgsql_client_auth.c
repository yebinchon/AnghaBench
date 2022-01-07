
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sock; } ;
typedef TYPE_1__ Port ;


 int ERRCODE_INTERNAL_ERROR ;
 int FATAL ;
 int SEPGSQL_MODE_DEFAULT ;
 int SEPGSQL_MODE_PERMISSIVE ;
 int STATUS_OK ;
 int client_label_peer ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ getpeercon_raw (int ,int *) ;
 int next_client_auth_hook (TYPE_1__*,int) ;
 scalar_t__ sepgsql_get_permissive () ;
 int sepgsql_set_mode (int ) ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static void
sepgsql_client_auth(Port *port, int status)
{
 if (next_client_auth_hook)
  (*next_client_auth_hook) (port, status);





 if (status != STATUS_OK)
  return;




 if (getpeercon_raw(port->sock, &client_label_peer) < 0)
  ereport(FATAL,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("SELinux: unable to get peer label: %m")));





 if (sepgsql_get_permissive())
  sepgsql_set_mode(SEPGSQL_MODE_PERMISSIVE);
 else
  sepgsql_set_mode(SEPGSQL_MODE_DEFAULT);
}
