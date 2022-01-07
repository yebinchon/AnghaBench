
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_4__ {scalar_t__ level; } ;
struct TYPE_6__ {scalar_t__ btpo_cycleid; int btpo_flags; TYPE_1__ btpo; int btpo_next; int btpo_prev; } ;
struct TYPE_5__ {int pd_lower; } ;
typedef TYPE_2__* PageHeader ;
typedef scalar_t__ Page ;
typedef int ItemIdData ;
typedef TYPE_3__* BTPageOpaque ;


 int BLCKSZ ;
 int BTP_LEAF ;
 int P_NONE ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int _bt_pageinit (scalar_t__,int ) ;
 scalar_t__ palloc (int ) ;

__attribute__((used)) static Page
_bt_blnewpage(uint32 level)
{
 Page page;
 BTPageOpaque opaque;

 page = (Page) palloc(BLCKSZ);


 _bt_pageinit(page, BLCKSZ);


 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 opaque->btpo_prev = opaque->btpo_next = P_NONE;
 opaque->btpo.level = level;
 opaque->btpo_flags = (level > 0) ? 0 : BTP_LEAF;
 opaque->btpo_cycleid = 0;


 ((PageHeader) page)->pd_lower += sizeof(ItemIdData);

 return page;
}
