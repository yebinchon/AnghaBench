; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/ericgebhart/extr_ericgebhart.c_send_keycode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/ericgebhart/extr_ericgebhart.c_send_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KC_LSFT = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_keycode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @get_mods()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @KC_LSFT, align 4
  %8 = call i32 @MOD_BIT(i32 %7)
  %9 = load i32, i32* @KC_RSFT, align 4
  %10 = call i32 @MOD_BIT(i32 %9)
  %11 = or i32 %8, %10
  %12 = and i32 %6, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @KC_LSFT, align 4
  %14 = call i32 @MOD_BIT(i32 %13)
  %15 = load i32, i32* @KC_RSFT, align 4
  %16 = call i32 @MOD_BIT(i32 %15)
  %17 = or i32 %14, %16
  %18 = call i32 @unregister_mods(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @SHIFTED_MODS(i32 %22)
  %24 = call i32 @register_mods(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @SHIFTED_KEY(i32 %25)
  %27 = call i32 @register_code(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @SHIFTED_KEY(i32 %28)
  %30 = call i32 @unregister_code(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @SHIFTED_MODS(i32 %31)
  %33 = call i32 @unregister_mods(i32 %32)
  br label %47

34:                                               ; preds = %1
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @UNSHIFTED_MODS(i32 %35)
  %37 = call i32 @register_mods(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @UNSHIFTED_KEY(i32 %38)
  %40 = call i32 @register_code(i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @UNSHIFTED_KEY(i32 %41)
  %43 = call i32 @unregister_code(i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @UNSHIFTED_MODS(i32 %44)
  %46 = call i32 @unregister_mods(i32 %45)
  br label %47

47:                                               ; preds = %34, %21
  %48 = call i32 (...) @clear_mods()
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @register_mods(i32 %49)
  ret void
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @unregister_mods(i32) #1

declare dso_local i32 @register_mods(i32) #1

declare dso_local i32 @SHIFTED_MODS(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @SHIFTED_KEY(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @UNSHIFTED_MODS(i32) #1

declare dso_local i32 @UNSHIFTED_KEY(i32) #1

declare dso_local i32 @clear_mods(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
