
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * statusString; } ;
typedef int OSSL_CMP_PKIFREETEXT ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int ASN1_UTF8STRING_free ;
 int ossl_assert (int ) ;
 int sk_ASN1_UTF8STRING_pop_free (int *,int ) ;

int ossl_cmp_ctx_set0_statusString(OSSL_CMP_CTX *ctx,
                                   OSSL_CMP_PKIFREETEXT *text)
{
    if (!ossl_assert(ctx != ((void*)0)))
        return 0;
    sk_ASN1_UTF8STRING_pop_free(ctx->statusString, ASN1_UTF8STRING_free);
    ctx->statusString = text;
    return 1;
}
