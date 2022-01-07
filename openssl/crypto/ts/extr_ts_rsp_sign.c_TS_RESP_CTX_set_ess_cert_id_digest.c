
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* ess_cert_id_digest; } ;
typedef TYPE_1__ TS_RESP_CTX ;
typedef int EVP_MD ;



int TS_RESP_CTX_set_ess_cert_id_digest(TS_RESP_CTX *ctx, const EVP_MD *md)
{
    ctx->ess_cert_id_digest = md;
    return 1;
}
