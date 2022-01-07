
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCWCHAR ;
typedef int DWORD ;


 int const ARRAYSIZE (int **) ;
 int ** BCRYPT_CIPHER_ALGORITHMS ;

PCWCHAR kull_m_crypto_bcrypt_cipher_alg_to_str(const DWORD alg)
{
 PCWCHAR result = ((void*)0);
 if(alg && (alg <= ARRAYSIZE(BCRYPT_CIPHER_ALGORITHMS)))
  return BCRYPT_CIPHER_ALGORITHMS[alg - 1];
 return result;
}
