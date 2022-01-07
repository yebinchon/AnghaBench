
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSA_SIG ;


 int DSA_F_DSA_SIG_NEW ;
 int DSAerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_zalloc (int) ;

DSA_SIG *DSA_SIG_new(void)
{
    DSA_SIG *sig = OPENSSL_zalloc(sizeof(*sig));
    if (sig == ((void*)0))
        DSAerr(DSA_F_DSA_SIG_NEW, ERR_R_MALLOC_FAILURE);
    return sig;
}
