
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCWCHAR ;
typedef int DWORD ;


 int const ARRAYSIZE (int **) ;
 int ** KP_MODE_DESCR ;

PCWCHAR kull_m_crypto_kp_mode_to_str(const DWORD keyMode)
{
 PCWCHAR result = ((void*)0);
 if(keyMode && (keyMode <= ARRAYSIZE(KP_MODE_DESCR)))
  return KP_MODE_DESCR[keyMode - 1];
 return result;
}
