
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_2__ {int itups; int tuplesort; } ;
typedef TYPE_1__ ValidateIndexState ;
typedef int ItemPointer ;


 int Int64GetDatum (int ) ;
 int itemptr_encode (int ) ;
 int tuplesort_putdatum (int ,int ,int) ;

__attribute__((used)) static bool
validate_index_callback(ItemPointer itemptr, void *opaque)
{
 ValidateIndexState *state = (ValidateIndexState *) opaque;
 int64 encoded = itemptr_encode(itemptr);

 tuplesort_putdatum(state->tuplesort, Int64GetDatum(encoded), 0);
 state->itups += 1;
 return 0;
}
