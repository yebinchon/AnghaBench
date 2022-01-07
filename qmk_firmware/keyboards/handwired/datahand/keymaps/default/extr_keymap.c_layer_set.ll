; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/datahand/keymaps/default/extr_keymap.c_layer_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/datahand/keymaps/default/extr_keymap.c_layer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAS = common dso_local global i32 0, align 4
@NAS_NUMLOCK = common dso_local global i32 0, align 4
@NAS_TENKEY = common dso_local global i32 0, align 4
@NAS_TENKEY_NUMLOCK = common dso_local global i32 0, align 4
@tenkey_enabled = common dso_local global i64 0, align 8
@LED_NAS = common dso_local global i32 0, align 4
@LED_TENKEY = common dso_local global i32 0, align 4
@FUNCTION_MOUSE = common dso_local global i32 0, align 4
@FUNCTION_ARROWS = common dso_local global i32 0, align 4
@LED_FN = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@LED_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @layer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layer_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @layer_on(i32 %8)
  br label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @layer_off(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @NAS, align 4
  %15 = call i64 @layer_state_is(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @NAS_NUMLOCK, align 4
  %19 = call i64 @layer_state_is(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @NAS_TENKEY, align 4
  %23 = call i64 @layer_state_is(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @NAS_TENKEY_NUMLOCK, align 4
  %27 = call i64 @layer_state_is(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25, %21, %17, %13
  %30 = load i64, i64* @tenkey_enabled, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @LED_NAS, align 4
  %34 = load i32, i32* @LED_TENKEY, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @mode_led_set(i32 %35)
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @LED_NAS, align 4
  %39 = call i32 @mode_led_set(i32 %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %61

41:                                               ; preds = %25
  %42 = load i32, i32* @FUNCTION_MOUSE, align 4
  %43 = call i64 @layer_state_is(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @FUNCTION_ARROWS, align 4
  %47 = call i64 @layer_state_is(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @LED_FN, align 4
  %51 = call i32 @mode_led_set(i32 %50)
  br label %60

52:                                               ; preds = %45
  %53 = load i32, i32* @NORMAL, align 4
  %54 = call i64 @layer_state_is(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @LED_NORMAL, align 4
  %58 = call i32 @mode_led_set(i32 %57)
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %40
  ret void
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i64 @layer_state_is(i32) #1

declare dso_local i32 @mode_led_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
