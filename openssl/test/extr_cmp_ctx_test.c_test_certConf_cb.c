
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int OSSL_CMP_CTX ;



__attribute__((used)) static int test_certConf_cb(OSSL_CMP_CTX *ctx, X509 *cert, int fail_info,
                            const char **txt)
{
    return 0;
}
