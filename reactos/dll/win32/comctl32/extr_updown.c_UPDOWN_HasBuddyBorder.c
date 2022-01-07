
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwStyle; } ;
typedef TYPE_1__ UPDOWN_INFO ;
typedef int BOOL ;


 int UDS_ALIGNLEFT ;
 int UDS_ALIGNRIGHT ;
 scalar_t__ UPDOWN_IsBuddyEdit (TYPE_1__ const*) ;

__attribute__((used)) static BOOL UPDOWN_HasBuddyBorder(const UPDOWN_INFO *infoPtr)
{
    return ( ((infoPtr->dwStyle & (UDS_ALIGNLEFT | UDS_ALIGNRIGHT)) != 0) &&
       UPDOWN_IsBuddyEdit(infoPtr) );
}
