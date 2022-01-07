
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* g; int const* q; int const* p; int * pub_key; int * priv_key; } ;
typedef TYPE_1__ DSA ;
typedef int BIO ;
typedef int BIGNUM ;


 int ASN1_bn_print (int *,char*,int const*,int *,int) ;
 int BIO_indent (int *,int,int) ;
 scalar_t__ BIO_printf (int *,char*,...) ;
 int BN_num_bits (int const*) ;

__attribute__((used)) static int do_dsa_print(BIO *bp, const DSA *x, int off, int ptype)
{
    int ret = 0;
    const char *ktype = ((void*)0);
    const BIGNUM *priv_key, *pub_key;
    int mod_len = 0;

    if (x->p != ((void*)0))
        mod_len = BN_num_bits(x->p);

    if (ptype == 2)
        priv_key = x->priv_key;
    else
        priv_key = ((void*)0);

    if (ptype > 0)
        pub_key = x->pub_key;
    else
        pub_key = ((void*)0);

    if (ptype == 2)
        ktype = "Private-Key";
    else if (ptype == 1)
        ktype = "Public-Key";
    else
        ktype = "DSA-Parameters";

    if (priv_key) {
        if (!BIO_indent(bp, off, 128))
            goto err;
        if (BIO_printf(bp, "%s: (%d bit)\n", ktype, BN_num_bits(x->p))
            <= 0)
            goto err;
    } else {
        if (BIO_printf(bp, "Public-Key: (%d bit)\n", mod_len) <= 0)
            goto err;
    }

    if (!ASN1_bn_print(bp, "priv:", priv_key, ((void*)0), off))
        goto err;
    if (!ASN1_bn_print(bp, "pub: ", pub_key, ((void*)0), off))
        goto err;
    if (!ASN1_bn_print(bp, "P:   ", x->p, ((void*)0), off))
        goto err;
    if (!ASN1_bn_print(bp, "Q:   ", x->q, ((void*)0), off))
        goto err;
    if (!ASN1_bn_print(bp, "G:   ", x->g, ((void*)0), off))
        goto err;
    ret = 1;
 err:
    return ret;
}
