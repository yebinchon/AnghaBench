; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgworker.c_RegisterDynamicBackgroundWorker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgworker.c_RegisterDynamicBackgroundWorker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@BGWORKER_CLASS_PARALLEL = common dso_local global i32 0, align 4
@BackgroundWorkerLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@BackgroundWorkerData = common dso_local global %struct.TYPE_13__* null, align 8
@max_parallel_workers = common dso_local global i64 0, align 8
@MAX_PARALLEL_WORKER_LIMIT = common dso_local global i64 0, align 8
@InvalidPid = common dso_local global i32 0, align 4
@PMSIGNAL_BACKGROUND_WORKER_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_12__* %0, %struct.TYPE_11__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* @IsUnderPostmaster, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %134

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = load i32, i32* @ERROR, align 4
  %17 = call i32 @SanityCheckBackgroundWorker(%struct.TYPE_12__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %134

20:                                               ; preds = %14
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BGWORKER_CLASS_PARALLEL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @BackgroundWorkerLock, align 4
  %29 = load i32, i32* @LW_EXCLUSIVE, align 4
  %30 = call i32 @LWLockAcquire(i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %20
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** @BackgroundWorkerData, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** @BackgroundWorkerData, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load i64, i64* @max_parallel_workers, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %33
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** @BackgroundWorkerData, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @BackgroundWorkerData, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load i64, i64* @MAX_PARALLEL_WORKER_LIMIT, align 8
  %52 = icmp sle i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @Assert(i32 %53)
  %55 = load i32, i32* @BackgroundWorkerLock, align 4
  %56 = call i32 @LWLockRelease(i32 %55)
  store i32 0, i32* %3, align 4
  br label %134

57:                                               ; preds = %33, %20
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %104, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** @BackgroundWorkerData, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %107

64:                                               ; preds = %58
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** @BackgroundWorkerData, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %10, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %103, label %75

75:                                               ; preds = %64
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = call i32 @memcpy(i32* %77, %struct.TYPE_12__* %78, i32 4)
  %80 = load i32, i32* @InvalidPid, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %9, align 8
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %75
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** @BackgroundWorkerData, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %94, %75
  %100 = call i32 (...) @pg_write_barrier()
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  store i32 1, i32* %7, align 4
  br label %107

103:                                              ; preds = %64
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %58

107:                                              ; preds = %99, %58
  %108 = load i32, i32* @BackgroundWorkerLock, align 4
  %109 = call i32 @LWLockRelease(i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @PMSIGNAL_BACKGROUND_WORKER_CHANGE, align 4
  %114 = call i32 @SendPostmasterSignal(i32 %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %120 = icmp ne %struct.TYPE_11__** %119, null
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = call %struct.TYPE_11__* @palloc(i32 16)
  %123 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %123, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  store i64 %128, i64* %131, align 8
  br label %132

132:                                              ; preds = %121, %118, %115
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %43, %19, %13
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @SanityCheckBackgroundWorker(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @pg_write_barrier(...) #1

declare dso_local i32 @SendPostmasterSignal(i32) #1

declare dso_local %struct.TYPE_11__* @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
