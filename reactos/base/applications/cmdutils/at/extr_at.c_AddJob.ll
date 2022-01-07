; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/at/extr_at.c_AddJob.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/at/extr_at.c_AddJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@JOB_NONINTERACTIVE = common dso_local global i32 0, align 4
@JOB_RUN_PERIODICALLY = common dso_local global i32 0, align 4
@NERR_Success = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@IDS_NEW_JOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i32, i64, i64, i32)* @AddJob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddJob(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store i64 0, i64* %19, align 8
  %21 = load i64, i64* %11, align 8
  %22 = trunc i64 %21 to i32
  %23 = mul nsw i32 %22, 3600000
  %24 = load i64, i64* %12, align 8
  %25 = trunc i64 %24 to i32
  %26 = mul nsw i32 %25, 60000
  %27 = add nsw i32 %23, %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* %14, align 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load i64, i64* %15, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %8
  br label %38

36:                                               ; preds = %8
  %37 = load i32, i32* @JOB_NONINTERACTIVE, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ 0, %35 ], [ %37, %36 ]
  %40 = load i64, i64* %16, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @JOB_RUN_PERIODICALLY, align 4
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = or i32 %39, %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %17, align 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = ptrtoint %struct.TYPE_2__* %18 to i32
  %53 = call i64 @NetScheduleJobAdd(i32 %51, i32 %52, i64* %19)
  store i64 %53, i64* %20, align 8
  %54 = load i64, i64* %20, align 8
  %55 = load i64, i64* @NERR_Success, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i64, i64* %20, align 8
  %59 = call i32 @PrintErrorMessage(i64 %58)
  store i32 1, i32* %9, align 4
  br label %65

60:                                               ; preds = %45
  %61 = load i32, i32* @StdOut, align 4
  %62 = load i32, i32* @IDS_NEW_JOB, align 4
  %63 = load i64, i64* %19, align 8
  %64 = call i32 @ConResPrintf(i32 %61, i32 %62, i64 %63)
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i64 @NetScheduleJobAdd(i32, i32, i64*) #1

declare dso_local i32 @PrintErrorMessage(i64) #1

declare dso_local i32 @ConResPrintf(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
