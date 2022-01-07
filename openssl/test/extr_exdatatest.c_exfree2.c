
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MYOBJ_EX_DATA ;
typedef int CRYPTO_EX_DATA ;


 int * CRYPTO_get_ex_data (int *,int) ;
 int CRYPTO_set_ex_data (int *,int,int *) ;
 int OPENSSL_free (int *) ;
 int TEST_long_eq (long,int ) ;
 int TEST_ptr_eq (void*,int ) ;
 int TEST_true (int) ;
 scalar_t__ gbl_result ;
 int saved_argl ;
 int saved_argp ;
 int saved_idx2 ;
 int saved_idx3 ;

__attribute__((used)) static void exfree2(void *parent, void *ptr, CRYPTO_EX_DATA *ad,
            int idx, long argl, void *argp)
{
    MYOBJ_EX_DATA *ex_data = CRYPTO_get_ex_data(ad, idx);

    if (!TEST_true(idx == saved_idx2 || idx == saved_idx3)
        || !TEST_long_eq(argl, saved_argl)
        || !TEST_ptr_eq(argp, saved_argp)
        || !TEST_true(CRYPTO_set_ex_data(ad, idx, ((void*)0))))
        gbl_result = 0;
    OPENSSL_free(ex_data);
}
