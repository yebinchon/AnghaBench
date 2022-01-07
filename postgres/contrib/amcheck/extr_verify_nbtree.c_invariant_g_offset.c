
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_7__ {int heapkeyspace; int pivotsearch; } ;
struct TYPE_6__ {int target; int rel; } ;
typedef int OffsetNumber ;
typedef TYPE_1__ BtreeCheckState ;
typedef TYPE_2__* BTScanInsert ;


 int Assert (int ) ;
 scalar_t__ _bt_compare (int ,TYPE_2__*,int ,int ) ;

__attribute__((used)) static inline bool
invariant_g_offset(BtreeCheckState *state, BTScanInsert key,
       OffsetNumber lowerbound)
{
 int32 cmp;

 Assert(key->pivotsearch);

 cmp = _bt_compare(state->rel, key, state->target, lowerbound);


 if (!key->heapkeyspace)
  return cmp >= 0;
 return cmp > 0;
}
