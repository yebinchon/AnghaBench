
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_3__ {size_t length; int ** elements; } ;
typedef TYPE_1__ RPKCS7SignerInfos ;


 int R_FREE (int **) ;
 int r_pkcs7_free_signerinfo (int *) ;

__attribute__((used)) static void r_pkcs7_free_signerinfos(RPKCS7SignerInfos *ss) {
 ut32 i;
 if (ss) {
  for (i = 0; i < ss->length; i++) {
   r_pkcs7_free_signerinfo (ss->elements[i]);
   ss->elements[i] = ((void*)0);
  }
  R_FREE (ss->elements);

 }
}
