; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_ProcArrayGetReplicationSlotXmin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_ProcArrayGetReplicationSlotXmin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ProcArrayLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@procArray = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcArrayGetReplicationSlotXmin(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @ProcArrayLock, align 4
  %6 = load i32, i32* @LW_SHARED, align 4
  %7 = call i32 @LWLockAcquire(i32 %5, i32 %6)
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @procArray, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %3, align 8
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @procArray, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* @ProcArrayLock, align 4
  %25 = call i32 @LWLockRelease(i32 %24)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
