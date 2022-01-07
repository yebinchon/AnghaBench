; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_pmsignal.c_MarkPostmasterChildActive.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_pmsignal.c_MarkPostmasterChildActive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64* }

@MyPMChildSlot = common dso_local global i32 0, align 4
@PMSignalState = common dso_local global %struct.TYPE_2__* null, align 8
@PM_CHILD_ASSIGNED = common dso_local global i64 0, align 8
@PM_CHILD_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MarkPostmasterChildActive() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MyPMChildSlot, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PMSignalState, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %6, %9
  br label %11

11:                                               ; preds = %5, %0
  %12 = phi i1 [ false, %0 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %1, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PMSignalState, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PM_CHILD_ASSIGNED, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i64, i64* @PM_CHILD_ACTIVE, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PMSignalState, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 %28, i64* %34, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
