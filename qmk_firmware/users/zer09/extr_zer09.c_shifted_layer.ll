; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_zer09.c_shifted_layer.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_zer09.c_shifted_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shifted_layer.is_shifted = internal global i32 0, align 4
@c_lyr = common dso_local global i64 0, align 8
@_VL = common dso_local global i64 0, align 8
@KC_LSFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shifted_layer() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @c_lyr, align 8
  %3 = load i64, i64* @_VL, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i32, i32* @shifted_layer.is_shifted, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @KC_LSFT, align 4
  %10 = call i32 @register_code(i32 %9)
  store i32 1, i32* @shifted_layer.is_shifted, align 4
  store i32 1, i32* %1, align 4
  br label %20

11:                                               ; preds = %5
  br label %19

12:                                               ; preds = %0
  %13 = load i32, i32* @shifted_layer.is_shifted, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @KC_LSFT, align 4
  %17 = call i32 @unregister_code(i32 %16)
  store i32 0, i32* @shifted_layer.is_shifted, align 4
  store i32 1, i32* %1, align 4
  br label %20

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %11
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %19, %15, %8
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
