; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_AtSubAbort_Snapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_AtSubAbort_Snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64 }

@ActiveSnapshot = common dso_local global %struct.TYPE_5__* null, align 8
@OldestActiveSnapshot = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtSubAbort_Snapshot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %58, %1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ActiveSnapshot, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ActiveSnapshot, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %2, align 4
  %12 = icmp sge i32 %10, %11
  br label %13

13:                                               ; preds = %7, %4
  %14 = phi i1 [ false, %4 ], [ %12, %7 ]
  br i1 %14, label %15, label %59

15:                                               ; preds = %13
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ActiveSnapshot, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ActiveSnapshot, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ActiveSnapshot, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ActiveSnapshot, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %15
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ActiveSnapshot, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ActiveSnapshot, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call i32 @FreeSnapshot(%struct.TYPE_6__* %49)
  br label %51

51:                                               ; preds = %46, %39, %15
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ActiveSnapshot, align 8
  %53 = call i32 @pfree(%struct.TYPE_5__* %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** @ActiveSnapshot, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ActiveSnapshot, align 8
  %56 = icmp eq %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32* null, i32** @OldestActiveSnapshot, align 8
  br label %58

58:                                               ; preds = %57, %51
  br label %4

59:                                               ; preds = %13
  %60 = call i32 (...) @SnapshotResetXmin()
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FreeSnapshot(%struct.TYPE_6__*) #1

declare dso_local i32 @pfree(%struct.TYPE_5__*) #1

declare dso_local i32 @SnapshotResetXmin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
