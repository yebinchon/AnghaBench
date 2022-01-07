
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hwndFocus; int focusRect; } ;
typedef int HDC ;
typedef TYPE_1__ CCPRIV ;


 int DrawFocusRect (int ,int *) ;
 int GetDC (scalar_t__) ;
 int ReleaseDC (scalar_t__,int ) ;

__attribute__((used)) static void CC_DrawCurrentFocusRect( const CCPRIV *lpp )
{
  if (lpp->hwndFocus)
  {
    HDC hdc = GetDC(lpp->hwndFocus);
    DrawFocusRect(hdc, &lpp->focusRect);
    ReleaseDC(lpp->hwndFocus, hdc);
  }
}
