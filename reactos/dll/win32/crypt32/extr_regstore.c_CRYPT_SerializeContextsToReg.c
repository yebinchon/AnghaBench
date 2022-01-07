
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hash ;
struct TYPE_3__ {void* (* enumContextsInStore ) (int ,void const*) ;scalar_t__ (* serialize ) (void const*,int ,int *,int*) ;scalar_t__ (* getProp ) (void const*,int ,int *,int*) ;} ;
typedef TYPE_1__ WINE_CONTEXT_INTERFACE ;
typedef int * LPBYTE ;
typedef int HKEY ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CERT_HASH_PROP_ID ;
 scalar_t__ CRYPT_WriteSerializedToReg (int ,int,int *,int *,int) ;
 int Context_Release (int ) ;
 int * CryptMemAlloc (int) ;
 int CryptMemFree (int *) ;
 scalar_t__ TRUE ;
 int context_from_ptr (void const*) ;
 void* stub1 (int ,void const*) ;
 scalar_t__ stub2 (void const*,int ,int *,int*) ;
 scalar_t__ stub3 (void const*,int ,int *,int*) ;
 scalar_t__ stub4 (void const*,int ,int *,int*) ;

BOOL CRYPT_SerializeContextsToReg(HKEY key, DWORD flags,
 const WINE_CONTEXT_INTERFACE *contextInterface, HCERTSTORE memStore)
{
    const void *context = ((void*)0);
    BOOL ret;

    do {
        context = contextInterface->enumContextsInStore(memStore, context);
        if (context)
        {
            BYTE hash[20];
            DWORD hashSize = sizeof(hash);

            ret = contextInterface->getProp(context, CERT_HASH_PROP_ID, hash,
             &hashSize);
            if (ret)
            {
                DWORD size = 0;
                LPBYTE buf = ((void*)0);

                ret = contextInterface->serialize(context, 0, ((void*)0), &size);
                if (size)
                    buf = CryptMemAlloc(size);
                if (buf)
                {
                    ret = contextInterface->serialize(context, 0, buf, &size);
                    if (ret)
                        ret = CRYPT_WriteSerializedToReg(key, flags, hash, buf, size);
                }
                CryptMemFree(buf);
            }
        }
        else
            ret = TRUE;
    } while (ret && context != ((void*)0));
    if (context)
        Context_Release(context_from_ptr(context));
    return ret;
}
