
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCWCHAR ;
typedef int DWORD ;


 int const ARRAYSIZE (int **) ;
 int ** BCRYPT_INTERFACES ;

PCWCHAR kull_m_crypto_bcrypt_interface_to_str(const DWORD interf)
{
 PCWCHAR result = ((void*)0);
 if(interf && (interf <= ARRAYSIZE(BCRYPT_INTERFACES)))
  return BCRYPT_INTERFACES[interf - 1];
 return result;
}
