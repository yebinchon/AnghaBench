
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ StandardBias; scalar_t__ DaylightBias; int Bias; } ;
typedef TYPE_1__ TIME_ZONE_INFORMATION ;
typedef int LONG ;
typedef int FILETIME ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ TIME_CompTimeZoneID (TYPE_1__ const*,int *,int ) ;
 scalar_t__ TIME_ZONE_ID_DAYLIGHT ;
 scalar_t__ TIME_ZONE_ID_INVALID ;
 scalar_t__ TIME_ZONE_ID_STANDARD ;
 int TRUE ;

__attribute__((used)) static BOOL
TIME_GetTimezoneBias(const TIME_ZONE_INFORMATION *pTZinfo, FILETIME *lpFileTime, BOOL islocal, LONG *pBias)
{
    LONG bias = pTZinfo->Bias;
    DWORD tzid = TIME_CompTimeZoneID(pTZinfo, lpFileTime, islocal);

    if( tzid == TIME_ZONE_ID_INVALID)
        return FALSE;
    if (tzid == TIME_ZONE_ID_DAYLIGHT)
        bias += pTZinfo->DaylightBias;
    else if (tzid == TIME_ZONE_ID_STANDARD)
        bias += pTZinfo->StandardBias;
    *pBias = bias;
    return TRUE;
}
