
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unauthenticatedAttributes; int encryptedDigest; int digestEncryptionAlgorithm; int authenticatedAttributes; int digestAlgorithm; int issuerAndSerialNumber; } ;
typedef TYPE_1__ RPKCS7SignerInfo ;


 int free (TYPE_1__*) ;
 int r_asn1_free_binary (int ) ;
 int r_pkcs7_free_attributes (int *) ;
 int r_pkcs7_free_issuerandserialnumber (int *) ;
 int r_x509_free_algorithmidentifier (int *) ;

__attribute__((used)) static void r_pkcs7_free_signerinfo(RPKCS7SignerInfo *si) {
 if (si) {
  r_pkcs7_free_issuerandserialnumber (&si->issuerAndSerialNumber);
  r_x509_free_algorithmidentifier (&si->digestAlgorithm);
  r_pkcs7_free_attributes (&si->authenticatedAttributes);
  r_x509_free_algorithmidentifier (&si->digestEncryptionAlgorithm);
  r_asn1_free_binary (si->encryptedDigest);
  r_pkcs7_free_attributes (&si->unauthenticatedAttributes);
  free (si);
 }
}
