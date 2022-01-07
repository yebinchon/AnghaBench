; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/win10_writers-block/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/win10_writers-block/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@key_timer = common dso_local global i32 0, align 4
@LCTL = common dso_local global i32 0, align 4
@C = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@V = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %40 [
    i32 0, label %9
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 (...) @timer_read()
  store i32 %16, i32* @key_timer, align 4
  br label %39

17:                                               ; preds = %9
  %18 = load i32, i32* @key_timer, align 4
  %19 = call i32 @timer_elapsed(i32 %18)
  %20 = icmp sgt i32 %19, 150
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32, i32* @LCTL, align 4
  %23 = call i32 @D(i32 %22)
  %24 = load i32, i32* @C, align 4
  %25 = call i32 @T(i32 %24)
  %26 = load i32, i32* @LCTL, align 4
  %27 = call i32 @U(i32 %26)
  %28 = load i32, i32* @END, align 4
  %29 = call i32* @MACRO(i32 %23, i32 %25, i32 %27, i32 %28)
  store i32* %29, i32** %4, align 8
  br label %42

30:                                               ; preds = %17
  %31 = load i32, i32* @LCTL, align 4
  %32 = call i32 @D(i32 %31)
  %33 = load i32, i32* @V, align 4
  %34 = call i32 @T(i32 %33)
  %35 = load i32, i32* @LCTL, align 4
  %36 = call i32 @U(i32 %35)
  %37 = load i32, i32* @END, align 4
  %38 = call i32* @MACRO(i32 %32, i32 %34, i32 %36, i32 %37)
  store i32* %38, i32** %4, align 8
  br label %42

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %3, %39
  %41 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %41, i32** %4, align 8
  br label %42

42:                                               ; preds = %40, %30, %21
  %43 = load i32*, i32** %4, align 8
  ret i32* %43
}

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32* @MACRO(i32, i32, i32, i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
