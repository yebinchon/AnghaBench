
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRYPTO_EX_DATA ;


 int TEST_int_eq (int,int ) ;
 int TEST_long_eq (long,int ) ;
 int TEST_ptr_eq (void*,int ) ;
 int TEST_ptr_null (void*) ;
 scalar_t__ gbl_result ;
 int saved_argl ;
 int saved_argp ;
 int saved_idx ;

__attribute__((used)) static void exnew(void *parent, void *ptr, CRYPTO_EX_DATA *ad,
          int idx, long argl, void *argp)
{
    if (!TEST_int_eq(idx, saved_idx)
        || !TEST_long_eq(argl, saved_argl)
        || !TEST_ptr_eq(argp, saved_argp)
        || !TEST_ptr_null(ptr))
        gbl_result = 0;
}
