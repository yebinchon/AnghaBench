; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_count_instructions.c_determine_overhead.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_count_instructions.c_determine_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"Replacing overhead %llu with %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.event*)* @determine_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @determine_overhead(%struct.event* %0) #0 {
  %2 = alloca %struct.event*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.event* %0, %struct.event** %2, align 8
  %6 = load %struct.event*, %struct.event** %2, align 8
  %7 = call i32 @do_count_loop(%struct.event* %6, i32 0, i32 0, i32 0)
  %8 = load %struct.event*, %struct.event** %2, align 8
  %9 = getelementptr inbounds %struct.event, %struct.event* %8, i64 0
  %10 = getelementptr inbounds %struct.event, %struct.event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %33, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 100
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load %struct.event*, %struct.event** %2, align 8
  %18 = call i32 @do_count_loop(%struct.event* %17, i32 0, i32 0, i32 0)
  %19 = load %struct.event*, %struct.event** %2, align 8
  %20 = getelementptr inbounds %struct.event, %struct.event* %19, i64 0
  %21 = getelementptr inbounds %struct.event, %struct.event* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load i64, i64* %3, align 8
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %27, %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local i32 @do_count_loop(%struct.event*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
