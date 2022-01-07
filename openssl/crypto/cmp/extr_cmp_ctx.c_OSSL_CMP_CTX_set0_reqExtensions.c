
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_EXTENSIONS ;
struct TYPE_3__ {int * reqExtensions; int subjectAltNames; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int CMP_R_MULTIPLE_SAN_SOURCES ;
 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;
 int NID_subject_alt_name ;
 int X509_EXTENSION_free ;
 scalar_t__ X509v3_get_ext_by_NID (int *,int ,int) ;
 scalar_t__ sk_GENERAL_NAME_num (int ) ;
 int sk_X509_EXTENSION_pop_free (int *,int ) ;

int OSSL_CMP_CTX_set0_reqExtensions(OSSL_CMP_CTX *ctx, X509_EXTENSIONS *exts)
{
    if (ctx == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }

    if (sk_GENERAL_NAME_num(ctx->subjectAltNames) > 0 && exts != ((void*)0)
            && X509v3_get_ext_by_NID(exts, NID_subject_alt_name, -1) >= 0) {
        CMPerr(0, CMP_R_MULTIPLE_SAN_SOURCES);
        return 0;
    }
    sk_X509_EXTENSION_pop_free(ctx->reqExtensions, X509_EXTENSION_free);
    ctx->reqExtensions = exts;
    return 1;
}
