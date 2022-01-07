
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* gss; } ;
struct TYPE_4__ {int auth; } ;
typedef TYPE_2__ Port ;



bool
be_gssapi_get_auth(Port *port)
{
 if (!port || !port->gss)
  return 0;

 return port->gss->auth;
}
