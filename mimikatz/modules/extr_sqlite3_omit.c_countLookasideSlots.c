
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {struct TYPE_3__* pNext; } ;
typedef TYPE_1__ LookasideSlot ;



__attribute__((used)) static u32 countLookasideSlots(LookasideSlot *p){
  u32 cnt = 0;
  while( p ){
    p = p->pNext;
    cnt++;
  }
  return cnt;
}
