; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/hacker_dvorak/extr_userlayer_set_state_user.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/hacker_dvorak/extr_userlayer_set_state_user.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGBLIGHT_MODE_STATIC_LIGHT = common dso_local global i32 0, align 4
@PLOVER_MODE = common dso_local global i32 0, align 4
@RGBLIGHT_MODE_BREATHING = common dso_local global i32 0, align 4
@RGBLIGHT_MODE_KNIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @biton32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %106 [
    i32 135, label %7
    i32 128, label %16
    i32 133, label %26
    i32 137, label %36
    i32 130, label %46
    i32 129, label %56
    i32 132, label %66
    i32 131, label %76
    i32 136, label %86
    i32 134, label %96
  ]

7:                                                ; preds = %1
  %8 = call i32 (...) @rgblight_sethsv_noeeprom_green()
  %9 = load i32, i32* @RGBLIGHT_MODE_STATIC_LIGHT, align 4
  %10 = call i32 @rgblight_mode_noeeprom(i32 %9)
  %11 = load i32, i32* @PLOVER_MODE, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 (...) @plover_toggle()
  store i32 0, i32* @PLOVER_MODE, align 4
  br label %15

15:                                               ; preds = %13, %7
  br label %107

16:                                               ; preds = %1
  %17 = call i32 (...) @rgblight_sethsv_noeeprom_red()
  %18 = load i32, i32* @RGBLIGHT_MODE_BREATHING, align 4
  %19 = add nsw i32 %18, 3
  %20 = call i32 @rgblight_mode_noeeprom(i32 %19)
  %21 = load i32, i32* @PLOVER_MODE, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 (...) @plover_toggle()
  store i32 1, i32* @PLOVER_MODE, align 4
  br label %25

25:                                               ; preds = %23, %16
  br label %107

26:                                               ; preds = %1
  %27 = call i32 (...) @rgblight_sethsv_noeeprom_red()
  %28 = load i32, i32* @RGBLIGHT_MODE_KNIGHT, align 4
  %29 = add nsw i32 %28, 2
  %30 = call i32 @rgblight_mode_noeeprom(i32 %29)
  %31 = load i32, i32* @PLOVER_MODE, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 (...) @plover_toggle()
  store i32 0, i32* @PLOVER_MODE, align 4
  br label %35

35:                                               ; preds = %33, %26
  br label %107

36:                                               ; preds = %1
  %37 = call i32 (...) @rgblight_sethsv_noeeprom_blue()
  %38 = load i32, i32* @RGBLIGHT_MODE_KNIGHT, align 4
  %39 = add nsw i32 %38, 2
  %40 = call i32 @rgblight_mode_noeeprom(i32 %39)
  %41 = load i32, i32* @PLOVER_MODE, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 (...) @plover_toggle()
  store i32 0, i32* @PLOVER_MODE, align 4
  br label %45

45:                                               ; preds = %43, %36
  br label %107

46:                                               ; preds = %1
  %47 = call i32 (...) @rgblight_sethsv_noeeprom_blue()
  %48 = load i32, i32* @RGBLIGHT_MODE_KNIGHT, align 4
  %49 = add nsw i32 %48, 2
  %50 = call i32 @rgblight_mode_noeeprom(i32 %49)
  %51 = load i32, i32* @PLOVER_MODE, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 (...) @plover_toggle()
  store i32 0, i32* @PLOVER_MODE, align 4
  br label %55

55:                                               ; preds = %53, %46
  br label %107

56:                                               ; preds = %1
  %57 = call i32 (...) @rgblight_sethsv_noeeprom_blue()
  %58 = load i32, i32* @RGBLIGHT_MODE_KNIGHT, align 4
  %59 = add nsw i32 %58, 2
  %60 = call i32 @rgblight_mode_noeeprom(i32 %59)
  %61 = load i32, i32* @PLOVER_MODE, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (...) @plover_toggle()
  store i32 0, i32* @PLOVER_MODE, align 4
  br label %65

65:                                               ; preds = %63, %56
  br label %107

66:                                               ; preds = %1
  %67 = call i32 (...) @rgblight_sethsv_noeeprom_cyan()
  %68 = load i32, i32* @RGBLIGHT_MODE_KNIGHT, align 4
  %69 = add nsw i32 %68, 2
  %70 = call i32 @rgblight_mode_noeeprom(i32 %69)
  %71 = load i32, i32* @PLOVER_MODE, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i32 (...) @plover_toggle()
  store i32 0, i32* @PLOVER_MODE, align 4
  br label %75

75:                                               ; preds = %73, %66
  br label %107

76:                                               ; preds = %1
  %77 = call i32 (...) @rgblight_sethsv_noeeprom_yellow()
  %78 = load i32, i32* @RGBLIGHT_MODE_KNIGHT, align 4
  %79 = add nsw i32 %78, 2
  %80 = call i32 @rgblight_mode_noeeprom(i32 %79)
  %81 = load i32, i32* @PLOVER_MODE, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = call i32 (...) @plover_toggle()
  store i32 0, i32* @PLOVER_MODE, align 4
  br label %85

85:                                               ; preds = %83, %76
  br label %107

86:                                               ; preds = %1
  %87 = call i32 (...) @rgblight_sethsv_noeeprom_magenta()
  %88 = load i32, i32* @RGBLIGHT_MODE_KNIGHT, align 4
  %89 = add nsw i32 %88, 2
  %90 = call i32 @rgblight_mode_noeeprom(i32 %89)
  %91 = load i32, i32* @PLOVER_MODE, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 (...) @plover_toggle()
  store i32 0, i32* @PLOVER_MODE, align 4
  br label %95

95:                                               ; preds = %93, %86
  br label %107

96:                                               ; preds = %1
  %97 = call i32 (...) @rgblight_sethsv_noeeprom_magenta()
  %98 = load i32, i32* @RGBLIGHT_MODE_KNIGHT, align 4
  %99 = add nsw i32 %98, 2
  %100 = call i32 @rgblight_mode_noeeprom(i32 %99)
  %101 = load i32, i32* @PLOVER_MODE, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = call i32 (...) @plover_toggle()
  store i32 0, i32* @PLOVER_MODE, align 4
  br label %105

105:                                              ; preds = %103, %96
  br label %107

106:                                              ; preds = %1
  br label %107

107:                                              ; preds = %106, %105, %95, %85, %75, %65, %55, %45, %35, %25, %15
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_green(...) #1

declare dso_local i32 @rgblight_mode_noeeprom(i32) #1

declare dso_local i32 @plover_toggle(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_red(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_blue(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_cyan(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_yellow(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_magenta(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
