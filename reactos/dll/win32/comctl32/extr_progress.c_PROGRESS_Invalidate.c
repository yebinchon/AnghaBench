
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Self; } ;
typedef TYPE_1__ PROGRESS_INFO ;
typedef scalar_t__ INT ;


 int InvalidateRect (int ,int *,int) ;

__attribute__((used)) static void PROGRESS_Invalidate( const PROGRESS_INFO *infoPtr, INT old, INT new )
{
    InvalidateRect( infoPtr->Self, ((void*)0), old > new );
}
