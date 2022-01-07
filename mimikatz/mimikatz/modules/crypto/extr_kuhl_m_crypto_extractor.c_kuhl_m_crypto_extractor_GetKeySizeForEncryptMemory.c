
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BYTE ;



DWORD kuhl_m_crypto_extractor_GetKeySizeForEncryptMemory(DWORD size)
{
  DWORD v1;
  v1 = size - 20;
  if (((BYTE) size - 20) & 0xf)
    v1 += 16 - (((BYTE) size - 20) & 0xf);
  return v1 + 20;
}
