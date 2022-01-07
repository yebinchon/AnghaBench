
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ peer; } ;
typedef TYPE_1__ Port ;
typedef int BIGNUM ;
typedef int ASN1_INTEGER ;


 int * ASN1_INTEGER_to_BN (int *,int *) ;
 char* BN_bn2dec (int *) ;
 int BN_free (int *) ;
 int OPENSSL_free (char*) ;
 int * X509_get_serialNumber (scalar_t__) ;
 int strlcpy (char*,char*,size_t) ;

void
be_tls_get_peer_serial(Port *port, char *ptr, size_t len)
{
 if (port->peer)
 {
  ASN1_INTEGER *serial;
  BIGNUM *b;
  char *decimal;

  serial = X509_get_serialNumber(port->peer);
  b = ASN1_INTEGER_to_BN(serial, ((void*)0));
  decimal = BN_bn2dec(b);

  BN_free(b);
  strlcpy(ptr, decimal, len);
  OPENSSL_free(decimal);
 }
 else
  ptr[0] = '\0';
}
