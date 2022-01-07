
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ searchMode; int attnum; int triConsistentFn; int boolConsistentFn; int collation; TYPE_2__* triConsistentFmgrInfo; TYPE_1__* consistentFmgrInfo; } ;
struct TYPE_9__ {TYPE_2__* triConsistentFn; TYPE_1__* consistentFn; int * supportCollation; } ;
struct TYPE_8__ {int fn_oid; } ;
struct TYPE_7__ {int fn_oid; } ;
typedef TYPE_3__ GinState ;
typedef TYPE_4__* GinScanKey ;


 scalar_t__ GIN_SEARCH_MODE_EVERYTHING ;
 scalar_t__ OidIsValid (int ) ;
 int directBoolConsistentFn ;
 int directTriConsistentFn ;
 int shimBoolConsistentFn ;
 int shimTriConsistentFn ;
 int trueConsistentFn ;
 int trueTriConsistentFn ;

void
ginInitConsistentFunction(GinState *ginstate, GinScanKey key)
{
 if (key->searchMode == GIN_SEARCH_MODE_EVERYTHING)
 {
  key->boolConsistentFn = trueConsistentFn;
  key->triConsistentFn = trueTriConsistentFn;
 }
 else
 {
  key->consistentFmgrInfo = &ginstate->consistentFn[key->attnum - 1];
  key->triConsistentFmgrInfo = &ginstate->triConsistentFn[key->attnum - 1];
  key->collation = ginstate->supportCollation[key->attnum - 1];

  if (OidIsValid(ginstate->consistentFn[key->attnum - 1].fn_oid))
   key->boolConsistentFn = directBoolConsistentFn;
  else
   key->boolConsistentFn = shimBoolConsistentFn;

  if (OidIsValid(ginstate->triConsistentFn[key->attnum - 1].fn_oid))
   key->triConsistentFn = directTriConsistentFn;
  else
   key->triConsistentFn = shimTriConsistentFn;
 }
}
