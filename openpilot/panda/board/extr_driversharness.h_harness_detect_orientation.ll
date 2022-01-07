; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversharness.h_harness_detect_orientation.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversharness.h_harness_detect_orientation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@HARNESS_STATUS_NC = common dso_local global i32 0, align 4
@current_board = common dso_local global %struct.TYPE_4__* null, align 8
@HARNESS_CONNECTED_THRESHOLD = common dso_local global i64 0, align 8
@HARNESS_STATUS_NORMAL = common dso_local global i32 0, align 4
@HARNESS_STATUS_FLIPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @harness_detect_orientation() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @HARNESS_STATUS_NC, align 4
  store i32 %4, i32* %1, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @adc_get(i32 %9)
  store i64 %10, i64* %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_board, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @adc_get(i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @HARNESS_CONNECTED_THRESHOLD, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %0
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @HARNESS_CONNECTED_THRESHOLD, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20, %0
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @HARNESS_STATUS_NORMAL, align 4
  store i32 %29, i32* %1, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @HARNESS_STATUS_FLIPPED, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i64 @adc_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
