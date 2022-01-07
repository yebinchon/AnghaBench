
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ginstate; } ;
struct TYPE_3__ {int category; int key; int attnum; } ;
typedef int RBTNode ;
typedef TYPE_1__ GinEntryAccumulator ;
typedef TYPE_2__ BuildAccumulator ;


 int ginCompareAttEntries (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
cmpEntryAccumulator(const RBTNode *a, const RBTNode *b, void *arg)
{
 const GinEntryAccumulator *ea = (const GinEntryAccumulator *) a;
 const GinEntryAccumulator *eb = (const GinEntryAccumulator *) b;
 BuildAccumulator *accum = (BuildAccumulator *) arg;

 return ginCompareAttEntries(accum->ginstate,
        ea->attnum, ea->key, ea->category,
        eb->attnum, eb->key, eb->category);
}
