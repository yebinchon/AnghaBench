
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Part; } ;
struct TYPE_5__ {int EditHwnd; } ;
typedef TYPE_1__ IPPART_INFO ;
typedef TYPE_2__ IPADDRESS_INFO ;
typedef int BOOL ;


 int EM_SETSEL ;
 int FALSE ;
 int GetWindowTextLengthW (int ) ;
 int IPADDRESS_ConstrainField (TYPE_2__ const*,int) ;
 int POS_DEFAULT ;
 int POS_RIGHT ;
 int POS_SELALL ;
 int SendMessageW (int ,int ,int,int) ;
 int SetFocus (int ) ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static BOOL IPADDRESS_GotoNextField (const IPADDRESS_INFO *infoPtr, int cur, int sel)
{
    TRACE("\n");

    if(cur >= -1 && cur < 4) {
 IPADDRESS_ConstrainField(infoPtr, cur);

 if(cur < 3) {
     const IPPART_INFO *next = &infoPtr->Part[cur + 1];
     int start = 0, end = 0;
            SetFocus (next->EditHwnd);
     if (sel != POS_DEFAULT) {
  if (sel == POS_RIGHT)
      start = end = GetWindowTextLengthW(next->EditHwnd);
  else if (sel == POS_SELALL)
      end = -1;
         SendMessageW(next->EditHwnd, EM_SETSEL, start, end);
     }
     return TRUE;
 }

    }
    return FALSE;
}
