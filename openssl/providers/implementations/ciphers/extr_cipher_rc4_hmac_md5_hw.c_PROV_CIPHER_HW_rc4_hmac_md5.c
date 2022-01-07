
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const PROV_CIPHER_HW ;


 int rc4_hmac_md5_hw ;

const PROV_CIPHER_HW *PROV_CIPHER_HW_rc4_hmac_md5(size_t keybits)
{
    return (PROV_CIPHER_HW *)&rc4_hmac_md5_hw;
}
