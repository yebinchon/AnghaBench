
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD64 ;
typedef int BOOL ;


 int ERROR_INVALID_PARAMETER ;
 int FALSE ;
 int FIXME (char*,int ) ;
 int SetLastError (int ) ;
 int TRUE ;
 int wine_dbgstr_longlong (int) ;

BOOL validate_addr64(DWORD64 addr)
{
    if (sizeof(void*) == sizeof(int) && (addr >> 32))
    {
        FIXME("Unsupported address %s\n", wine_dbgstr_longlong(addr));
        SetLastError(ERROR_INVALID_PARAMETER);
        return FALSE;
    }
    return TRUE;
}
