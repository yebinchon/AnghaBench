
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const PROV_CIPHER_HW ;


 int chacha20poly1305_hw ;

const PROV_CIPHER_HW *PROV_CIPHER_HW_chacha20_poly1305(size_t keybits)
{
    return (PROV_CIPHER_HW *)&chacha20poly1305_hw;
}
