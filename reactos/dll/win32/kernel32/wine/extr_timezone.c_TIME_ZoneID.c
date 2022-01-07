
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIME_ZONE_INFORMATION ;
typedef int FILETIME ;
typedef int DWORD ;


 int FALSE ;
 int GetSystemTimeAsFileTime (int *) ;
 int TIME_CompTimeZoneID (int const*,int *,int ) ;

__attribute__((used)) static DWORD TIME_ZoneID( const TIME_ZONE_INFORMATION *pTzi )
{
    FILETIME ftTime;
    GetSystemTimeAsFileTime( &ftTime);
    return TIME_CompTimeZoneID( pTzi, &ftTime, FALSE);
}
