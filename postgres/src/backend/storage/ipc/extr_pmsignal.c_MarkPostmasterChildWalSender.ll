; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_pmsignal.c_MarkPostmasterChildWalSender.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_pmsignal.c_MarkPostmasterChildWalSender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64* }

@MyPMChildSlot = common dso_local global i32 0, align 4
@am_walsender = common dso_local global i32 0, align 4
@PMSignalState = common dso_local global %struct.TYPE_2__* null, align 8
@PM_CHILD_ACTIVE = common dso_local global i64 0, align 8
@PM_CHILD_WALSENDER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MarkPostmasterChildWalSender() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MyPMChildSlot, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @am_walsender, align 4
  %4 = call i32 @Assert(i32 %3)
  %5 = load i32, i32* %1, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PMSignalState, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sle i32 %8, %11
  br label %13

13:                                               ; preds = %7, %0
  %14 = phi i1 [ false, %0 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %1, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PMSignalState, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PM_CHILD_ACTIVE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i64, i64* @PM_CHILD_WALSENDER, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PMSignalState, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %30, i64* %36, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
