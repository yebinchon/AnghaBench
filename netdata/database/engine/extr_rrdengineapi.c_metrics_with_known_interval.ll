; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_metrics_with_known_interval.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_metrics_with_known_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdeng_page_descr = type { i64, i64, i32 }

@INVALID_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrdeng_page_descr*)* @metrics_with_known_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metrics_with_known_interval(%struct.rrdeng_page_descr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rrdeng_page_descr*, align 8
  %4 = alloca i32, align 4
  store %struct.rrdeng_page_descr* %0, %struct.rrdeng_page_descr** %3, align 8
  %5 = load i64, i64* @INVALID_TIME, align 8
  %6 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %3, align 8
  %7 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @INVALID_TIME, align 8
  %12 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %3, align 8
  %13 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ true, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %36

22:                                               ; preds = %16
  %23 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %3, align 8
  %24 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ugt i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %36

35:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %34, %21
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
