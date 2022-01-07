
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int iplen; scalar_t__ ip; int emaillen; scalar_t__ email; scalar_t__ hosts; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;
struct TYPE_7__ {int * cert; TYPE_1__* param; } ;
typedef TYPE_2__ X509_STORE_CTX ;
typedef int X509 ;


 int X509_V_ERR_EMAIL_MISMATCH ;
 int X509_V_ERR_HOSTNAME_MISMATCH ;
 int X509_V_ERR_IP_ADDRESS_MISMATCH ;
 scalar_t__ X509_check_email (int *,scalar_t__,int ,int ) ;
 scalar_t__ X509_check_ip (int *,scalar_t__,int ,int ) ;
 scalar_t__ check_hosts (int *,TYPE_1__*) ;
 int check_id_error (TYPE_2__*,int ) ;

__attribute__((used)) static int check_id(X509_STORE_CTX *ctx)
{
    X509_VERIFY_PARAM *vpm = ctx->param;
    X509 *x = ctx->cert;
    if (vpm->hosts && check_hosts(x, vpm) <= 0) {
        if (!check_id_error(ctx, X509_V_ERR_HOSTNAME_MISMATCH))
            return 0;
    }
    if (vpm->email && X509_check_email(x, vpm->email, vpm->emaillen, 0) <= 0) {
        if (!check_id_error(ctx, X509_V_ERR_EMAIL_MISMATCH))
            return 0;
    }
    if (vpm->ip && X509_check_ip(x, vpm->ip, vpm->iplen, 0) <= 0) {
        if (!check_id_error(ctx, X509_V_ERR_IP_ADDRESS_MISMATCH))
            return 0;
    }
    return 1;
}
