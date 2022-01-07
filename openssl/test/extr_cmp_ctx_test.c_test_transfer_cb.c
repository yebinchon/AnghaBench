
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_CMP_MSG ;
typedef int OSSL_CMP_CTX ;



__attribute__((used)) static int test_transfer_cb(OSSL_CMP_CTX *ctx, const OSSL_CMP_MSG *req,
                            OSSL_CMP_MSG **res)
{
    return 0;
}
