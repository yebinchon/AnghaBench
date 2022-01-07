
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* (* enumContextsInStore ) (int ,void const*) ;scalar_t__ (* serialize ) (void const*,int ,int *,scalar_t__*) ;} ;
typedef TYPE_1__ WINE_CONTEXT_INTERFACE ;
typedef scalar_t__ (* SerializedOutputFunc ) (void*,int *,scalar_t__) ;
typedef int * LPBYTE ;
typedef int HCERTSTORE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int Context_Release (int ) ;
 int * CryptMemAlloc (scalar_t__) ;
 int CryptMemFree (int *) ;
 scalar_t__ TRUE ;
 int context_from_ptr (void const*) ;
 void* stub1 (int ,void const*) ;
 scalar_t__ stub2 (void const*,int ,int *,scalar_t__*) ;
 scalar_t__ stub3 (void const*,int ,int *,scalar_t__*) ;

__attribute__((used)) static BOOL CRYPT_SerializeContextsToStream(SerializedOutputFunc output,
 void *handle, const WINE_CONTEXT_INTERFACE *contextInterface, HCERTSTORE store)
{
    const void *context = ((void*)0);
    BOOL ret;

    do {
        context = contextInterface->enumContextsInStore(store, context);
        if (context)
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
                    ret = output(handle, buf, size);
            }
            CryptMemFree(buf);
        }
        else
            ret = TRUE;
    } while (ret && context != ((void*)0));
    if (context)
        Context_Release(context_from_ptr(context));
    return ret;
}
