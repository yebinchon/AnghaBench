; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/jetpacktuxedo/extr_keymap.c_encoder_update.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/jetpacktuxedo/extr_keymap.c_encoder_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RAISE = common dso_local global i32 0, align 4
@clicky_rand = common dso_local global float 0.000000e+00, align 4
@muse_mode = common dso_local global i64 0, align 8
@muse_offset = common dso_local global i32 0, align 4
@muse_tempo = common dso_local global i32 0, align 4
@KC_RGHT = common dso_local global i32 0, align 4
@KC_LEFT = common dso_local global i32 0, align 4
@KC_DOWN = common dso_local global i32 0, align 4
@KC_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 (...) @is_clicky_on()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = load i32, i32* @_RAISE, align 4
  %7 = call i64 @IS_LAYER_ON(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load float, float* @clicky_rand, align 4
  %14 = fadd float %13, 5.000000e-01
  store float %14, float* @clicky_rand, align 4
  br label %18

15:                                               ; preds = %9
  %16 = load float, float* @clicky_rand, align 4
  %17 = fsub float %16, 5.000000e-01
  store float %17, float* @clicky_rand, align 4
  br label %18

18:                                               ; preds = %15, %12
  br label %27

19:                                               ; preds = %5
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @clicky_freq_up()
  br label %26

24:                                               ; preds = %19
  %25 = call i32 (...) @clicky_freq_down()
  br label %26

26:                                               ; preds = %24, %22
  br label %27

27:                                               ; preds = %26, %18
  br label %90

28:                                               ; preds = %1
  %29 = load i64, i64* @muse_mode, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = load i32, i32* @_RAISE, align 4
  %33 = call i64 @IS_LAYER_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @muse_offset, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @muse_offset, align 4
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @muse_offset, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* @muse_offset, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %55

45:                                               ; preds = %31
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @muse_tempo, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @muse_tempo, align 4
  br label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @muse_tempo, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* @muse_tempo, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %44
  br label %89

56:                                               ; preds = %28
  %57 = load i32, i32* @_RAISE, align 4
  %58 = call i64 @IS_LAYER_ON(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32, i32* %2, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* @KC_RGHT, align 4
  %65 = call i32 @register_code(i32 %64)
  %66 = load i32, i32* @KC_RGHT, align 4
  %67 = call i32 @unregister_code(i32 %66)
  br label %73

68:                                               ; preds = %60
  %69 = load i32, i32* @KC_LEFT, align 4
  %70 = call i32 @register_code(i32 %69)
  %71 = load i32, i32* @KC_LEFT, align 4
  %72 = call i32 @unregister_code(i32 %71)
  br label %73

73:                                               ; preds = %68, %63
  br label %88

74:                                               ; preds = %56
  %75 = load i32, i32* %2, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* @KC_DOWN, align 4
  %79 = call i32 @register_code(i32 %78)
  %80 = load i32, i32* @KC_DOWN, align 4
  %81 = call i32 @unregister_code(i32 %80)
  br label %87

82:                                               ; preds = %74
  %83 = load i32, i32* @KC_UP, align 4
  %84 = call i32 @register_code(i32 %83)
  %85 = load i32, i32* @KC_UP, align 4
  %86 = call i32 @unregister_code(i32 %85)
  br label %87

87:                                               ; preds = %82, %77
  br label %88

88:                                               ; preds = %87, %73
  br label %89

89:                                               ; preds = %88, %55
  br label %90

90:                                               ; preds = %89, %27
  ret void
}

declare dso_local i64 @is_clicky_on(...) #1

declare dso_local i64 @IS_LAYER_ON(i32) #1

declare dso_local i32 @clicky_freq_up(...) #1

declare dso_local i32 @clicky_freq_down(...) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
