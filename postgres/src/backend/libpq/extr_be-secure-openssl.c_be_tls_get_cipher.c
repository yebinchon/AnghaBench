
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ssl; } ;
typedef TYPE_1__ Port ;


 char const* SSL_get_cipher (scalar_t__) ;

const char *
be_tls_get_cipher(Port *port)
{
 if (port->ssl)
  return SSL_get_cipher(port->ssl);
 else
  return ((void*)0);
}
