
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DES_crypt (char*,char*) ;
 int TEST_ptr_null (int ) ;
 int TEST_str_eq (char*,int ) ;

__attribute__((used)) static int test_des_crypt(void)
{
    if (!TEST_str_eq("efGnQx2725bI2", DES_crypt("testing", "ef")))
        return 0;
    if (!TEST_str_eq("yA1Rp/1hZXIJk", DES_crypt("bca76;23", "yA")))
        return 0;

    if (!TEST_ptr_null(DES_crypt("testing", "y\202")))
        return 0;
    if (!TEST_ptr_null(DES_crypt("testing", "\0A")))
        return 0;
    if (!TEST_ptr_null(DES_crypt("testing", "A")))
        return 0;
    return 1;
}
