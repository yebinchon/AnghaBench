
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {TYPE_1__* Part; } ;
struct TYPE_4__ {int LowerLimit; int UpperLimit; } ;
typedef TYPE_2__ IPADDRESS_INFO ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static BOOL IPADDRESS_SetRange (IPADDRESS_INFO *infoPtr, int index, WORD range)
{
    TRACE("\n");

    if ( (index < 0) || (index > 3) ) return FALSE;

    infoPtr->Part[index].LowerLimit = range & 0xFF;
    infoPtr->Part[index].UpperLimit = (range >> 8) & 0xFF;

    return TRUE;
}
