
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int data; } ;
struct TYPE_12__ {TYPE_2__* pmeth; } ;
struct TYPE_9__ {TYPE_8__ ktmp; } ;
struct TYPE_11__ {int type; int ctx; TYPE_1__ raw_data; } ;
struct TYPE_10__ {int pkey_id; } ;
typedef TYPE_3__ MAC_PKEY_CTX ;
typedef TYPE_4__ EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MAC_CTX ;
typedef int ASN1_OCTET_STRING ;


 int * ASN1_OCTET_STRING_dup (TYPE_8__*) ;
 int * EVP_MAC_CTX_dup (int ) ;
 int EVP_MAC_CTX_mac (int ) ;
 int EVP_MAC_up_ref (int ) ;
 TYPE_3__* EVP_PKEY_CTX_get_data (TYPE_4__*) ;
 int EVP_PKEY_assign (int *,int,int *) ;



__attribute__((used)) static int pkey_mac_keygen(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    MAC_PKEY_CTX *hctx = EVP_PKEY_CTX_get_data(ctx);
    int nid = ctx->pmeth->pkey_id;

    switch (hctx->type) {
    case 128:
        {
            ASN1_OCTET_STRING *hkey = ((void*)0);

            if (!hctx->raw_data.ktmp.data)
                return 0;
            hkey = ASN1_OCTET_STRING_dup(&hctx->raw_data.ktmp);
            if (!hkey)
                return 0;
            EVP_PKEY_assign(pkey, nid, hkey);
        }
        break;
    case 129:
        {
            EVP_MAC_CTX *cmkey = EVP_MAC_CTX_dup(hctx->ctx);

            if (cmkey == ((void*)0))
                return 0;
            if (!EVP_MAC_up_ref(EVP_MAC_CTX_mac(hctx->ctx)))
                return 0;
            EVP_PKEY_assign(pkey, nid, cmkey);
        }
        break;
    default:

        return 0;
    }

    return 1;
}
