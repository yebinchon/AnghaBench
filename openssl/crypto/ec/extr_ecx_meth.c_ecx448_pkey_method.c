
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* pcc; } ;
typedef int EVP_PKEY_METHOD ;


 TYPE_1__ OPENSSL_s390xcap_P ;
 int S390X_CAPBIT (int ) ;
 int S390X_SCALAR_MULTIPLY_X448 ;
 int const ecx448_pkey_meth ;
 int const ecx448_s390x_pkey_meth ;

const EVP_PKEY_METHOD *ecx448_pkey_method(void)
{




    return &ecx448_pkey_meth;
}
