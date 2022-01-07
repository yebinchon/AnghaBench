
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfb_cipher32 ;
 int cfb_test (int,int ) ;

__attribute__((used)) static int test_des_cfb32(void)
{
    return cfb_test(32, cfb_cipher32);
}
