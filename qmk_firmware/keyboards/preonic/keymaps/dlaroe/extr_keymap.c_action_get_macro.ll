; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/dlaroe/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/dlaroe/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LSFT = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@LCTL = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i32 0, align 4
@V = common dso_local global i32 0, align 4
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
  switch i32 %8, label %41 [
    i32 0, label %9
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = load i32, i32* @LSFT, align 4
  %17 = call i32 @D(i32 %16)
  %18 = load i32, i32* @LEFT, align 4
  %19 = call i32 @T(i32 %18)
  %20 = load i32, i32* @LSFT, align 4
  %21 = call i32 @U(i32 %20)
  %22 = load i32, i32* @LCTL, align 4
  %23 = call i32 @D(i32 %22)
  %24 = load i32, i32* @X, align 4
  %25 = call i32 @T(i32 %24)
  %26 = load i32, i32* @LCTL, align 4
  %27 = call i32 @U(i32 %26)
  %28 = load i32, i32* @RIGHT, align 4
  %29 = call i32 @T(i32 %28)
  %30 = load i32, i32* @LCTL, align 4
  %31 = call i32 @D(i32 %30)
  %32 = load i32, i32* @V, align 4
  %33 = call i32 @T(i32 %32)
  %34 = load i32, i32* @LCTL, align 4
  %35 = call i32 @U(i32 %34)
  %36 = load i32, i32* @LEFT, align 4
  %37 = call i32 @T(i32 %36)
  %38 = load i32, i32* @END, align 4
  %39 = call i32* @MACRO(i32 %17, i32 %19, i32 %21, i32 %23, i32 %25, i32 %27, i32 %29, i32 %31, i32 %33, i32 %35, i32 %37, i32 %38)
  store i32* %39, i32** %4, align 8
  br label %43

40:                                               ; preds = %9
  br label %41

41:                                               ; preds = %3, %40
  %42 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %41, %15
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local i32* @MACRO(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
