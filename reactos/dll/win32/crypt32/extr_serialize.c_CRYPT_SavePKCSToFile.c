
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbData; scalar_t__ pbData; int * member_1; int member_0; } ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef TYPE_1__ CERT_BLOB ;
typedef void* BOOL ;


 void* CRYPT_SavePKCSToMem (int ,int ,TYPE_1__*) ;
 scalar_t__ CryptMemAlloc (int ) ;
 int ERROR_OUTOFMEMORY ;
 void* FALSE ;
 int SetLastError (int ) ;
 int TRACE (char*,void*) ;
 void* WriteFile (void*,scalar_t__,int ,int *,int *) ;

__attribute__((used)) static BOOL CRYPT_SavePKCSToFile(HCERTSTORE store,
 DWORD dwMsgAndCertEncodingType, void *handle)
{
    CERT_BLOB blob = { 0, ((void*)0) };
    BOOL ret;

    TRACE("(%p)\n", handle);

    ret = CRYPT_SavePKCSToMem(store, dwMsgAndCertEncodingType, &blob);
    if (ret)
    {
        blob.pbData = CryptMemAlloc(blob.cbData);
        if (blob.pbData)
        {
            ret = CRYPT_SavePKCSToMem(store, dwMsgAndCertEncodingType, &blob);
            if (ret)
                ret = WriteFile(handle, blob.pbData, blob.cbData,
                 &blob.cbData, ((void*)0));
        }
        else
        {
            SetLastError(ERROR_OUTOFMEMORY);
            ret = FALSE;
        }
    }
    TRACE("returning %d\n", ret);
    return ret;
}
