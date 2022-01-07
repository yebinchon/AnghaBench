
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * s; int * r; } ;
typedef TYPE_1__ DSA_SIG ;


 void* BN_new () ;
 int DSA_SIG_free (TYPE_1__*) ;
 TYPE_1__* DSA_SIG_new () ;
 scalar_t__ decode_der_dsa_sig (int *,int *,unsigned char const**,size_t) ;

DSA_SIG *d2i_DSA_SIG(DSA_SIG **psig, const unsigned char **ppin, long len)
{
    DSA_SIG *sig;

    if (len < 0)
        return ((void*)0);
    if (psig != ((void*)0) && *psig != ((void*)0)) {
        sig = *psig;
    } else {
        sig = DSA_SIG_new();
        if (sig == ((void*)0))
            return ((void*)0);
    }
    if (sig->r == ((void*)0))
        sig->r = BN_new();
    if (sig->s == ((void*)0))
        sig->s = BN_new();
    if (decode_der_dsa_sig(sig->r, sig->s, ppin, (size_t)len) == 0) {
        if (psig == ((void*)0) || *psig == ((void*)0))
            DSA_SIG_free(sig);
        return ((void*)0);
    }
    if (psig != ((void*)0) && *psig == ((void*)0))
        *psig = sig;
    return sig;
}
