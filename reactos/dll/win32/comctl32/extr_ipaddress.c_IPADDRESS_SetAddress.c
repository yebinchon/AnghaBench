
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_6__ {TYPE_1__* Part; } ;
struct TYPE_5__ {int LowerLimit; int UpperLimit; int EditHwnd; } ;
typedef int LRESULT ;
typedef TYPE_1__ IPPART_INFO ;
typedef TYPE_2__ IPADDRESS_INFO ;
typedef int DWORD ;


 int EN_CHANGE ;
 int IPADDRESS_Notify (TYPE_2__ const*,int ) ;
 int SetWindowTextW (int ,char*) ;
 int TRACE (char*) ;
 int TRUE ;
 int wsprintfW (char*,char const*,int) ;

__attribute__((used)) static LRESULT IPADDRESS_SetAddress (const IPADDRESS_INFO *infoPtr, DWORD ip_address)
{
    WCHAR buf[20];
    static const WCHAR fmt[] = { '%', 'd', 0 };
    int i;

    TRACE("\n");

    for (i = 3; i >= 0; i--) {
 const IPPART_INFO* part = &infoPtr->Part[i];
        int value = ip_address & 0xff;
 if ( (value >= part->LowerLimit) && (value <= part->UpperLimit) ) {
     wsprintfW (buf, fmt, value);
     SetWindowTextW (part->EditHwnd, buf);
     IPADDRESS_Notify (infoPtr, EN_CHANGE);
        }
        ip_address >>= 8;
    }

    return TRUE;
}
