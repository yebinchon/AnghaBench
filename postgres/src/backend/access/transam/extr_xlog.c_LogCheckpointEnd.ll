; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_LogCheckpointEnd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_LogCheckpointEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@CheckpointStats = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@BgWriterStats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@log_checkpoints = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [226 x i8] c"%s complete: wrote %d buffers (%.1f%%); %d WAL file(s) added, %d removed, %d recycled; write=%ld.%03d s, sync=%ld.%03d s, total=%ld.%03d s; sync files=%d, longest=%ld.%03d s, average=%ld.%03d s; distance=%d kB, estimate=%d kB\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"restartpoint\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"checkpoint\00", align 1
@NBuffers = common dso_local global double 0.000000e+00, align 8
@PrevCheckPointDistance = common dso_local global double 0.000000e+00, align 8
@CheckPointDistanceEstimate = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @LogCheckpointEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LogCheckpointEnd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = call i32 (...) @GetCurrentTimestamp()
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 7), align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 11), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 10), align 4
  %17 = call i32 @TimestampDifference(i32 %15, i32 %16, i64* %3, i32* %8)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 10), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 9), align 8
  %20 = call i32 @TimestampDifference(i32 %18, i32 %19, i64* %4, i32* %9)
  %21 = load i64, i64* %3, align 8
  %22 = mul nsw i64 %21, 1000
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 1000
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @BgWriterStats, i32 0, i32 0), align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @BgWriterStats, i32 0, i32 0), align 8
  %29 = load i64, i64* %4, align 8
  %30 = mul nsw i64 %29, 1000
  %31 = load i32, i32* %9, align 4
  %32 = sdiv i32 %31, 1000
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @BgWriterStats, i32 0, i32 1), align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @BgWriterStats, i32 0, i32 1), align 8
  %37 = load i32, i32* @log_checkpoints, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  br label %104

40:                                               ; preds = %1
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 8), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 7), align 8
  %43 = call i32 @TimestampDifference(i32 %41, i32 %42, i64* %5, i32* %10)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 0), align 8
  %45 = sdiv i32 %44, 1000000
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %6, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 0), align 8
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  %50 = mul nsw i32 %49, 1000000
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %40
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 2), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 1), align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %54, %40
  %59 = load i32, i32* %13, align 4
  %60 = sdiv i32 %59, 1000000
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %7, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i64, i64* %7, align 8
  %64 = trunc i64 %63 to i32
  %65 = mul nsw i32 %64, 1000000
  %66 = sub nsw i32 %62, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* @LOG, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 6), align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 6), align 8
  %74 = sitofp i64 %73 to double
  %75 = fmul double %74, 1.000000e+02
  %76 = load double, double* @NBuffers, align 8
  %77 = fdiv double %75, %76
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 5), align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 4), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 3), align 4
  %81 = load i64, i64* %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sdiv i32 %82, 1000
  %84 = load i64, i64* %4, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sdiv i32 %85, 1000
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sdiv i32 %88, 1000
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @CheckpointStats, i32 0, i32 1), align 4
  %91 = load i64, i64* %6, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sdiv i32 %92, 1000
  %94 = load i64, i64* %7, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sdiv i32 %95, 1000
  %97 = load double, double* @PrevCheckPointDistance, align 8
  %98 = fdiv double %97, 1.024000e+03
  %99 = fptosi double %98 to i32
  %100 = load double, double* @CheckPointDistanceEstimate, align 8
  %101 = fdiv double %100, 1.024000e+03
  %102 = fptosi double %101 to i32
  %103 = call i32 @elog(i32 %67, i8* getelementptr inbounds ([226 x i8], [226 x i8]* @.str, i64 0, i64 0), i8* %71, i64 %72, double %77, i32 %78, i32 %79, i32 %80, i64 %81, i32 %83, i64 %84, i32 %86, i64 %87, i32 %89, i32 %90, i64 %91, i32 %93, i64 %94, i32 %96, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %58, %39
  ret void
}

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @TimestampDifference(i32, i32, i64*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i8*, i64, double, i32, i32, i32, i64, i32, i64, i32, i64, i32, i32, i64, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
