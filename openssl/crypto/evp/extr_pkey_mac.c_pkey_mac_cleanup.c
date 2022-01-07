
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; int data; } ;
struct TYPE_7__ {TYPE_1__ ktmp; } ;
struct TYPE_8__ {int type; int ctx; TYPE_2__ raw_data; } ;
typedef TYPE_3__ MAC_PKEY_CTX ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MAC ;


 int EVP_MAC_CTX_free (int ) ;
 int * EVP_MAC_CTX_mac (int ) ;
 int EVP_MAC_free (int *) ;
 TYPE_3__* EVP_PKEY_CTX_get_data (int *) ;
 int EVP_PKEY_CTX_set_data (int *,int *) ;

 int OPENSSL_clear_free (int ,int ) ;
 int OPENSSL_free (TYPE_3__*) ;

__attribute__((used)) static void pkey_mac_cleanup(EVP_PKEY_CTX *ctx)
{





    MAC_PKEY_CTX *hctx = ctx == ((void*)0) ? ((void*)0) : EVP_PKEY_CTX_get_data(ctx);

    if (hctx != ((void*)0)) {
        EVP_MAC *mac = EVP_MAC_CTX_mac(hctx->ctx);

        switch (hctx->type) {
        case 128:
            OPENSSL_clear_free(hctx->raw_data.ktmp.data,
                               hctx->raw_data.ktmp.length);
            break;
        }
        EVP_MAC_CTX_free(hctx->ctx);
        EVP_MAC_free(mac);
        OPENSSL_free(hctx);
        EVP_PKEY_CTX_set_data(ctx, ((void*)0));
    }
}
