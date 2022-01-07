
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int iobuflen; int * mem; int * iobuf; int * io; int max_resp_len; int state; } ;
typedef TYPE_1__ OCSP_REQ_CTX ;
typedef int BIO ;


 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int OCSP_MAX_LINE_LEN ;
 int OCSP_MAX_RESP_LENGTH ;
 int OCSP_REQ_CTX_free (TYPE_1__*) ;
 int OHS_ERROR ;
 int * OPENSSL_malloc (int) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

OCSP_REQ_CTX *OCSP_REQ_CTX_new(BIO *io, int maxline)
{
    OCSP_REQ_CTX *rctx = OPENSSL_zalloc(sizeof(*rctx));

    if (rctx == ((void*)0))
        return ((void*)0);
    rctx->state = OHS_ERROR;
    rctx->max_resp_len = OCSP_MAX_RESP_LENGTH;
    rctx->mem = BIO_new(BIO_s_mem());
    rctx->io = io;
    if (maxline > 0)
        rctx->iobuflen = maxline;
    else
        rctx->iobuflen = OCSP_MAX_LINE_LEN;
    rctx->iobuf = OPENSSL_malloc(rctx->iobuflen);
    if (rctx->iobuf == ((void*)0) || rctx->mem == ((void*)0)) {
        OCSP_REQ_CTX_free(rctx);
        return ((void*)0);
    }
    return rctx;
}
