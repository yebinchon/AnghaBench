
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int hash ;
struct TYPE_5__ {int (* addContextToStore ) (int ,void const*,int ,int *) ;scalar_t__ (* getProp ) (void const*,int ,int *,int*) ;} ;
typedef TYPE_1__ WINE_CONTEXT_INTERFACE ;
typedef int WCHAR ;
typedef int * LPBYTE ;
typedef int LONG ;
typedef int HKEY ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef int BYTE ;


 int ARRAY_SIZE (int *) ;
 int BlobW ;
 int CERT_HASH_PROP_ID ;
 int CERT_STORE_ADD_REPLACE_EXISTING ;



 int CRYPT_HashToStr (int *,int *) ;
 void* CRYPT_ReadSerializedElement (int *,int,int,int*) ;
 int Context_Release (int ) ;
 int * CryptMemAlloc (int) ;
 int CryptMemFree (int *) ;
 int ERROR_SUCCESS ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 int RegEnumKeyExW (int ,int ,int *,int*,int *,int *,int *,int *) ;
 int RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 int RegQueryValueExW (int ,int ,int *,int *,int *,int*) ;
 int TRACE (char*,...) ;
 int context_from_ptr (void const*) ;
 int debugstr_w (int *) ;
 int lstrcmpW (int *,int *) ;
 TYPE_1__* pCRLInterface ;
 TYPE_1__* pCTLInterface ;
 TYPE_1__* pCertInterface ;
 scalar_t__ stub1 (void const*,int ,int *,int*) ;
 int stub2 (int ,void const*,int ,int *) ;

__attribute__((used)) static void CRYPT_RegReadSerializedFromReg(HKEY key, DWORD contextType,
 HCERTSTORE store)
{
    LONG rc;
    DWORD index = 0;
    WCHAR subKeyName[MAX_PATH];

    do {
        DWORD size = ARRAY_SIZE(subKeyName);

        rc = RegEnumKeyExW(key, index++, subKeyName, &size, ((void*)0), ((void*)0), ((void*)0),
         ((void*)0));
        if (!rc)
        {
            HKEY subKey;

            rc = RegOpenKeyExW(key, subKeyName, 0, KEY_READ, &subKey);
            if (!rc)
            {
                LPBYTE buf = ((void*)0);

                size = 0;
                rc = RegQueryValueExW(subKey, BlobW, ((void*)0), ((void*)0), ((void*)0), &size);
                if (!rc)
                    buf = CryptMemAlloc(size);
                if (buf)
                {
                    rc = RegQueryValueExW(subKey, BlobW, ((void*)0), ((void*)0), buf,
                     &size);
                    if (!rc)
                    {
                        const void *context;
                        DWORD addedType;

                        TRACE("Adding cert with hash %s\n",
                         debugstr_w(subKeyName));
                        context = CRYPT_ReadSerializedElement(buf, size,
                         contextType, &addedType);
                        if (context)
                        {
                            const WINE_CONTEXT_INTERFACE *contextInterface;
                            BYTE hash[20];

                            switch (addedType)
                            {
                            case 130:
                                contextInterface = pCertInterface;
                                break;
                            case 129:
                                contextInterface = pCRLInterface;
                                break;
                            case 128:
                                contextInterface = pCTLInterface;
                                break;
                            default:
                                contextInterface = ((void*)0);
                            }
                            if (contextInterface)
                            {
                                size = sizeof(hash);
                                if (contextInterface->getProp(context,
                                 CERT_HASH_PROP_ID, hash, &size))
                                {
                                    WCHAR asciiHash[20 * 2 + 1];

                                    CRYPT_HashToStr(hash, asciiHash);
                                    TRACE("comparing %s\n",
                                     debugstr_w(asciiHash));
                                    TRACE("with %s\n", debugstr_w(subKeyName));
                                    if (!lstrcmpW(asciiHash, subKeyName))
                                    {
                                        TRACE("hash matches, adding\n");
                                        contextInterface->addContextToStore(
                                         store, context,
                                         CERT_STORE_ADD_REPLACE_EXISTING, ((void*)0));
                                    }
                                    else
                                        TRACE("hash doesn't match, ignoring\n");
                                }
                                Context_Release(context_from_ptr(context));
                            }
                        }
                    }
                    CryptMemFree(buf);
                }
                RegCloseKey(subKey);
            }

            rc = ERROR_SUCCESS;
        }
    } while (!rc);
}
