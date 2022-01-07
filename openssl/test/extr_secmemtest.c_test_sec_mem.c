
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_secure_allocated (char*) ;
 int CRYPTO_secure_malloc_done () ;
 int CRYPTO_secure_malloc_init (int,int) ;
 int CRYPTO_secure_malloc_initialized () ;
 int CRYPTO_secure_used () ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (int) ;
 int OPENSSL_secure_clear_free (char*,int) ;
 int OPENSSL_secure_free (char*) ;
 char* OPENSSL_secure_malloc (size_t) ;
 int TEST_false (int) ;
 int TEST_info (char*) ;
 int TEST_ptr (char*) ;
 int TEST_ptr_null (char*) ;
 int TEST_size_t_eq (int ,int) ;
 scalar_t__ TEST_true (int) ;

__attribute__((used)) static int test_sec_mem(void)
{
    TEST_info("Secure memory is *not* implemented.");

    return TEST_false(CRYPTO_secure_malloc_init(4096, 32));

}
