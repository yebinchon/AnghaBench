
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int mem; } ;
typedef TYPE_1__ OCSP_REQ_CTX ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_item_i2d (int *,int *,int const*) ;
 scalar_t__ ASN1_item_i2d_bio (int const*,int ,int *) ;
 scalar_t__ BIO_printf (int ,char const*,int) ;
 int OHS_ASN1_WRITE_INIT ;

int OCSP_REQ_CTX_i2d(OCSP_REQ_CTX *rctx, const ASN1_ITEM *it, ASN1_VALUE *val)
{
    static const char req_hdr[] =
        "Content-Type: application/ocsp-request\r\n"
        "Content-Length: %d\r\n\r\n";
    int reqlen = ASN1_item_i2d(val, ((void*)0), it);
    if (BIO_printf(rctx->mem, req_hdr, reqlen) <= 0)
        return 0;
    if (ASN1_item_i2d_bio(it, rctx->mem, val) <= 0)
        return 0;
    rctx->state = OHS_ASN1_WRITE_INIT;
    return 1;
}
