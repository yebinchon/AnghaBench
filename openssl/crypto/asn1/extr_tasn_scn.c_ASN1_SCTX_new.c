
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* scan_cb ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ASN1_SCTX ;


 int ASN1_F_ASN1_SCTX_NEW ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;

ASN1_SCTX *ASN1_SCTX_new(int (*scan_cb) (ASN1_SCTX *ctx))
{
    ASN1_SCTX *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_SCTX_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->scan_cb = scan_cb;
    return ret;
}
