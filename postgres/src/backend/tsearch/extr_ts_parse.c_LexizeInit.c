
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * tail; int head; } ;
struct TYPE_6__ {int tail; int head; } ;
struct TYPE_7__ {int * tmpRes; int * lastRes; TYPE_1__ waste; int * curSub; TYPE_2__ towork; scalar_t__ posDict; int curDictId; int * cfg; } ;
typedef int TSConfigCacheEntry ;
typedef TYPE_3__ LexizeData ;


 int InvalidOid ;

__attribute__((used)) static void
LexizeInit(LexizeData *ld, TSConfigCacheEntry *cfg)
{
 ld->cfg = cfg;
 ld->curDictId = InvalidOid;
 ld->posDict = 0;
 ld->towork.head = ld->towork.tail = ld->curSub = ((void*)0);
 ld->waste.head = ld->waste.tail = ((void*)0);
 ld->lastRes = ((void*)0);
 ld->tmpRes = ((void*)0);
}
