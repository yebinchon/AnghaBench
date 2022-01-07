
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CCM_HW ;


 int const aes_ccm ;

const PROV_CCM_HW *PROV_AES_HW_ccm(size_t keybits)
{
    return &aes_ccm;
}
