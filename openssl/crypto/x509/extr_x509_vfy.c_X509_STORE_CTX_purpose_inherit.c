
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* param; } ;
typedef TYPE_2__ X509_STORE_CTX ;
struct TYPE_8__ {int trust; } ;
typedef TYPE_3__ X509_PURPOSE ;
struct TYPE_6__ {int purpose; int trust; } ;


 int X509_F_X509_STORE_CTX_PURPOSE_INHERIT ;
 TYPE_3__* X509_PURPOSE_get0 (int) ;
 int X509_PURPOSE_get_by_id (int) ;
 int X509_R_UNKNOWN_PURPOSE_ID ;
 int X509_R_UNKNOWN_TRUST_ID ;
 int X509_TRUST_DEFAULT ;
 int X509_TRUST_get_by_id (int) ;
 int X509err (int ,int ) ;

int X509_STORE_CTX_purpose_inherit(X509_STORE_CTX *ctx, int def_purpose,
                                   int purpose, int trust)
{
    int idx;

    if (purpose == 0)
        purpose = def_purpose;

    if (purpose != 0) {
        X509_PURPOSE *ptmp;
        idx = X509_PURPOSE_get_by_id(purpose);
        if (idx == -1) {
            X509err(X509_F_X509_STORE_CTX_PURPOSE_INHERIT,
                    X509_R_UNKNOWN_PURPOSE_ID);
            return 0;
        }
        ptmp = X509_PURPOSE_get0(idx);
        if (ptmp->trust == X509_TRUST_DEFAULT) {
            idx = X509_PURPOSE_get_by_id(def_purpose);





            if (idx == -1) {
                X509err(X509_F_X509_STORE_CTX_PURPOSE_INHERIT,
                        X509_R_UNKNOWN_PURPOSE_ID);
                return 0;
            }
            ptmp = X509_PURPOSE_get0(idx);
        }

        if (!trust)
            trust = ptmp->trust;
    }
    if (trust) {
        idx = X509_TRUST_get_by_id(trust);
        if (idx == -1) {
            X509err(X509_F_X509_STORE_CTX_PURPOSE_INHERIT,
                    X509_R_UNKNOWN_TRUST_ID);
            return 0;
        }
    }

    if (purpose && !ctx->param->purpose)
        ctx->param->purpose = purpose;
    if (trust && !ctx->param->trust)
        ctx->param->trust = trust;
    return 1;
}
