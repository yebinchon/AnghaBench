
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_secure_malloc_done () ;
 int CRYPTO_secure_malloc_init (int,int) ;
 int OPENSSL_secure_free (unsigned char*) ;
 unsigned char* OPENSSL_secure_malloc (int const) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_true (int ) ;
 int TEST_uchar_eq (unsigned char,int ) ;

__attribute__((used)) static int test_sec_mem_clear(void)
{
    return 1;

}
