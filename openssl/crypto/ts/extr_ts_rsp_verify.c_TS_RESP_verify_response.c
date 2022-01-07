
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * tst_info; int * token; } ;
typedef int TS_VERIFY_CTX ;
typedef int TS_TST_INFO ;
typedef TYPE_1__ TS_RESP ;
typedef int PKCS7 ;


 int int_ts_RESP_verify_token (int *,int *,int *) ;
 int ts_check_status_info (TYPE_1__*) ;

int TS_RESP_verify_response(TS_VERIFY_CTX *ctx, TS_RESP *response)
{
    PKCS7 *token = response->token;
    TS_TST_INFO *tst_info = response->tst_info;
    int ret = 0;

    if (!ts_check_status_info(response))
        goto err;
    if (!int_ts_RESP_verify_token(ctx, token, tst_info))
        goto err;
    ret = 1;

 err:
    return ret;
}
