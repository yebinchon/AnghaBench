
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OCSP_REQ_CTX ;
typedef int OCSP_REQUEST ;
typedef int BIO ;


 int OCSP_REQ_CTX_free (int *) ;
 int OCSP_REQ_CTX_http (int *,char*,char const*) ;
 int * OCSP_REQ_CTX_new (int *,int) ;
 int OCSP_REQ_CTX_set1_req (int *,int *) ;

OCSP_REQ_CTX *OCSP_sendreq_new(BIO *io, const char *path, OCSP_REQUEST *req,
                               int maxline)
{

    OCSP_REQ_CTX *rctx = ((void*)0);
    rctx = OCSP_REQ_CTX_new(io, maxline);
    if (rctx == ((void*)0))
        return ((void*)0);

    if (!OCSP_REQ_CTX_http(rctx, "POST", path))
        goto err;

    if (req && !OCSP_REQ_CTX_set1_req(rctx, req))
        goto err;

    return rctx;

 err:
    OCSP_REQ_CTX_free(rctx);
    return ((void*)0);
}
