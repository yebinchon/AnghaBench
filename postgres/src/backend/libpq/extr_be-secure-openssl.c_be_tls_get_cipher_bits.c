
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ssl; } ;
typedef TYPE_1__ Port ;


 int SSL_get_cipher_bits (scalar_t__,int*) ;

int
be_tls_get_cipher_bits(Port *port)
{
 int bits;

 if (port->ssl)
 {
  SSL_get_cipher_bits(port->ssl, &bits);
  return bits;
 }
 else
  return 0;
}
