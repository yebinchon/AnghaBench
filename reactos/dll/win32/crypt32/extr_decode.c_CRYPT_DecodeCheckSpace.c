
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ERROR_MORE_DATA ;
 int FALSE ;
 int SetLastError (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL CRYPT_DecodeCheckSpace(DWORD *pcbStructInfo, DWORD bytesNeeded)
{
    BOOL ret;

    if (*pcbStructInfo < bytesNeeded)
    {
        *pcbStructInfo = bytesNeeded;
        SetLastError(ERROR_MORE_DATA);
        ret = FALSE;
    }
    else
    {
        *pcbStructInfo = bytesNeeded;
        ret = TRUE;
    }
    return ret;
}
