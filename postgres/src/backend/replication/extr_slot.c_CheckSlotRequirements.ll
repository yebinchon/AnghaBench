; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_CheckSlotRequirements.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_CheckSlotRequirements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_replication_slots = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"replication slots can only be used if max_replication_slots > 0\00", align 1
@wal_level = common dso_local global i64 0, align 8
@WAL_LEVEL_REPLICA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"replication slots can only be used if wal_level >= replica\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckSlotRequirements() #0 {
  %1 = load i64, i64* @max_replication_slots, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i32, i32* @ERROR, align 4
  %5 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %6 = call i32 @errcode(i32 %5)
  %7 = call i32 @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @ereport(i32 %4, i32 %7)
  br label %9

9:                                                ; preds = %3, %0
  %10 = load i64, i64* @wal_level, align 8
  %11 = load i64, i64* @WAL_LEVEL_REPLICA, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, i32* @ERROR, align 4
  %15 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %16 = call i32 @errcode(i32 %15)
  %17 = call i32 @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @ereport(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
