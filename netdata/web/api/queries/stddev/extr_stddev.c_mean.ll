; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/stddev/extr_stddev.c_mean.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/stddev/extr_stddev.c_mean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grouping_stddev = type { i64, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.grouping_stddev*)* @mean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @mean(%struct.grouping_stddev* %0) #0 {
  %2 = alloca %struct.grouping_stddev*, align 8
  store %struct.grouping_stddev* %0, %struct.grouping_stddev** %2, align 8
  %3 = load %struct.grouping_stddev*, %struct.grouping_stddev** %2, align 8
  %4 = getelementptr inbounds %struct.grouping_stddev, %struct.grouping_stddev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.grouping_stddev*, %struct.grouping_stddev** %2, align 8
  %9 = getelementptr inbounds %struct.grouping_stddev, %struct.grouping_stddev* %8, i32 0, i32 1
  %10 = load double, double* %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi double [ %10, %7 ], [ 0.000000e+00, %11 ]
  ret double %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
