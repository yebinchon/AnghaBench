
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ BuddyType; } ;
typedef TYPE_1__ UPDOWN_INFO ;
typedef int BOOL ;


 scalar_t__ BUDDY_TYPE_EDIT ;

__attribute__((used)) static inline BOOL UPDOWN_IsBuddyEdit(const UPDOWN_INFO *infoPtr)
{
    return infoPtr->BuddyType == BUDDY_TYPE_EDIT;
}
