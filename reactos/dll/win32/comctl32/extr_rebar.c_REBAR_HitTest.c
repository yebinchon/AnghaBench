
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iBand; int flags; int pt; } ;
typedef int REBAR_INFO ;
typedef int LRESULT ;
typedef TYPE_1__* LPRBHITTESTINFO ;


 int REBAR_InternalHitTest (int const*,int *,int *,int*) ;

__attribute__((used)) static LRESULT
REBAR_HitTest (const REBAR_INFO *infoPtr, LPRBHITTESTINFO lprbht)
{
    if (!lprbht)
 return -1;

    REBAR_InternalHitTest (infoPtr, &lprbht->pt, &lprbht->flags, &lprbht->iBand);

    return lprbht->iBand;
}
