
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {int (* Skip ) (int ,int) ;} ;
struct TYPE_5__ {int matchFinderObj; TYPE_1__ matchFinder; int additionalOffset; } ;
typedef TYPE_2__ CLzmaEnc ;


 int printf (char*,int) ;
 int stub1 (int ,int) ;
 int ttt ;

__attribute__((used)) static void MovePos(CLzmaEnc *p, UInt32 num)
{




  if (num != 0)
  {
    p->additionalOffset += num;
    p->matchFinder.Skip(p->matchFinderObj, num);
  }
}
