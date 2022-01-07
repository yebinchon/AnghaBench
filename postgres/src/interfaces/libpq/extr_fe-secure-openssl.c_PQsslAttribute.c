
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sslbits_str ;
struct TYPE_3__ {int * ssl; } ;
typedef TYPE_1__ PGconn ;


 char const* SSL_get_cipher (int *) ;
 int SSL_get_cipher_bits (int *,int*) ;
 scalar_t__ SSL_get_current_compression (int *) ;
 char const* SSL_get_version (int *) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

const char *
PQsslAttribute(PGconn *conn, const char *attribute_name)
{
 if (!conn)
  return ((void*)0);
 if (conn->ssl == ((void*)0))
  return ((void*)0);

 if (strcmp(attribute_name, "library") == 0)
  return "OpenSSL";

 if (strcmp(attribute_name, "key_bits") == 0)
 {
  static char sslbits_str[12];
  int sslbits;

  SSL_get_cipher_bits(conn->ssl, &sslbits);
  snprintf(sslbits_str, sizeof(sslbits_str), "%d", sslbits);
  return sslbits_str;
 }

 if (strcmp(attribute_name, "cipher") == 0)
  return SSL_get_cipher(conn->ssl);

 if (strcmp(attribute_name, "compression") == 0)
  return SSL_get_current_compression(conn->ssl) ? "on" : "off";

 if (strcmp(attribute_name, "protocol") == 0)
  return SSL_get_version(conn->ssl);

 return ((void*)0);
}
