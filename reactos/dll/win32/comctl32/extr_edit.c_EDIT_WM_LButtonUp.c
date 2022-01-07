
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hwndSelf; scalar_t__ bCaptureState; } ;
typedef int LRESULT ;
typedef TYPE_1__ EDITSTATE ;


 scalar_t__ FALSE ;
 scalar_t__ GetCapture () ;
 int KillTimer (scalar_t__,int ) ;
 int ReleaseCapture () ;

__attribute__((used)) static LRESULT EDIT_WM_LButtonUp(EDITSTATE *es)
{
 if (es->bCaptureState) {
  KillTimer(es->hwndSelf, 0);
  if (GetCapture() == es->hwndSelf) ReleaseCapture();
 }
 es->bCaptureState = FALSE;
 return 0;
}
