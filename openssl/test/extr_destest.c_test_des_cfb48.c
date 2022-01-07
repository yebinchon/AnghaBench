
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfb_cipher48 ;
 int cfb_test (int,int ) ;

__attribute__((used)) static int test_des_cfb48(void)
{
    return cfb_test(48, cfb_cipher48);
}
