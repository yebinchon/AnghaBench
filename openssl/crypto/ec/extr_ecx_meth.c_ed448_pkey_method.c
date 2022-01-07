
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* pcc; int* kdsa; } ;
typedef int EVP_PKEY_METHOD ;


 TYPE_1__ OPENSSL_s390xcap_P ;
 int S390X_CAPBIT (int ) ;
 int S390X_EDDSA_SIGN_ED448 ;
 int S390X_EDDSA_VERIFY_ED448 ;
 int S390X_SCALAR_MULTIPLY_ED448 ;
 int const ed448_pkey_meth ;
 int const ed448_s390x_pkey_meth ;

const EVP_PKEY_METHOD *ed448_pkey_method(void)
{






    return &ed448_pkey_meth;
}
