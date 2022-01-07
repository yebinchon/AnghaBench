; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/ab/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/ab/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_CUSTOM = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
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
define dso_local i32* @action_get_macro(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %99 [
    i32 128, label %9
    i32 130, label %24
    i32 133, label %39
    i32 129, label %52
    i32 132, label %69
    i32 131, label %84
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = call i32 @layer_on(i32 128)
  %17 = load i32, i32* @_CUSTOM, align 4
  %18 = call i32 @update_tri_layer(i32 130, i32 128, i32 %17)
  br label %23

19:                                               ; preds = %9
  %20 = call i32 @layer_off(i32 128)
  %21 = load i32, i32* @_CUSTOM, align 4
  %22 = call i32 @update_tri_layer(i32 130, i32 128, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  br label %99

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = call i32 @layer_on(i32 130)
  %32 = load i32, i32* @_CUSTOM, align 4
  %33 = call i32 @update_tri_layer(i32 130, i32 128, i32 %32)
  br label %38

34:                                               ; preds = %24
  %35 = call i32 @layer_off(i32 130)
  %36 = load i32, i32* @_CUSTOM, align 4
  %37 = call i32 @update_tri_layer(i32 130, i32 128, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %99

39:                                               ; preds = %3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @KC_RSFT, align 4
  %47 = call i32 @register_code(i32 %46)
  br label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @KC_RSFT, align 4
  %50 = call i32 @unregister_code(i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %99

52:                                               ; preds = %3
  %53 = call i32 @T(i32 1)
  %54 = call i32 @T(i32 2)
  %55 = call i32 @T(i32 3)
  %56 = load i32, i32* @MINS, align 4
  %57 = call i32 @T(i32 %56)
  %58 = call i32 @T(i32 1)
  %59 = call i32 @T(i32 2)
  %60 = call i32 @T(i32 3)
  %61 = load i32, i32* @MINS, align 4
  %62 = call i32 @T(i32 %61)
  %63 = call i32 @T(i32 1)
  %64 = call i32 @T(i32 2)
  %65 = call i32 @T(i32 3)
  %66 = call i32 @T(i32 4)
  %67 = load i32, i32* @END, align 4
  %68 = call i32* (i32, i32, i32, i32, i32, i32, i32, ...) @MACRODOWN(i32 %53, i32 %54, i32 %55, i32 %57, i32 %58, i32 %59, i32 %60, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32* %68, i32** %4, align 8
  br label %101

69:                                               ; preds = %3
  %70 = load i32, i32* @E, align 4
  %71 = call i32 @T(i32 %70)
  %72 = load i32, i32* @M, align 4
  %73 = call i32 @T(i32 %72)
  %74 = load i32, i32* @A, align 4
  %75 = call i32 @T(i32 %74)
  %76 = load i32, i32* @C, align 4
  %77 = call i32 @T(i32 %76)
  %78 = load i32, i32* @S, align 4
  %79 = call i32 @T(i32 %78)
  %80 = load i32, i32* @SPC, align 4
  %81 = call i32 @T(i32 %80)
  %82 = load i32, i32* @END, align 4
  %83 = call i32* (i32, i32, i32, i32, i32, i32, i32, ...) @MACRODOWN(i32 %71, i32 %73, i32 %75, i32 %77, i32 %79, i32 %81, i32 %82)
  store i32* %83, i32** %4, align 8
  br label %101

84:                                               ; preds = %3
  %85 = load i32, i32* @L, align 4
  %86 = call i32 @T(i32 %85)
  %87 = load i32, i32* @S, align 4
  %88 = call i32 @T(i32 %87)
  %89 = load i32, i32* @SPC, align 4
  %90 = call i32 @T(i32 %89)
  %91 = load i32, i32* @MINS, align 4
  %92 = call i32 @T(i32 %91)
  %93 = load i32, i32* @L, align 4
  %94 = call i32 @T(i32 %93)
  %95 = load i32, i32* @ENT, align 4
  %96 = call i32 @T(i32 %95)
  %97 = load i32, i32* @END, align 4
  %98 = call i32* (i32, i32, i32, i32, i32, i32, i32, ...) @MACRODOWN(i32 %86, i32 %88, i32 %90, i32 %92, i32 %94, i32 %96, i32 %97)
  store i32* %98, i32** %4, align 8
  br label %101

99:                                               ; preds = %3, %51, %38, %23
  %100 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %100, i32** %4, align 8
  br label %101

101:                                              ; preds = %99, %84, %69, %52
  %102 = load i32*, i32** %4, align 8
  ret i32* %102
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32* @MACRODOWN(i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
