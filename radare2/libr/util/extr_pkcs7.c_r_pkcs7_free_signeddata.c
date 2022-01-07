
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signerinfos; int crls; int certificates; int contentInfo; int digestAlgorithms; } ;
typedef TYPE_1__ RPKCS7SignedData ;


 int r_pkcs7_free_certificaterevocationlists (int *) ;
 int r_pkcs7_free_contentinfo (int *) ;
 int r_pkcs7_free_digestalgorithmidentifier (int *) ;
 int r_pkcs7_free_extendedcertificatesandcertificates (int *) ;
 int r_pkcs7_free_signerinfos (int *) ;

__attribute__((used)) static void r_pkcs7_free_signeddata(RPKCS7SignedData *sd) {
 if (sd) {
  r_pkcs7_free_digestalgorithmidentifier (&sd->digestAlgorithms);
  r_pkcs7_free_contentinfo (&sd->contentInfo);
  r_pkcs7_free_extendedcertificatesandcertificates (&sd->certificates);
  r_pkcs7_free_certificaterevocationlists (&sd->crls);
  r_pkcs7_free_signerinfos (&sd->signerinfos);

 }
}
