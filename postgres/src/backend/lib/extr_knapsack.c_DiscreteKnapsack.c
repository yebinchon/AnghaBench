
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;
typedef int Bitmapset ;


 int ALLOCSET_SMALL_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 int CurrentMemoryContext ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int * bms_add_member (int *,int) ;
 int * bms_add_members (int *,int *) ;
 int bms_copy (int *) ;
 int * bms_del_member (int ,int) ;
 int * bms_del_members (int *,int *) ;
 int * bms_make_singleton (int) ;
 void* palloc (int) ;

Bitmapset *
DiscreteKnapsack(int max_weight, int num_items,
     int *item_weights, double *item_values)
{
 MemoryContext local_ctx = AllocSetContextCreate(CurrentMemoryContext,
             "Knapsack",
             ALLOCSET_SMALL_SIZES);
 MemoryContext oldctx = MemoryContextSwitchTo(local_ctx);
 double *values;
 Bitmapset **sets;
 Bitmapset *result;
 int i,
    j;

 Assert(max_weight >= 0);
 Assert(num_items > 0 && item_weights);

 values = palloc((1 + max_weight) * sizeof(double));
 sets = palloc((1 + max_weight) * sizeof(Bitmapset *));

 for (i = 0; i <= max_weight; ++i)
 {
  values[i] = 0;
  sets[i] = bms_make_singleton(num_items);
 }

 for (i = 0; i < num_items; ++i)
 {
  int iw = item_weights[i];
  double iv = item_values ? item_values[i] : 1;

  for (j = max_weight; j >= iw; --j)
  {
   int ow = j - iw;

   if (values[j] <= values[ow] + iv)
   {

    if (j != ow)
    {
     sets[j] = bms_del_members(sets[j], sets[j]);
     sets[j] = bms_add_members(sets[j], sets[ow]);
    }

    sets[j] = bms_add_member(sets[j], i);

    values[j] = values[ow] + iv;
   }
  }
 }

 MemoryContextSwitchTo(oldctx);

 result = bms_del_member(bms_copy(sets[max_weight]), num_items);

 MemoryContextDelete(local_ctx);

 return result;
}
