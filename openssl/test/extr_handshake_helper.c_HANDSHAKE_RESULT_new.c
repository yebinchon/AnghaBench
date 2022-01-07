
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDSHAKE_RESULT ;


 int * OPENSSL_zalloc (int) ;
 int TEST_ptr (int *) ;

HANDSHAKE_RESULT *HANDSHAKE_RESULT_new(void)
{
    HANDSHAKE_RESULT *ret;

    TEST_ptr(ret = OPENSSL_zalloc(sizeof(*ret)));
    return ret;
}
