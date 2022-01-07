
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ pbData; scalar_t__ cbData; int member_1; scalar_t__ member_0; } ;
struct TYPE_9__ {scalar_t__ dwDescriptionLen; scalar_t__ szDescription; } ;
typedef TYPE_1__* PKULL_M_DPAPI_BLOB ;
typedef int PBYTE ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPVOID ;
typedef int LPCWSTR ;
typedef scalar_t__ LPCVOID ;
typedef scalar_t__ DWORD ;
typedef TYPE_2__ DATA_BLOB ;
typedef int CRYPTPROTECT_PROMPTSTRUCT ;
typedef int BOOL ;


 int CryptUnprotectData (TYPE_2__*,scalar_t__*,TYPE_2__*,int *,int *,scalar_t__,TYPE_2__*) ;
 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int LocalFree (scalar_t__) ;
 int RtlCopyMemory (scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_1__* kull_m_dpapi_blob_create (scalar_t__) ;
 int kull_m_dpapi_blob_delete (TYPE_1__*) ;
 int kull_m_dpapi_unprotect_blob (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__*,scalar_t__*) ;

BOOL kull_m_dpapi_unprotect_raw_or_blob(LPCVOID pDataIn, DWORD dwDataInLen, LPWSTR *ppszDataDescr, LPCVOID pOptionalEntropy, DWORD dwOptionalEntropyLen, CRYPTPROTECT_PROMPTSTRUCT* pPromptStruct, DWORD dwFlags, LPVOID *pDataOut, DWORD *dwDataOutLen, LPCVOID pMasterKey, DWORD dwMasterKeyLen, LPCWSTR pPassword)
{
 BOOL status = FALSE;
 DATA_BLOB dataIn = {dwDataInLen, (PBYTE) pDataIn}, dataEntropy = {dwOptionalEntropyLen, (PBYTE) pOptionalEntropy}, dataOut;
 PKULL_M_DPAPI_BLOB blob;

 if(pMasterKey && dwMasterKeyLen)
 {
  if(blob = kull_m_dpapi_blob_create(pDataIn))
  {
   if(status = kull_m_dpapi_unprotect_blob(blob, pMasterKey, dwMasterKeyLen, pOptionalEntropy, dwOptionalEntropyLen, pPassword, pDataOut, dwDataOutLen))
    if(ppszDataDescr && blob->szDescription && blob->dwDescriptionLen)
     if(*ppszDataDescr = (LPWSTR) LocalAlloc(LPTR, blob->dwDescriptionLen))
      RtlCopyMemory(*ppszDataDescr, blob->szDescription, blob->dwDescriptionLen);
   kull_m_dpapi_blob_delete(blob);
  }
 }
 else
 {
  if(status = CryptUnprotectData(&dataIn, ppszDataDescr, &dataEntropy, ((void*)0), pPromptStruct, dwFlags, &dataOut))
  {
   *dwDataOutLen = dataOut.cbData;
   if(*pDataOut = LocalAlloc(LPTR, *dwDataOutLen))
    RtlCopyMemory(*pDataOut, dataOut.pbData, *dwDataOutLen);
   LocalFree(dataOut.pbData);
  }
 }
 return status;
}
