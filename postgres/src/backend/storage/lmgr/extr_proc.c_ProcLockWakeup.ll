; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_ProcLockWakeup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_ProcLockWakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64 }

@STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcLockWakeup(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %83

22:                                               ; preds = %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %7, align 8
  br label %28

28:                                               ; preds = %75, %22
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp sgt i32 %29, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %28
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %32
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @LockCheckConflicts(%struct.TYPE_18__* %46, i64 %47, %struct.TYPE_19__* %48, i32 %51)
  %53 = load i64, i64* @STATUS_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %45
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @GrantLock(%struct.TYPE_19__* %56, i32 %59, i64 %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = load i64, i64* @STATUS_OK, align 8
  %64 = call %struct.TYPE_17__* @ProcWakeup(%struct.TYPE_17__* %62, i64 %63)
  store %struct.TYPE_17__* %64, %struct.TYPE_17__** %7, align 8
  br label %75

65:                                               ; preds = %45, %32
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @LOCKBIT_ON(i64 %66)
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %7, align 8
  br label %75

75:                                               ; preds = %65, %55
  br label %28

76:                                               ; preds = %28
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  br label %83

83:                                               ; preds = %76, %21
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @LockCheckConflicts(%struct.TYPE_18__*, i64, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @GrantLock(%struct.TYPE_19__*, i32, i64) #1

declare dso_local %struct.TYPE_17__* @ProcWakeup(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @LOCKBIT_ON(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
