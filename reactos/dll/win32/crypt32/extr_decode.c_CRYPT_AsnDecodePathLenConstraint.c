
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PATH_LEN_CONSTRAINT {int dwPathLenConstraint; void* fPathLenConstraint; } ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef void* BOOL ;


 void* CRYPT_AsnDecodeIntInternal (int const*,scalar_t__,scalar_t__,int *,scalar_t__*,scalar_t__*) ;
 int ERROR_MORE_DATA ;
 void* FALSE ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int TRACE (char*,void*,...) ;
 void* TRUE ;

__attribute__((used)) static BOOL CRYPT_AsnDecodePathLenConstraint(const BYTE *pbEncoded,
 DWORD cbEncoded, DWORD dwFlags, void *pvStructInfo, DWORD *pcbStructInfo,
 DWORD *pcbDecoded)
{
    BOOL ret = TRUE;
    DWORD bytesNeeded = sizeof(struct PATH_LEN_CONSTRAINT), size;

    TRACE("%p, %d, %08x, %p, %d, %p\n", pbEncoded, cbEncoded, dwFlags,
     pvStructInfo, *pcbStructInfo, pcbDecoded);

    if (!pvStructInfo)
    {
        ret = CRYPT_AsnDecodeIntInternal(pbEncoded, cbEncoded, dwFlags, ((void*)0),
         &size, pcbDecoded);
        *pcbStructInfo = bytesNeeded;
    }
    else if (*pcbStructInfo < bytesNeeded)
    {
        SetLastError(ERROR_MORE_DATA);
        *pcbStructInfo = bytesNeeded;
        ret = FALSE;
    }
    else
    {
        struct PATH_LEN_CONSTRAINT *constraint = pvStructInfo;

        *pcbStructInfo = bytesNeeded;
        size = sizeof(constraint->dwPathLenConstraint);
        ret = CRYPT_AsnDecodeIntInternal(pbEncoded, cbEncoded, dwFlags,
         &constraint->dwPathLenConstraint, &size, pcbDecoded);
        if (ret)
            constraint->fPathLenConstraint = TRUE;
        TRACE("got an int, dwPathLenConstraint is %d\n",
         constraint->dwPathLenConstraint);
    }
    TRACE("returning %d (%08x)\n", ret, GetLastError());
    return ret;
}
