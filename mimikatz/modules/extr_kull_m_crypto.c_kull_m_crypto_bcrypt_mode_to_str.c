
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCWCHAR ;
typedef size_t DWORD ;


 size_t const ARRAYSIZE (int **) ;
 int ** BCRYPT_MODE_DESCR ;

PCWCHAR kull_m_crypto_bcrypt_mode_to_str(const DWORD keyMode)
{
 PCWCHAR result = ((void*)0);
 if(keyMode < ARRAYSIZE(BCRYPT_MODE_DESCR))
  return BCRYPT_MODE_DESCR[keyMode];
 return result;
}
