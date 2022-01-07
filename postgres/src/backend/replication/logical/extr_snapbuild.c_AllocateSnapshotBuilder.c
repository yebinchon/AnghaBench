
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_4__ {int xcnt_space; int includes_all_transactions; void* xip; scalar_t__ xcnt; } ;
struct TYPE_5__ {int building_full_snapshot; int start_decoding_at; int initial_xmin_horizon; TYPE_1__ committed; int * reorder; int context; int state; } ;
typedef TYPE_2__ SnapBuild ;
typedef int ReorderBuffer ;
typedef int MemoryContext ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CurrentMemoryContext ;
 int MemoryContextSwitchTo (int ) ;
 int SNAPBUILD_START ;
 void* palloc0 (int) ;

SnapBuild *
AllocateSnapshotBuilder(ReorderBuffer *reorder,
      TransactionId xmin_horizon,
      XLogRecPtr start_lsn,
      bool need_full_snapshot)
{
 MemoryContext context;
 MemoryContext oldcontext;
 SnapBuild *builder;


 context = AllocSetContextCreate(CurrentMemoryContext,
         "snapshot builder context",
         ALLOCSET_DEFAULT_SIZES);
 oldcontext = MemoryContextSwitchTo(context);

 builder = palloc0(sizeof(SnapBuild));

 builder->state = SNAPBUILD_START;
 builder->context = context;
 builder->reorder = reorder;


 builder->committed.xcnt = 0;
 builder->committed.xcnt_space = 128;
 builder->committed.xip =
  palloc0(builder->committed.xcnt_space * sizeof(TransactionId));
 builder->committed.includes_all_transactions = 1;

 builder->initial_xmin_horizon = xmin_horizon;
 builder->start_decoding_at = start_lsn;
 builder->building_full_snapshot = need_full_snapshot;

 MemoryContextSwitchTo(oldcontext);

 return builder;
}
