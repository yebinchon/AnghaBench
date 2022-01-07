
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* signature; } ;
struct TYPE_11__ {TYPE_2__ sig; } ;
struct TYPE_12__ {TYPE_3__ op; } ;
struct TYPE_9__ {int prov; } ;
typedef TYPE_4__ EVP_PKEY_CTX ;
typedef int EVP_MD ;


 int * EVP_MD_fetch (int ,char const*,int *) ;
 int EVP_MD_meth_free (int *) ;
 int EVP_PKEY_CTX_IS_SIGNATURE_OP (TYPE_4__*) ;
 int EVP_PKEY_CTX_set_dh_pad (TYPE_4__*,int) ;
 int EVP_PKEY_CTX_set_signature_md (TYPE_4__*,int *) ;
 int atoi (char const*) ;
 int ossl_provider_library_context (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int legacy_ctrl_str_to_param(EVP_PKEY_CTX *ctx, const char *name,
                                    const char *value)
{

    if (strcmp(name, "dh_pad") == 0) {
        int pad;

        pad = atoi(value);
        return EVP_PKEY_CTX_set_dh_pad(ctx, pad);
    }

    if (strcmp(name, "digest") == 0) {
        int ret;
        EVP_MD *md;

        if (!EVP_PKEY_CTX_IS_SIGNATURE_OP(ctx) || ctx->op.sig.signature == ((void*)0))
            return 0;
        md = EVP_MD_fetch(ossl_provider_library_context(ctx->op.sig.signature->prov),
                          value, ((void*)0));
        if (md == ((void*)0))
            return 0;
        ret = EVP_PKEY_CTX_set_signature_md(ctx, md);
        EVP_MD_meth_free(md);
        return ret;
    }

    return 0;
}
