
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* dsa_paramgen ) (TYPE_2__*,int,unsigned char const*,int,int*,unsigned long*,int *) ;} ;
typedef int EVP_MD ;
typedef TYPE_2__ DSA ;
typedef int BN_GENCB ;


 int EVP_MD_size (int const*) ;
 int * EVP_sha1 () ;
 int * EVP_sha256 () ;
 int dsa_builtin_paramgen (TYPE_2__*,int,size_t,int const*,unsigned char const*,int,int *,int*,unsigned long*,int *) ;
 int stub1 (TYPE_2__*,int,unsigned char const*,int,int*,unsigned long*,int *) ;

int DSA_generate_parameters_ex(DSA *ret, int bits,
                               const unsigned char *seed_in, int seed_len,
                               int *counter_ret, unsigned long *h_ret,
                               BN_GENCB *cb)
{
    if (ret->meth->dsa_paramgen)
        return ret->meth->dsa_paramgen(ret, bits, seed_in, seed_len,
                                       counter_ret, h_ret, cb);
    else {
        const EVP_MD *evpmd = bits >= 2048 ? EVP_sha256() : EVP_sha1();
        size_t qbits = EVP_MD_size(evpmd) * 8;

        return dsa_builtin_paramgen(ret, bits, qbits, evpmd,
                                    seed_in, seed_len, ((void*)0), counter_ret,
                                    h_ret, cb);
    }
}
