; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/twey/extr_keymap.c_press_without.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/twey/extr_keymap.c_press_without.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@press_without.was_on = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @press_without(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @layer_state_is(i32 %10)
  store i32 %11, i32* @press_without.was_on, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @layer_off(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @register_code(i32 %14)
  br label %25

16:                                               ; preds = %3
  %17 = load i32, i32* @press_without.was_on, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @layer_on(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @unregister_code(i32 %23)
  br label %25

25:                                               ; preds = %22, %9
  ret void
}

declare dso_local i32 @layer_state_is(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
