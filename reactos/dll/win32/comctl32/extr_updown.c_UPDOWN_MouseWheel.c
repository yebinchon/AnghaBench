
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int UPDOWN_INFO ;
typedef int LRESULT ;


 int FLAG_DECR ;
 int FLAG_INCR ;
 int GET_WHEEL_DELTA_WPARAM (int) ;
 int MK_CONTROL ;
 int MK_SHIFT ;
 int UPDOWN_DoAction (int *,int ,int ) ;
 int UPDOWN_GetBuddyInt (int *) ;
 int WHEEL_DELTA ;
 int abs (int) ;

__attribute__((used)) static LRESULT UPDOWN_MouseWheel(UPDOWN_INFO *infoPtr, WPARAM wParam)
{
    int iWheelDelta = GET_WHEEL_DELTA_WPARAM(wParam) / WHEEL_DELTA;

    if (wParam & (MK_SHIFT | MK_CONTROL))
        return 0;

    if (iWheelDelta != 0)
    {
        UPDOWN_GetBuddyInt(infoPtr);
        UPDOWN_DoAction(infoPtr, abs(iWheelDelta), iWheelDelta > 0 ? FLAG_INCR : FLAG_DECR);
    }

    return 1;
}
