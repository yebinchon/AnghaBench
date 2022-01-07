; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_setrgb_range.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_setrgb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@rgblight_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@RGBLED_NUM = common dso_local global i64 0, align 8
@led = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgblight_setrgb_range(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %5
  %15 = load i64, i64* %9, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @RGBLED_NUM, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %14, %5
  br label %54

26:                                               ; preds = %21
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %48, %26
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i64 %33, i64* %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i64 %38, i64* %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i64 %43, i64* %47, align 8
  br label %48

48:                                               ; preds = %32
  %49 = load i64, i64* %11, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %11, align 8
  br label %28

51:                                               ; preds = %28
  %52 = call i32 (...) @rgblight_set()
  %53 = call i32 @wait_ms(i32 1)
  br label %54

54:                                               ; preds = %51, %25
  ret void
}

declare dso_local i32 @rgblight_set(...) #1

declare dso_local i32 @wait_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
