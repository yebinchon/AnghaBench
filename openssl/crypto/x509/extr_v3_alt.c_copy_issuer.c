
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_EXTENSION ;
struct TYPE_3__ {scalar_t__ flags; int issuer_cert; } ;
typedef TYPE_1__ X509V3_CTX ;
typedef int GENERAL_NAMES ;
typedef int GENERAL_NAME ;


 scalar_t__ CTX_TEST ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_subject_alt_name ;
 int * X509V3_EXT_d2i (int *) ;
 int X509V3_F_COPY_ISSUER ;
 int X509V3_R_ISSUER_DECODE_ERROR ;
 int X509V3_R_NO_ISSUER_DETAILS ;
 int X509V3err (int ,int ) ;
 int * X509_get_ext (int ,int) ;
 int X509_get_ext_by_NID (int ,int ,int) ;
 int sk_GENERAL_NAME_free (int *) ;
 int sk_GENERAL_NAME_num (int *) ;
 int sk_GENERAL_NAME_push (int *,int *) ;
 int sk_GENERAL_NAME_reserve (int *,int) ;
 int * sk_GENERAL_NAME_value (int *,int) ;

__attribute__((used)) static int copy_issuer(X509V3_CTX *ctx, GENERAL_NAMES *gens)
{
    GENERAL_NAMES *ialt;
    GENERAL_NAME *gen;
    X509_EXTENSION *ext;
    int i, num;

    if (ctx && (ctx->flags == CTX_TEST))
        return 1;
    if (!ctx || !ctx->issuer_cert) {
        X509V3err(X509V3_F_COPY_ISSUER, X509V3_R_NO_ISSUER_DETAILS);
        goto err;
    }
    i = X509_get_ext_by_NID(ctx->issuer_cert, NID_subject_alt_name, -1);
    if (i < 0)
        return 1;
    if ((ext = X509_get_ext(ctx->issuer_cert, i)) == ((void*)0)
        || (ialt = X509V3_EXT_d2i(ext)) == ((void*)0)) {
        X509V3err(X509V3_F_COPY_ISSUER, X509V3_R_ISSUER_DECODE_ERROR);
        goto err;
    }

    num = sk_GENERAL_NAME_num(ialt);
    if (!sk_GENERAL_NAME_reserve(gens, num)) {
        X509V3err(X509V3_F_COPY_ISSUER, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    for (i = 0; i < num; i++) {
        gen = sk_GENERAL_NAME_value(ialt, i);
        sk_GENERAL_NAME_push(gens, gen);
    }
    sk_GENERAL_NAME_free(ialt);

    return 1;

 err:
    return 0;

}
