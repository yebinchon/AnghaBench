
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * (* pfnAlloc ) (int) ;} ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_DECODE_PARA ;
typedef int BYTE ;
typedef int BOOL ;


 int CRYPT_DECODE_ALLOC_FLAG ;
 int ERROR_MORE_DATA ;
 int FALSE ;
 int LPTR ;
 int * LocalAlloc (int ,int) ;
 int SetLastError (int ) ;
 int TRUE ;
 int * stub1 (int) ;

__attribute__((used)) static BOOL CRYPT_DecodeEnsureSpace(DWORD dwFlags,
 const CRYPT_DECODE_PARA *pDecodePara, void *pvStructInfo, DWORD *pcbStructInfo,
 DWORD bytesNeeded)
{
    BOOL ret = TRUE;

    if (dwFlags & CRYPT_DECODE_ALLOC_FLAG)
    {
        if (pDecodePara && pDecodePara->pfnAlloc)
            *(BYTE **)pvStructInfo = pDecodePara->pfnAlloc(bytesNeeded);
        else
            *(BYTE **)pvStructInfo = LocalAlloc(LPTR, bytesNeeded);
        if (!*(BYTE **)pvStructInfo)
            ret = FALSE;
        else
            *pcbStructInfo = bytesNeeded;
    }
    else if (*pcbStructInfo < bytesNeeded)
    {
        *pcbStructInfo = bytesNeeded;
        SetLastError(ERROR_MORE_DATA);
        ret = FALSE;
    }
    else
        *pcbStructInfo = bytesNeeded;
    return ret;
}
