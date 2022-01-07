
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CIPHER_HW ;


 int const desx_cbc ;

const PROV_CIPHER_HW *PROV_CIPHER_HW_tdes_desx_cbc(void)
{
    return &desx_cbc;
}
