; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_lights.c_set_layer_led.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_lights.c_set_layer_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_layer_led.p_lyr = internal global i64 0, align 8
@set_layer_led.p_dim = internal global i64 0, align 8
@led_dim = common dso_local global i64 0, align 8
@_LC = common dso_local global i64** null, align 8
@_VL = common dso_local global i64 0, align 8
@RGBLED_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_layer_led(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* @set_layer_led.p_lyr, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i64, i64* @set_layer_led.p_dim, align 8
  %14 = load i64, i64* @led_dim, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = call i32 (...) @is_first_run()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %67

20:                                               ; preds = %16, %12, %1
  %21 = load i64, i64* %3, align 8
  store i64 %21, i64* @set_layer_led.p_lyr, align 8
  %22 = load i64, i64* @led_dim, align 8
  store i64 %22, i64* @set_layer_led.p_dim, align 8
  %23 = load i64**, i64*** @_LC, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i64*, i64** %23, i64 %24
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  %29 = load i64**, i64*** @_LC, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i64*, i64** %29, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  %35 = load i64**, i64*** @_LC, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i64*, i64** %35, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* @set_layer_led.p_lyr, align 8
  %42 = load i64, i64* @_VL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = load i64, i64* @set_layer_led.p_dim, align 8
  %46 = icmp ult i64 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %50

48:                                               ; preds = %44, %20
  %49 = load i64, i64* @set_layer_led.p_dim, align 8
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i64 [ 1, %47 ], [ %49, %48 ]
  store i64 %51, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %63, %50
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @RGBLED_NUM, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @SET_LED_RGB(i64 %57, i64 %58, i64 %59, i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %8, align 8
  br label %52

66:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @is_first_run(...) #1

declare dso_local i32 @SET_LED_RGB(i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
