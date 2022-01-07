
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ameth; } ;
typedef TYPE_1__ EVP_PKEY ;
typedef int DH ;


 int dhx_asn1_meth ;
 int i2d_DHparams (int const*,unsigned char**) ;
 int i2d_DHxparams (int const*,unsigned char**) ;

__attribute__((used)) static int i2d_dhp(const EVP_PKEY *pkey, const DH *a, unsigned char **pp)
{
    if (pkey->ameth == &dhx_asn1_meth)
        return i2d_DHxparams(a, pp);
    return i2d_DHparams(a, pp);
}
