
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int serialNumber; int issuer; } ;
typedef TYPE_1__ RPKCS7IssuerAndSerialNumber ;


 int r_asn1_free_binary (int ) ;
 int r_x509_free_name (int *) ;

__attribute__((used)) static void r_pkcs7_free_issuerandserialnumber(RPKCS7IssuerAndSerialNumber *iasu) {
 if (iasu) {
  r_x509_free_name (&iasu->issuer);
  r_asn1_free_binary (iasu->serialNumber);

 }
}
