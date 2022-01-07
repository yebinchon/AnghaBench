
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DES_cblock ;
typedef int DES_LONG ;


 int DES_quad_cksum (scalar_t__,int *,long,int,int *) ;
 int TEST_cs_eq (int ,int) ;
 scalar_t__ cbc_data ;
 scalar_t__ cbc_iv ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int test_des_quad_cksum(void)
{
    DES_LONG cs, lqret[4];

    cs = DES_quad_cksum(cbc_data, (DES_cblock *)lqret,
                        (long)strlen((char *)cbc_data), 2,
                        (DES_cblock *)cbc_iv);
    if (!TEST_cs_eq(cs, 0x70d7a63aL))
        return 0;
    if (!TEST_cs_eq(lqret[0], 0x327eba8dL))
        return 0;
    if (!TEST_cs_eq(lqret[1], 0x201a49ccL))
        return 0;
    if (!TEST_cs_eq(lqret[2], 0x70d7a63aL))
        return 0;
    if (!TEST_cs_eq(lqret[3], 0x501c2c26L))
        return 0;
    return 1;
}
