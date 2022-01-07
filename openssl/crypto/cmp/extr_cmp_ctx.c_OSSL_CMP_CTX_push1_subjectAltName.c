
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * subjectAltNames; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;
typedef int GENERAL_NAME ;


 int CMP_R_MULTIPLE_SAN_SOURCES ;
 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;
 int * GENERAL_NAME_dup (int const*) ;
 int GENERAL_NAME_free (int *) ;
 int OSSL_CMP_CTX_reqExtensions_have_SAN (TYPE_1__*) ;
 int * sk_GENERAL_NAME_new_null () ;
 int sk_GENERAL_NAME_push (int *,int *) ;

int OSSL_CMP_CTX_push1_subjectAltName(OSSL_CMP_CTX *ctx,
                                      const GENERAL_NAME *name)
{
    GENERAL_NAME *name_dup;

    if (ctx == ((void*)0) || name == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }

    if (OSSL_CMP_CTX_reqExtensions_have_SAN(ctx) == 1) {
        CMPerr(0, CMP_R_MULTIPLE_SAN_SOURCES);
        return 0;
    }

    if (ctx->subjectAltNames == ((void*)0)
            && (ctx->subjectAltNames = sk_GENERAL_NAME_new_null()) == ((void*)0))
        return 0;
    if ((name_dup = GENERAL_NAME_dup(name)) == ((void*)0))
        return 0;
    if (!sk_GENERAL_NAME_push(ctx->subjectAltNames, name_dup)) {
        GENERAL_NAME_free(name_dup);
        return 0;
    }
    return 1;
}
