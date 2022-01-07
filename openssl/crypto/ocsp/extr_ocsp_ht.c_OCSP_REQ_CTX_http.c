
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int mem; } ;
typedef TYPE_1__ OCSP_REQ_CTX ;


 scalar_t__ BIO_printf (int ,char const*,char const*,char const*) ;
 int OHS_HTTP_HEADER ;

int OCSP_REQ_CTX_http(OCSP_REQ_CTX *rctx, const char *op, const char *path)
{
    static const char http_hdr[] = "%s %s HTTP/1.0\r\n";

    if (path == ((void*)0))
        path = "/";

    if (BIO_printf(rctx->mem, http_hdr, op, path) <= 0)
        return 0;
    rctx->state = OHS_HTTP_HEADER;
    return 1;
}
