
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int Buffer; } ;
struct TYPE_9__ {TYPE_1__ Str; } ;
typedef TYPE_2__* PSDB_TMP_STR ;
typedef int PCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int SdbpBuildSignMediaId (TYPE_2__*) ;
 int SdbpFreeTempStr (TYPE_2__*) ;
 int SdbpGetLongPathName (int ,TYPE_2__*) ;
 int SdbpInitTempStr (TYPE_2__*) ;
 scalar_t__ SdbpIsPathOnRemovableMedia (int ) ;
 int TRUE ;

BOOL SdbpResolvePath(PSDB_TMP_STR LongPath, PCWSTR wszPath)
{
    SdbpInitTempStr(LongPath);
    if (!SdbpGetLongPathName(wszPath, LongPath))
    {
        SdbpFreeTempStr(LongPath);
        return FALSE;
    }
    if (SdbpIsPathOnRemovableMedia(LongPath->Str.Buffer))
    {
        return SdbpBuildSignMediaId(LongPath);
    }
    return TRUE;
}
