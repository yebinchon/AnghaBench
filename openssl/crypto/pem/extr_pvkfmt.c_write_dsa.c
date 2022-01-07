
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSA ;
typedef int BIGNUM ;


 int BN_num_bytes (int const*) ;
 int DSA_get0_key (int *,int const**,int const**) ;
 int DSA_get0_pqg (int *,int const**,int const**,int const**) ;
 int memset (unsigned char*,int,int) ;
 int write_lebn (unsigned char**,int const*,int) ;

__attribute__((used)) static void write_dsa(unsigned char **out, DSA *dsa, int ispub)
{
    int nbyte;
    const BIGNUM *p = ((void*)0), *q = ((void*)0), *g = ((void*)0);
    const BIGNUM *pub_key = ((void*)0), *priv_key = ((void*)0);

    DSA_get0_pqg(dsa, &p, &q, &g);
    DSA_get0_key(dsa, &pub_key, &priv_key);
    nbyte = BN_num_bytes(p);
    write_lebn(out, p, nbyte);
    write_lebn(out, q, 20);
    write_lebn(out, g, nbyte);
    if (ispub)
        write_lebn(out, pub_key, nbyte);
    else
        write_lebn(out, priv_key, 20);

    memset(*out, 0xff, 24);
    *out += 24;
    return;
}
