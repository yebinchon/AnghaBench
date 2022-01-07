
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfb_cipher8 ;
 int cfb_test (int,int ) ;

__attribute__((used)) static int test_des_cfb8(void)
{
    return cfb_test(8, cfb_cipher8);
}
