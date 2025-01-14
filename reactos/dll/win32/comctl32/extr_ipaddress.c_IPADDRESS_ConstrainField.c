
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_6__ {TYPE_1__* Part; } ;
struct TYPE_5__ {int LowerLimit; int UpperLimit; int EditHwnd; } ;
typedef TYPE_1__ IPPART_INFO ;
typedef TYPE_2__ IPADDRESS_INFO ;
typedef int BOOL ;


 int FALSE ;
 int GetWindowTextW (int ,char*,int) ;
 int IPADDRESS_IPNotify (TYPE_2__ const*,int,int) ;
 int SetWindowTextW (int ,char*) ;
 int TRACE (char*,int) ;
 int atoiW (char*) ;
 int debugstr_w (char*) ;
 int wsprintfW (char*,char const*,int) ;

__attribute__((used)) static BOOL IPADDRESS_ConstrainField (const IPADDRESS_INFO *infoPtr, int currentfield)
{
    static const WCHAR fmt[] = { '%', 'd', 0 };
    const IPPART_INFO *part;
    int curValue, newValue;
    WCHAR field[10];

    TRACE("(currentfield=%d)\n", currentfield);

    if (currentfield < 0 || currentfield > 3) return FALSE;

    part = &infoPtr->Part[currentfield];
    if (!GetWindowTextW (part->EditHwnd, field, 4)) return FALSE;

    curValue = atoiW(field);
    TRACE("  curValue=%d\n", curValue);

    newValue = IPADDRESS_IPNotify(infoPtr, currentfield, curValue);
    TRACE("  newValue=%d\n", newValue);

    if (newValue < part->LowerLimit) newValue = part->LowerLimit;
    if (newValue > part->UpperLimit) newValue = part->UpperLimit;

    if (newValue == curValue) return FALSE;

    wsprintfW (field, fmt, newValue);
    TRACE("  field=%s\n", debugstr_w(field));
    return SetWindowTextW (part->EditHwnd, field);
}
