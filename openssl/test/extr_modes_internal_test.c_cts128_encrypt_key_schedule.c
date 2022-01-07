
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AES_KEY ;


 int AES_set_encrypt_key (int ,int,int *) ;
 int cts128_test_key ;

__attribute__((used)) static AES_KEY *cts128_encrypt_key_schedule(void)
{
    static int init_key = 1;
    static AES_KEY ks;

    if (init_key) {
        AES_set_encrypt_key(cts128_test_key, 128, &ks);
        init_key = 0;
    }
    return &ks;
}
