
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pszObjId; } ;
struct TYPE_6__ {int hContentEncryptKey; int hCryptProv; TYPE_1__ ContentEncryptionAlgorithm; } ;
typedef int (* PFN_CMSG_GEN_CONTENT_ENCRYPT_KEY ) (TYPE_2__*,int ,int *) ;
typedef int * HCRYPTOIDFUNCSET ;
typedef int HCRYPTOIDFUNCADDR ;
typedef TYPE_2__ CMSG_CONTENT_ENCRYPT_INFO ;
typedef int BOOL ;
typedef int ALG_ID ;


 int CMSG_OID_GEN_CONTENT_ENCRYPT_KEY_FUNC ;
 int CRYPT_EXPORTABLE ;
 int CryptFreeOIDFunctionAddress (int ,int ) ;
 int CryptGenKey (int ,int ,int ,int *) ;
 int CryptGetOIDFunctionAddress (int *,int ,int ,int ,void**,int *) ;
 int * CryptInitOIDFunctionSet (int ,int ) ;
 int X509_ASN_ENCODING ;

__attribute__((used)) static BOOL CRYPT_GenKey(CMSG_CONTENT_ENCRYPT_INFO *info, ALG_ID algID)
{
    static HCRYPTOIDFUNCSET set = ((void*)0);
    PFN_CMSG_GEN_CONTENT_ENCRYPT_KEY genKeyFunc = ((void*)0);
    HCRYPTOIDFUNCADDR hFunc;
    BOOL ret;

    if (!set)
        set = CryptInitOIDFunctionSet(CMSG_OID_GEN_CONTENT_ENCRYPT_KEY_FUNC, 0);
    CryptGetOIDFunctionAddress(set, X509_ASN_ENCODING,
     info->ContentEncryptionAlgorithm.pszObjId, 0, (void **)&genKeyFunc, &hFunc);
    if (genKeyFunc)
    {
        ret = genKeyFunc(info, 0, ((void*)0));
        CryptFreeOIDFunctionAddress(hFunc, 0);
    }
    else
        ret = CryptGenKey(info->hCryptProv, algID, CRYPT_EXPORTABLE,
         &info->hContentEncryptKey);
    return ret;
}
