; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_led_matrix.c_led_matrix_prepare.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_led_matrix.c_led_matrix_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64*, i64* }

@ISSI3733_LED_COUNT = common dso_local global i64 0, align 8
@led_map = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_matrix_prepare() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %25, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @ISSI3733_LED_COUNT, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_map, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i64*, i64** %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_map, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_map, align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %6
  %26 = load i64, i64* %1, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %1, align 8
  br label %2

28:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
