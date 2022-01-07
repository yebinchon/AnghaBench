
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PVOID ;
typedef int PKULL_M_DPAPI_MASTERKEY ;
typedef int PCWSTR ;
typedef int LPCVOID ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CALG_SHA1 ;
 int FALSE ;
 int SHA_DIGEST_LENGTH ;
 scalar_t__ kull_m_crypto_hmac (int ,int ,int,int ,int,int *,int) ;
 int kull_m_dpapi_unprotect_masterkey_with_shaDerivedkey (int ,int *,int,int *,int*) ;
 scalar_t__ wcslen (int ) ;

BOOL kull_m_dpapi_unprotect_masterkey_with_userHash(PKULL_M_DPAPI_MASTERKEY masterkey, LPCVOID userHash, DWORD userHashLen, PCWSTR sid, PVOID *output, DWORD *outputLen)
{
 BOOL status = FALSE;
 BYTE sha1DerivedKey[SHA_DIGEST_LENGTH];

 if(kull_m_crypto_hmac(CALG_SHA1, userHash, userHashLen, sid, (DWORD) (wcslen(sid) + 1) * sizeof(wchar_t), sha1DerivedKey, SHA_DIGEST_LENGTH))
  status = kull_m_dpapi_unprotect_masterkey_with_shaDerivedkey(masterkey, sha1DerivedKey, SHA_DIGEST_LENGTH, output, outputLen);
 return status;
}
