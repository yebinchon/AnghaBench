
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const PROV_CIPHER_HW ;


 int chacha20_hw ;

const PROV_CIPHER_HW *PROV_CIPHER_HW_chacha20(size_t keybits)
{
    return (PROV_CIPHER_HW *)&chacha20_hw;
}
