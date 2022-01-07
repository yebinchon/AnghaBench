
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CIPHER_HW ;


 int const rc4_hw ;

const PROV_CIPHER_HW *PROV_CIPHER_HW_rc4(size_t keybits)
{
    return &rc4_hw;
}
