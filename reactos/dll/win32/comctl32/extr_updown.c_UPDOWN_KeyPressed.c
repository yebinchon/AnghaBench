
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Flags; TYPE_1__* AccelVect; scalar_t__ AccelCount; int Self; } ;
typedef TYPE_2__ UPDOWN_INFO ;
struct TYPE_6__ {int nInc; } ;
typedef int LRESULT ;


 int AUTOPRESS_DELAY ;
 int FALSE ;
 int FLAG_ARROW ;
 int FLAG_DECR ;
 int FLAG_INCR ;
 int FLAG_PRESSED ;
 int InvalidateRect (int ,int *,int ) ;
 int SetTimer (int ,int ,int ,int ) ;
 int TIMER_AUTOPRESS ;
 int UPDOWN_DoAction (TYPE_2__*,int,int) ;
 int UPDOWN_GetBuddyInt (TYPE_2__*) ;
 int VK_DOWN ;
 int VK_UP ;

__attribute__((used)) static LRESULT UPDOWN_KeyPressed(UPDOWN_INFO *infoPtr, int key)
{
    int arrow, accel;

    if (key == VK_UP) arrow = FLAG_INCR;
    else if (key == VK_DOWN) arrow = FLAG_DECR;
    else return 1;

    UPDOWN_GetBuddyInt (infoPtr);
    infoPtr->Flags &= ~FLAG_ARROW;
    infoPtr->Flags |= FLAG_PRESSED | arrow;
    InvalidateRect (infoPtr->Self, ((void*)0), FALSE);
    SetTimer(infoPtr->Self, TIMER_AUTOPRESS, AUTOPRESS_DELAY, 0);
    accel = (infoPtr->AccelCount && infoPtr->AccelVect) ? infoPtr->AccelVect[0].nInc : 1;
    UPDOWN_DoAction (infoPtr, accel, arrow);
    return 0;
}
