
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extension_cb; int time_cb; int serial_cb; int signer_md; } ;
typedef TYPE_1__ TS_RESP_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_sha256 () ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int TS_F_TS_RESP_CTX_NEW ;
 int TSerr (int ,int ) ;
 int def_extension_cb ;
 int def_serial_cb ;
 int def_time_cb ;

TS_RESP_CTX *TS_RESP_CTX_new(void)
{
    TS_RESP_CTX *ctx;

    if ((ctx = OPENSSL_zalloc(sizeof(*ctx))) == ((void*)0)) {
        TSerr(TS_F_TS_RESP_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ctx->signer_md = EVP_sha256();

    ctx->serial_cb = def_serial_cb;
    ctx->time_cb = def_time_cb;
    ctx->extension_cb = def_extension_cb;

    return ctx;
}
