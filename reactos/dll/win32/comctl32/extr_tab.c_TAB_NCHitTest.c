
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {short x; short y; } ;
struct TYPE_7__ {int hwnd; } ;
typedef TYPE_1__ TAB_INFO ;
typedef TYPE_2__ POINT ;
typedef int LRESULT ;
typedef int LPARAM ;


 scalar_t__ HIWORD (int ) ;
 int HTCLIENT ;
 int HTTRANSPARENT ;
 scalar_t__ LOWORD (int ) ;
 int ScreenToClient (int ,TYPE_2__*) ;
 int TAB_InternalHitTest (TYPE_1__ const*,TYPE_2__,int *) ;

__attribute__((used)) static inline LRESULT
TAB_NCHitTest (const TAB_INFO *infoPtr, LPARAM lParam)
{
  POINT pt;
  UINT dummyflag;

  pt.x = (short)LOWORD(lParam);
  pt.y = (short)HIWORD(lParam);
  ScreenToClient(infoPtr->hwnd, &pt);

  if (TAB_InternalHitTest(infoPtr, pt, &dummyflag) == -1)
    return HTTRANSPARENT;
  else
    return HTCLIENT;
}
