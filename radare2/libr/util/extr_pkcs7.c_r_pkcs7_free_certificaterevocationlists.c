
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_3__ {size_t length; int ** elements; } ;
typedef TYPE_1__ RPKCS7CertificateRevocationLists ;


 int R_FREE (int **) ;
 int r_x509_free_crl (int *) ;

__attribute__((used)) static void r_pkcs7_free_certificaterevocationlists(RPKCS7CertificateRevocationLists *crls) {
 ut32 i;
 if (crls) {
  for (i = 0; i < crls->length; ++i) {
   r_x509_free_crl (crls->elements[i]);
   crls->elements[i] = ((void*)0);
  }
  R_FREE (crls->elements);

 }
}
