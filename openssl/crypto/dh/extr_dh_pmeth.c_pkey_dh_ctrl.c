
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int prime_len; int use_dsa; int subprime_len; int pad; int generator; int param_nid; int rfc5114_param; int kdf_type; size_t kdf_outlen; unsigned char* kdf_ukm; int kdf_ukmlen; int * kdf_oid; int * kdf_md; } ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef int EVP_MD ;
typedef TYPE_2__ DH_PKEY_CTX ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int EVP_PKEY_DH_KDF_NONE ;
 int EVP_PKEY_DH_KDF_X9_42 ;
 int NID_undef ;
 int OPENSSL_free (unsigned char*) ;

__attribute__((used)) static int pkey_dh_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    DH_PKEY_CTX *dctx = ctx->data;
    switch (type) {
    case 136:
        if (p1 < 256)
            return -2;
        dctx->prime_len = p1;
        return 1;

    case 135:
        if (dctx->use_dsa == 0)
            return -2;
        dctx->subprime_len = p1;
        return 1;

    case 138:
        dctx->pad = p1;
        return 1;

    case 137:
        if (dctx->use_dsa)
            return -2;
        dctx->generator = p1;
        return 1;

    case 134:




        if (p1 < 0 || p1 > 2)
            return -2;

        dctx->use_dsa = p1;
        return 1;

    case 133:
        if (p1 < 1 || p1 > 3 || dctx->param_nid != NID_undef)
            return -2;
        dctx->rfc5114_param = p1;
        return 1;

    case 139:
        if (p1 <= 0 || dctx->rfc5114_param != 0)
            return -2;
        dctx->param_nid = p1;
        return 1;

    case 128:

        return 1;

    case 141:
        if (p1 == -2)
            return dctx->kdf_type;



        if (p1 != EVP_PKEY_DH_KDF_NONE && p1 != EVP_PKEY_DH_KDF_X9_42)

            return -2;
        dctx->kdf_type = p1;
        return 1;

    case 144:
        dctx->kdf_md = p2;
        return 1;

    case 132:
        *(const EVP_MD **)p2 = dctx->kdf_md;
        return 1;

    case 142:
        if (p1 <= 0)
            return -2;
        dctx->kdf_outlen = (size_t)p1;
        return 1;

    case 130:
        *(int *)p2 = dctx->kdf_outlen;
        return 1;

    case 140:
        OPENSSL_free(dctx->kdf_ukm);
        dctx->kdf_ukm = p2;
        if (p2)
            dctx->kdf_ukmlen = p1;
        else
            dctx->kdf_ukmlen = 0;
        return 1;

    case 129:
        *(unsigned char **)p2 = dctx->kdf_ukm;
        return dctx->kdf_ukmlen;

    case 143:
        ASN1_OBJECT_free(dctx->kdf_oid);
        dctx->kdf_oid = p2;
        return 1;

    case 131:
        *(ASN1_OBJECT **)p2 = dctx->kdf_oid;
        return 1;

    default:
        return -2;

    }
}
