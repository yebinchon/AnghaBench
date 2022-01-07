
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bufsize; int state; int asn1_tag; int asn1_class; int * buf; } ;
typedef TYPE_1__ BIO_ASN1_BUF_CTX ;


 int ASN1_F_ASN1_BIO_INIT ;
 int ASN1_STATE_START ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_malloc (int) ;
 int V_ASN1_OCTET_STRING ;
 int V_ASN1_UNIVERSAL ;

__attribute__((used)) static int asn1_bio_init(BIO_ASN1_BUF_CTX *ctx, int size)
{
    if ((ctx->buf = OPENSSL_malloc(size)) == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_BIO_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ctx->bufsize = size;
    ctx->asn1_class = V_ASN1_UNIVERSAL;
    ctx->asn1_tag = V_ASN1_OCTET_STRING;
    ctx->state = ASN1_STATE_START;
    return 1;
}
