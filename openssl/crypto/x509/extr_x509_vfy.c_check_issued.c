
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chain; } ;
typedef TYPE_1__ X509_STORE_CTX ;
typedef int X509 ;


 int X509_V_ERR_PATH_LOOP ;
 int X509_V_OK ;
 int X509_check_issued (int *,int *) ;
 int X509_cmp (int *,int *) ;
 int cert_self_signed (int *) ;
 int sk_X509_num (int ) ;
 int * sk_X509_value (int ,int) ;

__attribute__((used)) static int check_issued(X509_STORE_CTX *ctx, X509 *x, X509 *issuer)
{
    int ret;
    if (x == issuer)
        return cert_self_signed(x);
    ret = X509_check_issued(issuer, x);
    if (ret == X509_V_OK) {
        int i;
        X509 *ch;

        if (cert_self_signed(x) && sk_X509_num(ctx->chain) == 1)
            return 1;
        for (i = 0; i < sk_X509_num(ctx->chain); i++) {
            ch = sk_X509_value(ctx->chain, i);
            if (ch == issuer || !X509_cmp(ch, issuer)) {
                ret = X509_V_ERR_PATH_LOOP;
                break;
            }
        }
    }

    return (ret == X509_V_OK);
}
