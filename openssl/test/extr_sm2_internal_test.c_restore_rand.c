
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (int *) ;
 int RAND_set_rand_method (int ) ;
 int TEST_true (int ) ;
 int * fake_rand_bytes ;
 scalar_t__ fake_rand_bytes_offset ;
 int saved_rand ;

__attribute__((used)) static int restore_rand(void)
{
    OPENSSL_free(fake_rand_bytes);
    fake_rand_bytes = ((void*)0);
    fake_rand_bytes_offset = 0;
    if (!TEST_true(RAND_set_rand_method(saved_rand)))
        return 0;
    return 1;
}
