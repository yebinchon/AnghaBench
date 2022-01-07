; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/tm2030/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/tm2030/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@P0 = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@NUMR = common dso_local global i32 0, align 4
@FNLR = common dso_local global i32 0, align 4
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
  switch i32 %8, label %29 [
    i32 129, label %9
    i32 128, label %24
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = call i32 @I(i32 25)
  %17 = load i32, i32* @P0, align 4
  %18 = call i32 @T(i32 %17)
  %19 = load i32, i32* @P0, align 4
  %20 = call i32 @T(i32 %19)
  %21 = load i32, i32* @END, align 4
  %22 = call i32* @MACRO(i32 %16, i32 %18, i32 %20, i32 %21)
  store i32* %22, i32** %4, align 8
  br label %31

23:                                               ; preds = %9
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @NUMR, align 4
  %26 = call i32 @layer_invert(i32 %25)
  %27 = load i32, i32* @FNLR, align 4
  %28 = call i32 @layer_invert(i32 %27)
  br label %29

29:                                               ; preds = %3, %24, %23
  %30 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %30, i32** %4, align 8
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32*, i32** %4, align 8
  ret i32* %32
}

declare dso_local i32* @MACRO(i32, i32, i32, i32) #1

declare dso_local i32 @I(i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @layer_invert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
