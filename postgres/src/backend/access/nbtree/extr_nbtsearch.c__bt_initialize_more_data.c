
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int moreLeft; int moreRight; } ;
struct TYPE_5__ {int markItemIndex; scalar_t__ numKilled; TYPE_1__ currPos; } ;
typedef int ScanDirection ;
typedef TYPE_2__* BTScanOpaque ;


 scalar_t__ ScanDirectionIsForward (int ) ;

__attribute__((used)) static inline void
_bt_initialize_more_data(BTScanOpaque so, ScanDirection dir)
{

 if (ScanDirectionIsForward(dir))
 {
  so->currPos.moreLeft = 0;
  so->currPos.moreRight = 1;
 }
 else
 {
  so->currPos.moreLeft = 1;
  so->currPos.moreRight = 0;
 }
 so->numKilled = 0;
 so->markItemIndex = -1;
}
