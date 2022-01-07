
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dirty_cnt; } ;
typedef int EVP_PKEY ;
typedef TYPE_1__ DSA ;


 int DSA_F_DSA_PARAM_DECODE ;
 int DSAerr (int ,int ) ;
 int ERR_R_DSA_LIB ;
 int EVP_PKEY_assign_DSA (int *,TYPE_1__*) ;
 TYPE_1__* d2i_DSAparams (int *,unsigned char const**,int) ;

__attribute__((used)) static int dsa_param_decode(EVP_PKEY *pkey,
                            const unsigned char **pder, int derlen)
{
    DSA *dsa;

    if ((dsa = d2i_DSAparams(((void*)0), pder, derlen)) == ((void*)0)) {
        DSAerr(DSA_F_DSA_PARAM_DECODE, ERR_R_DSA_LIB);
        return 0;
    }
    dsa->dirty_cnt++;
    EVP_PKEY_assign_DSA(pkey, dsa);
    return 1;
}
