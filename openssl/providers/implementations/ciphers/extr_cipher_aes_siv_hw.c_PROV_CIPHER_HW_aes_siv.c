
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CIPHER_HW_AES_SIV ;


 int const aes_siv_hw ;

const PROV_CIPHER_HW_AES_SIV *PROV_CIPHER_HW_aes_siv(size_t keybits)
{
    return &aes_siv_hw;
}
