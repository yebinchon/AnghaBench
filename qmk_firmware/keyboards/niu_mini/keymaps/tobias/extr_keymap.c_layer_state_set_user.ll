; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/niu_mini/keymaps/tobias/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/niu_mini/keymaps/tobias/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@workmode = common dso_local global i32 0, align 4
@bnumlock = common dso_local global i32 0, align 4
@KC_NLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @biton32(i32 %3)
  switch i32 %4, label %72 [
    i32 129, label %5
    i32 131, label %24
    i32 134, label %33
    i32 128, label %42
    i32 133, label %51
    i32 132, label %60
    i32 130, label %63
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @workmode, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = call i32 @rgblight_mode(i32 9)
  br label %17

10:                                               ; preds = %5
  %11 = load i32, i32* @workmode, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call i32 @rgblight_mode(i32 1)
  %15 = call i32 @rgbflag(i32 0, i32 0, i32 0)
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %8
  %18 = load i32, i32* @bnumlock, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @KC_NLCK, align 4
  %22 = call i32 @tap_code(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  br label %81

24:                                               ; preds = %1
  %25 = call i32 @rgblight_mode(i32 1)
  %26 = load i32, i32* @bnumlock, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @KC_NLCK, align 4
  %30 = call i32 @tap_code(i32 %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = call i32 @rgbflag(i32 255, i32 0, i32 0)
  br label %81

33:                                               ; preds = %1
  %34 = call i32 @rgblight_mode(i32 1)
  %35 = call i32 @rgbflag(i32 255, i32 255, i32 255)
  %36 = load i32, i32* @bnumlock, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @KC_NLCK, align 4
  %40 = call i32 @tap_code(i32 %39)
  br label %41

41:                                               ; preds = %38, %33
  br label %81

42:                                               ; preds = %1
  %43 = call i32 @rgblight_mode(i32 1)
  %44 = call i32 @rgbflag(i32 0, i32 255, i32 0)
  %45 = load i32, i32* @bnumlock, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @KC_NLCK, align 4
  %49 = call i32 @tap_code(i32 %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %81

51:                                               ; preds = %1
  %52 = call i32 @rgblight_mode(i32 1)
  %53 = call i32 @rgbflag(i32 0, i32 0, i32 255)
  %54 = load i32, i32* @bnumlock, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @KC_NLCK, align 4
  %58 = call i32 @tap_code(i32 %57)
  br label %59

59:                                               ; preds = %56, %51
  br label %81

60:                                               ; preds = %1
  %61 = call i32 @rgblight_mode(i32 1)
  %62 = call i32 @rgbflag(i32 255, i32 0, i32 255)
  br label %81

63:                                               ; preds = %1
  %64 = call i32 @rgblight_mode(i32 1)
  %65 = call i32 @rgbflag(i32 0, i32 255, i32 255)
  %66 = load i32, i32* @bnumlock, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @KC_NLCK, align 4
  %70 = call i32 @tap_code(i32 %69)
  br label %71

71:                                               ; preds = %68, %63
  br label %81

72:                                               ; preds = %1
  %73 = call i32 @rgblight_mode(i32 1)
  %74 = load i32, i32* @bnumlock, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @KC_NLCK, align 4
  %78 = call i32 @tap_code(i32 %77)
  br label %79

79:                                               ; preds = %76, %72
  %80 = call i32 @rgbflag(i32 255, i32 255, i32 255)
  br label %81

81:                                               ; preds = %79, %71, %60, %59, %50, %41, %31, %23
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @rgbflag(i32, i32, i32) #1

declare dso_local i32 @tap_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
