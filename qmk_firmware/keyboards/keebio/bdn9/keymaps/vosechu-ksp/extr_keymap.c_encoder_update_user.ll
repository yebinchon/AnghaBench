; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/bdn9/keymaps/vosechu-ksp/extr_keymap.c_encoder_update_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/bdn9/keymaps/vosechu-ksp/extr_keymap.c_encoder_update_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_mode = common dso_local global i32 0, align 4
@KC_VOLU = common dso_local global i32 0, align 4
@KC_VOLD = common dso_local global i32 0, align 4
@KC_DOT = common dso_local global i32 0, align 4
@KC_COMM = common dso_local global i32 0, align 4
@rcs_mode = common dso_local global i32 0, align 4
@KC_H = common dso_local global i32 0, align 4
@KC_N = common dso_local global i32 0, align 4
@KC_Q = common dso_local global i32 0, align 4
@KC_E = common dso_local global i32 0, align 4
@flight_mode = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@KC_A = common dso_local global i32 0, align 4
@KC_D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update_user(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @base_mode, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %35

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @KC_VOLU, align 4
  %15 = call i32 @tap_code(i32 %14)
  br label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @KC_VOLD, align 4
  %18 = call i32 @tap_code(i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  br label %34

20:                                               ; preds = %7
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @KC_DOT, align 4
  %28 = call i32 @tap_code(i32 %27)
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @KC_COMM, align 4
  %31 = call i32 @tap_code(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %20
  br label %34

34:                                               ; preds = %33, %19
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* @rcs_mode, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @KC_H, align 4
  %46 = call i32 @tap_code(i32 %45)
  br label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @KC_N, align 4
  %49 = call i32 @tap_code(i32 %48)
  br label %50

50:                                               ; preds = %47, %44
  br label %65

51:                                               ; preds = %38
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @KC_Q, align 4
  %59 = call i32 @tap_code(i32 %58)
  br label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @KC_E, align 4
  %62 = call i32 @tap_code(i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %35
  %67 = load i32, i32* @flight_mode, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %99

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @KC_LSFT, align 4
  %77 = call i32 @tap_code(i32 %76)
  br label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @KC_LCTL, align 4
  %80 = call i32 @tap_code(i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %98

82:                                               ; preds = %69
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @KC_A, align 4
  %90 = call i32 @LALT(i32 %89)
  %91 = call i32 @tap_code16(i32 %90)
  br label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @KC_D, align 4
  %94 = call i32 @LALT(i32 %93)
  %95 = call i32 @tap_code16(i32 %94)
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %82
  br label %98

98:                                               ; preds = %97, %81
  br label %99

99:                                               ; preds = %98, %66
  ret void
}

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @tap_code16(i32) #1

declare dso_local i32 @LALT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
