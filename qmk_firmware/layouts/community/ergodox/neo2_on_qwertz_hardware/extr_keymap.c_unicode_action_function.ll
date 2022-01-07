; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/neo2_on_qwertz_hardware/extr_keymap.c_unicode_action_function.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/neo2_on_qwertz_hardware/extr_keymap.c_unicode_action_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unicode_mode = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@KC_PPLS = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_U = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unicode_action_function(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @unicode_mode, align 4
  switch i32 %5, label %101 [
    i32 128, label %6
    i32 130, label %51
    i32 129, label %100
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @KC_LALT, align 4
  %8 = call i32 @register_code(i32 %7)
  %9 = load i32, i32* @KC_PPLS, align 4
  %10 = call i32 @register_code(i32 %9)
  %11 = load i32, i32* @KC_PPLS, align 4
  %12 = call i32 @unregister_code(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 240
  %15 = ashr i32 %14, 4
  %16 = call i32 @hextokeycode(i32 %15)
  %17 = call i32 @register_code(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 240
  %20 = ashr i32 %19, 4
  %21 = call i32 @hextokeycode(i32 %20)
  %22 = call i32 @unregister_code(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 15
  %25 = call i32 @hextokeycode(i32 %24)
  %26 = call i32 @register_code(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 15
  %29 = call i32 @hextokeycode(i32 %28)
  %30 = call i32 @unregister_code(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 240
  %33 = ashr i32 %32, 4
  %34 = call i32 @hextokeycode(i32 %33)
  %35 = call i32 @register_code(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 240
  %38 = ashr i32 %37, 4
  %39 = call i32 @hextokeycode(i32 %38)
  %40 = call i32 @unregister_code(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 15
  %43 = call i32 @hextokeycode(i32 %42)
  %44 = call i32 @register_code(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 15
  %47 = call i32 @hextokeycode(i32 %46)
  %48 = call i32 @unregister_code(i32 %47)
  %49 = load i32, i32* @KC_LALT, align 4
  %50 = call i32 @unregister_code(i32 %49)
  br label %101

51:                                               ; preds = %2
  %52 = load i32, i32* @KC_LCTL, align 4
  %53 = call i32 @register_code(i32 %52)
  %54 = load i32, i32* @KC_LSFT, align 4
  %55 = call i32 @register_code(i32 %54)
  %56 = load i32, i32* @KC_U, align 4
  %57 = call i32 @register_code(i32 %56)
  %58 = load i32, i32* @KC_U, align 4
  %59 = call i32 @unregister_code(i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, 240
  %62 = ashr i32 %61, 4
  %63 = call i32 @hextokeycode(i32 %62)
  %64 = call i32 @register_code(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 240
  %67 = ashr i32 %66, 4
  %68 = call i32 @hextokeycode(i32 %67)
  %69 = call i32 @unregister_code(i32 %68)
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, 15
  %72 = call i32 @hextokeycode(i32 %71)
  %73 = call i32 @register_code(i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, 15
  %76 = call i32 @hextokeycode(i32 %75)
  %77 = call i32 @unregister_code(i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, 240
  %80 = ashr i32 %79, 4
  %81 = call i32 @hextokeycode(i32 %80)
  %82 = call i32 @register_code(i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 240
  %85 = ashr i32 %84, 4
  %86 = call i32 @hextokeycode(i32 %85)
  %87 = call i32 @unregister_code(i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, 15
  %90 = call i32 @hextokeycode(i32 %89)
  %91 = call i32 @register_code(i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, 15
  %94 = call i32 @hextokeycode(i32 %93)
  %95 = call i32 @unregister_code(i32 %94)
  %96 = load i32, i32* @KC_LCTL, align 4
  %97 = call i32 @unregister_code(i32 %96)
  %98 = load i32, i32* @KC_LSFT, align 4
  %99 = call i32 @unregister_code(i32 %98)
  br label %101

100:                                              ; preds = %2
  br label %101

101:                                              ; preds = %2, %100, %51, %6
  ret void
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @hextokeycode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
