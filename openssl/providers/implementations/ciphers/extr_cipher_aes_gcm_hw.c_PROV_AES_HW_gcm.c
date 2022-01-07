
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_GCM_HW ;


 int const aes_gcm ;

const PROV_GCM_HW *PROV_AES_HW_gcm(size_t keybits)
{
    return &aes_gcm;
}
