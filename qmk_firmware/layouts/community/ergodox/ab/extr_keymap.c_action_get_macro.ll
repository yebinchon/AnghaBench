; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/ab/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/ab/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINS = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@E = common dso_local global i32 0, align 4
@M = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@C = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@SPC = common dso_local global i32 0, align 4
@L = common dso_local global i32 0, align 4
@ENT = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %56 [
    i32 128, label %9
    i32 130, label %26
    i32 129, label %41
  ]

9:                                                ; preds = %3
  %10 = call i32 @T(i32 1)
  %11 = call i32 @T(i32 2)
  %12 = call i32 @T(i32 3)
  %13 = load i32, i32* @MINS, align 4
  %14 = call i32 @T(i32 %13)
  %15 = call i32 @T(i32 1)
  %16 = call i32 @T(i32 2)
  %17 = call i32 @T(i32 3)
  %18 = load i32, i32* @MINS, align 4
  %19 = call i32 @T(i32 %18)
  %20 = call i32 @T(i32 1)
  %21 = call i32 @T(i32 2)
  %22 = call i32 @T(i32 3)
  %23 = call i32 @T(i32 4)
  %24 = load i32, i32* @END, align 4
  %25 = call i32* (i32, i32, i32, i32, i32, i32, i32, ...) @MACRODOWN(i32 %10, i32 %11, i32 %12, i32 %14, i32 %15, i32 %16, i32 %17, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  store i32* %25, i32** %4, align 8
  br label %58

26:                                               ; preds = %3
  %27 = load i32, i32* @E, align 4
  %28 = call i32 @T(i32 %27)
  %29 = load i32, i32* @M, align 4
  %30 = call i32 @T(i32 %29)
  %31 = load i32, i32* @A, align 4
  %32 = call i32 @T(i32 %31)
  %33 = load i32, i32* @C, align 4
  %34 = call i32 @T(i32 %33)
  %35 = load i32, i32* @S, align 4
  %36 = call i32 @T(i32 %35)
  %37 = load i32, i32* @SPC, align 4
  %38 = call i32 @T(i32 %37)
  %39 = load i32, i32* @END, align 4
  %40 = call i32* (i32, i32, i32, i32, i32, i32, i32, ...) @MACRODOWN(i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %39)
  store i32* %40, i32** %4, align 8
  br label %58

41:                                               ; preds = %3
  %42 = load i32, i32* @L, align 4
  %43 = call i32 @T(i32 %42)
  %44 = load i32, i32* @S, align 4
  %45 = call i32 @T(i32 %44)
  %46 = load i32, i32* @SPC, align 4
  %47 = call i32 @T(i32 %46)
  %48 = load i32, i32* @MINS, align 4
  %49 = call i32 @T(i32 %48)
  %50 = load i32, i32* @L, align 4
  %51 = call i32 @T(i32 %50)
  %52 = load i32, i32* @ENT, align 4
  %53 = call i32 @T(i32 %52)
  %54 = load i32, i32* @END, align 4
  %55 = call i32* (i32, i32, i32, i32, i32, i32, i32, ...) @MACRODOWN(i32 %43, i32 %45, i32 %47, i32 %49, i32 %51, i32 %53, i32 %54)
  store i32* %55, i32** %4, align 8
  br label %58

56:                                               ; preds = %3
  %57 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %57, i32** %4, align 8
  br label %58

58:                                               ; preds = %56, %41, %26, %9
  %59 = load i32*, i32** %4, align 8
  ret i32* %59
}

declare dso_local i32* @MACRODOWN(i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
