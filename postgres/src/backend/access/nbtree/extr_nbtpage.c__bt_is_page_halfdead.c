
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef int BlockNumber ;
typedef scalar_t__ BTPageOpaque ;


 int BT_READ ;
 int BufferGetPage (int ) ;
 int P_ISHALFDEAD (scalar_t__) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int _bt_getbuf (int ,int ,int ) ;
 int _bt_relbuf (int ,int ) ;

__attribute__((used)) static bool
_bt_is_page_halfdead(Relation rel, BlockNumber blk)
{
 Buffer buf;
 Page page;
 BTPageOpaque opaque;
 bool result;

 buf = _bt_getbuf(rel, blk, BT_READ);
 page = BufferGetPage(buf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);

 result = P_ISHALFDEAD(opaque);
 _bt_relbuf(rel, buf);

 return result;
}
