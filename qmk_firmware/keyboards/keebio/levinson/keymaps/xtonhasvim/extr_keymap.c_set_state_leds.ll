; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/xtonhasvim/extr_keymap.c_set_state_leds.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/xtonhasvim/extr_keymap.c_set_state_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4
@C_BLU = common dso_local global i32 0, align 4
@C_GRN = common dso_local global i32 0, align 4
@C_RED = common dso_local global i32 0, align 4
@C_PRP = common dso_local global i32 0, align 4
@vstate = common dso_local global i32 0, align 4
@C_YAN = common dso_local global i32 0, align 4
@C_ORG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_state_leds() #0 {
  %1 = call i32 (...) @rgblight_get_mode()
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %59

3:                                                ; preds = %0
  %4 = load i32, i32* @layer_state, align 4
  %5 = call i32 @biton32(i32 %4)
  switch i32 %5, label %54 [
    i32 128, label %6
    i32 131, label %10
    i32 133, label %14
    i32 129, label %18
    i32 130, label %22
    i32 132, label %26
  ]

6:                                                ; preds = %3
  %7 = load i32, i32* @C_BLU, align 4
  %8 = load i32, i32* @C_GRN, align 4
  %9 = call i32 @rgbflag(i32 %7, i32 %8)
  br label %58

10:                                               ; preds = %3
  %11 = load i32, i32* @C_BLU, align 4
  %12 = load i32, i32* @C_RED, align 4
  %13 = call i32 @rgbflag(i32 %11, i32 %12)
  br label %58

14:                                               ; preds = %3
  %15 = load i32, i32* @C_BLU, align 4
  %16 = load i32, i32* @C_PRP, align 4
  %17 = call i32 @rgbflag(i32 %15, i32 %16)
  br label %58

18:                                               ; preds = %3
  %19 = load i32, i32* @C_RED, align 4
  %20 = load i32, i32* @C_PRP, align 4
  %21 = call i32 @rgbflag(i32 %19, i32 %20)
  br label %58

22:                                               ; preds = %3
  %23 = load i32, i32* @C_RED, align 4
  %24 = load i32, i32* @C_GRN, align 4
  %25 = call i32 @rgbflag(i32 %23, i32 %24)
  br label %58

26:                                               ; preds = %3
  %27 = load i32, i32* @vstate, align 4
  switch i32 %27, label %49 [
    i32 137, label %28
    i32 136, label %28
    i32 135, label %28
    i32 143, label %32
    i32 142, label %32
    i32 141, label %36
    i32 140, label %36
    i32 139, label %40
    i32 134, label %44
    i32 138, label %48
  ]

28:                                               ; preds = %26, %26, %26
  %29 = load i32, i32* @C_GRN, align 4
  %30 = load i32, i32* @C_YAN, align 4
  %31 = call i32 @rgbflag(i32 %29, i32 %30)
  br label %53

32:                                               ; preds = %26, %26
  %33 = load i32, i32* @C_GRN, align 4
  %34 = load i32, i32* @C_ORG, align 4
  %35 = call i32 @rgbflag(i32 %33, i32 %34)
  br label %53

36:                                               ; preds = %26, %26
  %37 = load i32, i32* @C_GRN, align 4
  %38 = load i32, i32* @C_RED, align 4
  %39 = call i32 @rgbflag(i32 %37, i32 %38)
  br label %53

40:                                               ; preds = %26
  %41 = load i32, i32* @C_GRN, align 4
  %42 = load i32, i32* @C_BLU, align 4
  %43 = call i32 @rgbflag(i32 %41, i32 %42)
  br label %53

44:                                               ; preds = %26
  %45 = load i32, i32* @C_GRN, align 4
  %46 = load i32, i32* @C_PRP, align 4
  %47 = call i32 @rgbflag(i32 %45, i32 %46)
  br label %53

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %26, %48
  %50 = load i32, i32* @C_GRN, align 4
  %51 = load i32, i32* @C_GRN, align 4
  %52 = call i32 @rgbflag(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %44, %40, %36, %32, %28
  br label %58

54:                                               ; preds = %3
  %55 = load i32, i32* @C_YAN, align 4
  %56 = load i32, i32* @C_YAN, align 4
  %57 = call i32 @rgbflag(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %53, %22, %18, %14, %10, %6
  br label %59

59:                                               ; preds = %58, %0
  ret void
}

declare dso_local i32 @rgblight_get_mode(...) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgbflag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
