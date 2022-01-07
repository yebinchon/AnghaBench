
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCRYPTMSG ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef int BOOL ;




 int CRYPT_QuerySerializedStoreFromBlob (void const*,int*,int*,int *,int *) ;
 int CRYPT_QuerySerializedStoreFromFile (void const*,int*,int*,int *,int *) ;
 int E_INVALIDARG ;
 int FALSE ;
 int FIXME (char*,int) ;
 int SetLastError (int ) ;

__attribute__((used)) static BOOL CRYPT_QuerySerializedStoreObject(DWORD dwObjectType,
 const void *pvObject, DWORD *pdwMsgAndCertEncodingType, DWORD *pdwContentType,
 HCERTSTORE *phCertStore, HCRYPTMSG *phMsg)
{
    switch (dwObjectType)
    {
    case 128:
        return CRYPT_QuerySerializedStoreFromFile(pvObject,
         pdwMsgAndCertEncodingType, pdwContentType, phCertStore, phMsg);
    case 129:
        return CRYPT_QuerySerializedStoreFromBlob(pvObject,
         pdwMsgAndCertEncodingType, pdwContentType, phCertStore, phMsg);
    default:
        FIXME("unimplemented for type %d\n", dwObjectType);
        SetLastError(E_INVALIDARG);
        return FALSE;
    }
}
