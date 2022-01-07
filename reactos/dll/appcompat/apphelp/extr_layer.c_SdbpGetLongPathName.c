
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int MaximumLength; int Length; int Buffer; } ;
struct TYPE_6__ {TYPE_1__ Str; } ;
typedef TYPE_2__* PSDB_TMP_STR ;
typedef int PCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int GetLastError () ;
 int GetLongPathNameW (int ,int ,int) ;
 int SHIM_ERR (char*,int ) ;
 int SdbpResizeTempStr (TYPE_2__*,int) ;
 int TRUE ;

BOOL SdbpGetLongPathName(PCWSTR wszPath, PSDB_TMP_STR Result)
{
    DWORD max = Result->Str.MaximumLength / 2;
    DWORD ret = GetLongPathNameW(wszPath, Result->Str.Buffer, max);
    if (ret)
    {
        if (ret >= max)
        {
            SdbpResizeTempStr(Result, ret);
            max = Result->Str.MaximumLength / 2;
            ret = GetLongPathNameW(wszPath, Result->Str.Buffer, max);
        }
        if (ret && ret < max)
        {
            Result->Str.Length = ret * 2;
            return TRUE;
        }
    }
    SHIM_ERR("Failed to convert short path to long path error 0x%lx\n", GetLastError());
    return FALSE;
}
