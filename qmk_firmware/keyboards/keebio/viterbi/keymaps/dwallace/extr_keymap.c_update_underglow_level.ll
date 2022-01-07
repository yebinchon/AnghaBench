; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/viterbi/keymaps/dwallace/extr_keymap.c_update_underglow_level.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/viterbi/keymaps/dwallace/extr_keymap.c_update_underglow_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_mods = common dso_local global i32 0, align 4
@rgb_dimming = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@RGBLED_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_underglow_level() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @get_mods()
  %7 = load i32, i32* @last_mods, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %98

10:                                               ; preds = %0
  %11 = call i32 (...) @get_mods()
  store i32 %11, i32* @last_mods, align 4
  %12 = call i32 (...) @get_mods()
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* @rgb_dimming, align 4
  %16 = ashr i32 16, %15
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @rgblight_setrgb(i32 %17, i32 %18, i32 %19)
  br label %98

21:                                               ; preds = %10
  %22 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 16, i1 false)
  store i32 0, i32* %3, align 4
  %23 = call i32 @rgblight_setrgb(i32 0, i32 0, i32 0)
  %24 = call i32 (...) @get_mods()
  %25 = load i32, i32* @KC_LSFT, align 4
  %26 = call i32 @MOD_BIT(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %32
  store i32 16711680, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = call i32 (...) @get_mods()
  %36 = load i32, i32* @KC_LCTL, align 4
  %37 = call i32 @MOD_BIT(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %43
  store i32 65280, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %34
  %46 = call i32 (...) @get_mods()
  %47 = load i32, i32* @KC_LALT, align 4
  %48 = call i32 @MOD_BIT(i32 %47)
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %54
  store i32 255, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %45
  %57 = call i32 (...) @get_mods()
  %58 = load i32, i32* @KC_LGUI, align 4
  %59 = call i32 @MOD_BIT(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %65
  store i32 16776960, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %56
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %93, %67
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %89, %72
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @RGBLED_NUM, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  %78 = mul nsw i32 %75, %77
  %79 = load i32, i32* %3, align 4
  %80 = sdiv i32 %78, %79
  %81 = icmp slt i32 %74, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %73
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @SET_LED_RGB(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %73

92:                                               ; preds = %73
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %68

96:                                               ; preds = %68
  %97 = call i32 (...) @rgblight_set()
  br label %98

98:                                               ; preds = %96, %14, %9
  ret void
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @rgblight_setrgb(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @SET_LED_RGB(i32, i32) #1

declare dso_local i32 @rgblight_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
