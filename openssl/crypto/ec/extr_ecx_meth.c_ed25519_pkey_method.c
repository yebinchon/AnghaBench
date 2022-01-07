
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* pcc; int* kdsa; } ;
typedef int EVP_PKEY_METHOD ;


 TYPE_1__ OPENSSL_s390xcap_P ;
 int S390X_CAPBIT (int ) ;
 int S390X_EDDSA_SIGN_ED25519 ;
 int S390X_EDDSA_VERIFY_ED25519 ;
 int S390X_SCALAR_MULTIPLY_ED25519 ;
 int const ed25519_pkey_meth ;
 int const ed25519_s390x_pkey_meth ;

const EVP_PKEY_METHOD *ed25519_pkey_method(void)
{







    return &ed25519_pkey_meth;
}
