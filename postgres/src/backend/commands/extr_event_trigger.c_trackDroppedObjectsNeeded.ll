; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_trackDroppedObjectsNeeded.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_event_trigger.c_trackDroppedObjectsNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVT_SQLDrop = common dso_local global i32 0, align 4
@EVT_TableRewrite = common dso_local global i32 0, align 4
@EVT_DDLCommandEnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trackDroppedObjectsNeeded() #0 {
  %1 = load i32, i32* @EVT_SQLDrop, align 4
  %2 = call i32 @EventCacheLookup(i32 %1)
  %3 = call i64 @list_length(i32 %2)
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @EVT_TableRewrite, align 4
  %7 = call i32 @EventCacheLookup(i32 %6)
  %8 = call i64 @list_length(i32 %7)
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load i32, i32* @EVT_DDLCommandEnd, align 4
  %12 = call i32 @EventCacheLookup(i32 %11)
  %13 = call i64 @list_length(i32 %12)
  %14 = icmp sgt i64 %13, 0
  br label %15

15:                                               ; preds = %10, %5, %0
  %16 = phi i1 [ true, %5 ], [ true, %0 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @list_length(i32) #1

declare dso_local i32 @EventCacheLookup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
