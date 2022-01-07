
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xact; } ;
struct TYPE_5__ {TYPE_1__ btpo; } ;
typedef int Page ;
typedef TYPE_2__* BTPageOpaque ;


 scalar_t__ P_ISDELETED (TYPE_2__*) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 scalar_t__ PageIsNew (int ) ;
 int RecentGlobalXmin ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;

bool
_bt_page_recyclable(Page page)
{
 BTPageOpaque opaque;







 if (PageIsNew(page))
  return 1;





 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 if (P_ISDELETED(opaque) &&
  TransactionIdPrecedes(opaque->btpo.xact, RecentGlobalXmin))
  return 1;
 return 0;
}
