
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int length; int data; } ;
struct TYPE_4__ {TYPE_2__* secretValue; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;
 int OPENSSL_cleanse (int ,int ) ;
 int ossl_cmp_asn1_octet_string_set1_bytes (TYPE_2__**,unsigned char const*,int const) ;

int OSSL_CMP_CTX_set1_secretValue(OSSL_CMP_CTX *ctx, const unsigned char *sec,
                                  const int len)
{
    if (ctx == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }
    if (ctx->secretValue != ((void*)0))
        OPENSSL_cleanse(ctx->secretValue->data, ctx->secretValue->length);
    return ossl_cmp_asn1_octet_string_set1_bytes(&ctx->secretValue, sec, len);
}
