
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* iobuf; int mem; } ;
typedef TYPE_1__ OCSP_REQ_CTX ;


 int BIO_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

void OCSP_REQ_CTX_free(OCSP_REQ_CTX *rctx)
{
    if (!rctx)
        return;
    BIO_free(rctx->mem);
    OPENSSL_free(rctx->iobuf);
    OPENSSL_free(rctx);
}
