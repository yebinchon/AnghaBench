; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrd.c_rrd_algorithm_id.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrd.c_rrd_algorithm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RRD_ALGORITHM_INCREMENTAL_NAME = common dso_local global i32 0, align 4
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE_NAME = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@RRD_ALGORITHM_PCENT_OVER_ROW_TOTAL_NAME = common dso_local global i32 0, align 4
@RRD_ALGORITHM_PCENT_OVER_ROW_TOTAL = common dso_local global i32 0, align 4
@RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL_NAME = common dso_local global i32 0, align 4
@RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrd_algorithm_id(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL_NAME, align 4
  %6 = call i64 @strcmp(i8* %4, i32 %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  store i32 %9, i32* %2, align 4
  br label %33

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE_NAME, align 4
  %13 = call i64 @strcmp(i8* %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %10
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_ROW_TOTAL_NAME, align 4
  %20 = call i64 @strcmp(i8* %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_ROW_TOTAL, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL_NAME, align 4
  %27 = call i64 @strcmp(i8* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @RRD_ALGORITHM_PCENT_OVER_DIFF_TOTAL, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29, %22, %15, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
