
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* gss; } ;
struct TYPE_4__ {char const* princ; int auth; } ;
typedef TYPE_2__ Port ;



const char *
be_gssapi_get_princ(Port *port)
{
 if (!port || !port->gss->auth)
  return ((void*)0);

 return port->gss->princ;
}
