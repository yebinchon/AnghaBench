; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/alexjj/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/alexjj/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KC_RSFT = common dso_local global i32 0, align 4
@LALT = common dso_local global i32 0, align 4
@P1 = common dso_local global i32 0, align 4
@P5 = common dso_local global i32 0, align 4
@P6 = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
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
  switch i32 %8, label %43 [
    i32 0, label %9
    i32 3, label %22
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @KC_RSFT, align 4
  %17 = call i32 @register_code(i32 %16)
  br label %21

18:                                               ; preds = %9
  %19 = load i32, i32* @KC_RSFT, align 4
  %20 = call i32 @unregister_code(i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  br label %22

22:                                               ; preds = %3, %21
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = call i32 @I(i32 255)
  %30 = load i32, i32* @LALT, align 4
  %31 = call i32 @D(i32 %30)
  %32 = load i32, i32* @P1, align 4
  %33 = call i32 @T(i32 %32)
  %34 = load i32, i32* @P5, align 4
  %35 = call i32 @T(i32 %34)
  %36 = load i32, i32* @P6, align 4
  %37 = call i32 @T(i32 %36)
  %38 = load i32, i32* @LALT, align 4
  %39 = call i32 @U(i32 %38)
  %40 = load i32, i32* @END, align 4
  %41 = call i32* @MACRO(i32 %29, i32 %31, i32 %33, i32 %35, i32 %37, i32 %39, i32 %40)
  store i32* %41, i32** %4, align 8
  br label %45

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %3, %42
  %44 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %44, i32** %4, align 8
  br label %45

45:                                               ; preds = %43, %28
  %46 = load i32*, i32** %4, align 8
  ret i32* %46
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32* @MACRO(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @I(i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
