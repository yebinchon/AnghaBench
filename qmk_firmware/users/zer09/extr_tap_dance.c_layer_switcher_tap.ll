; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_tap_dance.c_layer_switcher_tap.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_tap_dance.c_layer_switcher_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gm_layer_act = common dso_local global i32 0, align 4
@active_layer = common dso_local global i64 0, align 8
@_BL = common dso_local global i64 0, align 8
@_GM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @layer_switcher_tap(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @gm_layer_act, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load i64, i64* @active_layer, align 8
  %7 = call i32 @layer_off(i64 %6)
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @_BL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load i64, i64* @_GM, align 8
  %13 = call i32 @layer_on(i64 %12)
  %14 = load i64, i64* @_GM, align 8
  store i64 %14, i64* @active_layer, align 8
  br label %19

15:                                               ; preds = %5
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @layer_on(i64 %16)
  %18 = load i64, i64* %2, align 8
  store i64 %18, i64* @active_layer, align 8
  br label %19

19:                                               ; preds = %15, %11
  br label %26

20:                                               ; preds = %1
  %21 = load i64, i64* @active_layer, align 8
  %22 = call i32 @layer_off(i64 %21)
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @layer_on(i64 %23)
  %25 = load i64, i64* %2, align 8
  store i64 %25, i64* @active_layer, align 8
  br label %26

26:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @layer_off(i64) #1

declare dso_local i32 @layer_on(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
