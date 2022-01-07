; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_rgblight_setrgb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_rgblight_setrgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@rgblight_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@RGBLED_NUM = common dso_local global i64 0, align 8
@led = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgblight_setrgb(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 0), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %37

11:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @RGBLED_NUM, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 %17, i64* %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i64 %22, i64* %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i64 %27, i64* %31, align 8
  br label %32

32:                                               ; preds = %16
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %7, align 8
  br label %12

35:                                               ; preds = %12
  %36 = call i32 (...) @rgblight_set()
  br label %37

37:                                               ; preds = %35, %10
  ret void
}

declare dso_local i32 @rgblight_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
