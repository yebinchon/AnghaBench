
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ssl; } ;
typedef TYPE_1__ Port ;


 int * SSL_get_current_compression (scalar_t__) ;

bool
be_tls_get_compression(Port *port)
{
 if (port->ssl)
  return (SSL_get_current_compression(port->ssl) != ((void*)0));
 else
  return 0;
}
