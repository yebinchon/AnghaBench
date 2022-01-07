; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_setrgb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_setrgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@rgblight_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@effect_start_pos = common dso_local global i64 0, align 8
@effect_end_pos = common dso_local global i64 0, align 8
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
  br label %38

11:                                               ; preds = %3
  %12 = load i64, i64* @effect_start_pos, align 8
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %33, %11
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @effect_end_pos, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 %18, i64* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i64 %28, i64* %32, align 8
  br label %33

33:                                               ; preds = %17
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %13

36:                                               ; preds = %13
  %37 = call i32 (...) @rgblight_set()
  br label %38

38:                                               ; preds = %36, %10
  ret void
}

declare dso_local i32 @rgblight_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
