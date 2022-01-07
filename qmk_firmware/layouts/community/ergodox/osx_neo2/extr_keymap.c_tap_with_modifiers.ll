; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/osx_neo2/extr_keymap.c_tap_with_modifiers.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/osx_neo2/extr_keymap.c_tap_with_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MOD_MASK_SHIFT = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@MOD_MASK_CTRL = common dso_local global i32 0, align 4
@KC_LCTRL = common dso_local global i32 0, align 4
@MOD_MASK_ALT = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@MOD_MASK_GUI = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tap_with_modifiers(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @get_mods()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @KC_LSFT, align 4
  %18 = call i32 @register_code(i32 %17)
  br label %19

19:                                               ; preds = %16, %11, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MOD_MASK_CTRL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MOD_MASK_CTRL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @KC_LCTRL, align 4
  %31 = call i32 @register_code(i32 %30)
  br label %32

32:                                               ; preds = %29, %24, %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MOD_MASK_ALT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MOD_MASK_ALT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @KC_LALT, align 4
  %44 = call i32 @register_code(i32 %43)
  br label %45

45:                                               ; preds = %42, %37, %32
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MOD_MASK_GUI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MOD_MASK_GUI, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @KC_LGUI, align 4
  %57 = call i32 @register_code(i32 %56)
  br label %58

58:                                               ; preds = %55, %50, %45
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @register_code(i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @unregister_code(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @KC_LSFT, align 4
  %74 = call i32 @unregister_code(i32 %73)
  br label %75

75:                                               ; preds = %72, %67, %58
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @MOD_MASK_CTRL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @MOD_MASK_CTRL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @KC_LCTRL, align 4
  %87 = call i32 @unregister_code(i32 %86)
  br label %88

88:                                               ; preds = %85, %80, %75
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @MOD_MASK_ALT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @MOD_MASK_ALT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @KC_LALT, align 4
  %100 = call i32 @unregister_code(i32 %99)
  br label %101

101:                                              ; preds = %98, %93, %88
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @MOD_MASK_GUI, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @MOD_MASK_GUI, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @KC_LGUI, align 4
  %113 = call i32 @unregister_code(i32 %112)
  br label %114

114:                                              ; preds = %111, %106, %101
  ret void
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
