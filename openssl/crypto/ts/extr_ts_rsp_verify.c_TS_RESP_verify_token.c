
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_VERIFY_CTX ;
typedef int TS_TST_INFO ;
typedef int PKCS7 ;


 int * PKCS7_to_TS_TST_INFO (int *) ;
 int TS_TST_INFO_free (int *) ;
 int int_ts_RESP_verify_token (int *,int *,int *) ;

int TS_RESP_verify_token(TS_VERIFY_CTX *ctx, PKCS7 *token)
{
    TS_TST_INFO *tst_info = PKCS7_to_TS_TST_INFO(token);
    int ret = 0;
    if (tst_info) {
        ret = int_ts_RESP_verify_token(ctx, token, tst_info);
        TS_TST_INFO_free(tst_info);
    }
    return ret;
}
