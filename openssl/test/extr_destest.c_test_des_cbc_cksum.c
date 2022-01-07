
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DES_key_schedule ;
typedef int DES_LONG ;


 int DES_cbc_cksum (scalar_t__,unsigned char**,int ,int *,int *) ;
 int DES_set_key_checked (int *,int *) ;
 int TEST_cs_eq (int ,int ) ;
 int TEST_mem_eq (unsigned char*,int,int ,int) ;
 int cbc_cksum_data ;
 int cbc_cksum_ret ;
 scalar_t__ cbc_data ;
 int cbc_iv ;
 int cbc_key ;
 int strlen (char*) ;

__attribute__((used)) static int test_des_cbc_cksum(void)
{
    DES_LONG cs;
    DES_key_schedule ks;
    unsigned char cret[8];

    DES_set_key_checked(&cbc_key, &ks);
    cs = DES_cbc_cksum(cbc_data, &cret, strlen((char *)cbc_data), &ks,
                       &cbc_iv);
    if (!TEST_cs_eq(cs, cbc_cksum_ret))
        return 0;
    return TEST_mem_eq(cret, 8, cbc_cksum_data, 8);
}
