
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_6__ {int btps_full; int * btps_next; scalar_t__ btps_level; int btps_lastoff; int * btps_lowkey; scalar_t__ btps_blkno; int btps_page; } ;
struct TYPE_5__ {int index; int btws_pages_alloced; } ;
typedef TYPE_1__ BTWriteState ;
typedef TYPE_2__ BTPageState ;


 int BLCKSZ ;
 int BTREE_DEFAULT_FILLFACTOR ;
 int BTREE_NONLEAF_FILLFACTOR ;
 int P_HIKEY ;
 int RelationGetTargetPageFreeSpace (int ,int ) ;
 int _bt_blnewpage (scalar_t__) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static BTPageState *
_bt_pagestate(BTWriteState *wstate, uint32 level)
{
 BTPageState *state = (BTPageState *) palloc0(sizeof(BTPageState));


 state->btps_page = _bt_blnewpage(level);


 state->btps_blkno = wstate->btws_pages_alloced++;

 state->btps_lowkey = ((void*)0);

 state->btps_lastoff = P_HIKEY;
 state->btps_level = level;

 if (level > 0)
  state->btps_full = (BLCKSZ * (100 - BTREE_NONLEAF_FILLFACTOR) / 100);
 else
  state->btps_full = RelationGetTargetPageFreeSpace(wstate->index,
                BTREE_DEFAULT_FILLFACTOR);

 state->btps_next = ((void*)0);

 return state;
}
