
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCWCHAR ;
typedef int DWORD ;


 int const ARRAYSIZE (int **) ;
 int ** BCRYPT_ASYM_ALGORITHMS ;

PCWCHAR kull_m_crypto_bcrypt_asym_alg_to_str(const DWORD alg)
{
 PCWCHAR result = ((void*)0);
 if(alg && (alg <= ARRAYSIZE(BCRYPT_ASYM_ALGORITHMS)))
  return BCRYPT_ASYM_ALGORITHMS[alg - 1];
 return result;
}
