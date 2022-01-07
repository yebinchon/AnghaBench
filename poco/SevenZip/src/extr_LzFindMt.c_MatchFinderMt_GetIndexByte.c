
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pointerToCurPos; } ;
typedef size_t Int32 ;
typedef TYPE_1__ CMatchFinderMt ;
typedef int Byte ;



Byte MatchFinderMt_GetIndexByte(CMatchFinderMt *p, Int32 index)
{
  return p->pointerToCurPos[index];
}
