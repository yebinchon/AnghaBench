; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotsShmemSize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotsShmemSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_replication_slots = common dso_local global i64 0, align 8
@ReplicationSlotCtlData = common dso_local global i32 0, align 4
@replication_slots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReplicationSlotsShmemSize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i64, i64* @max_replication_slots, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %1, align 4
  br label %16

7:                                                ; preds = %0
  %8 = load i32, i32* @ReplicationSlotCtlData, align 4
  %9 = load i32, i32* @replication_slots, align 4
  %10 = call i32 @offsetof(i32 %8, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i64, i64* @max_replication_slots, align 8
  %13 = call i32 @mul_size(i64 %12, i32 4)
  %14 = call i32 @add_size(i32 %11, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %7, %5
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @add_size(i32, i32) #1

declare dso_local i32 @mul_size(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
