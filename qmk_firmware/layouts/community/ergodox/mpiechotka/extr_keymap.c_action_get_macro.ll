; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/mpiechotka/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/mpiechotka/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KC_RSFT = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@SLCK = common dso_local global i32 0, align 4
@ENT = common dso_local global i32 0, align 4
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
  switch i32 %8, label %119 [
    i32 0, label %9
    i32 132, label %22
    i32 131, label %39
    i32 130, label %59
    i32 129, label %79
    i32 128, label %99
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
  br label %119

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* @KC_RSFT, align 4
  %30 = call i32 @register_code(i32 %29)
  %31 = load i32, i32* @KC_RSFT, align 4
  %32 = call i32 @unregister_code(i32 %31)
  %33 = load i32, i32* @KC_LGUI, align 4
  %34 = call i32 @register_code(i32 %33)
  br label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @KC_LGUI, align 4
  %37 = call i32 @unregister_code(i32 %36)
  br label %38

38:                                               ; preds = %35, %28
  br label %119

39:                                               ; preds = %3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @SLCK, align 4
  %47 = call i32 @T(i32 %46)
  %48 = call i32 @W(i32 50)
  %49 = load i32, i32* @SLCK, align 4
  %50 = call i32 @T(i32 %49)
  %51 = call i32 @W(i32 50)
  %52 = call i32 @T(i32 1)
  %53 = call i32 @W(i32 50)
  %54 = load i32, i32* @ENT, align 4
  %55 = call i32 @T(i32 %54)
  %56 = load i32, i32* @END, align 4
  %57 = call i32* @MACRO(i32 %47, i32 %48, i32 %50, i32 %51, i32 %52, i32 %53, i32 %55, i32 %56)
  store i32* %57, i32** %4, align 8
  br label %121

58:                                               ; preds = %39
  br label %119

59:                                               ; preds = %3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @SLCK, align 4
  %67 = call i32 @T(i32 %66)
  %68 = call i32 @W(i32 50)
  %69 = load i32, i32* @SLCK, align 4
  %70 = call i32 @T(i32 %69)
  %71 = call i32 @W(i32 50)
  %72 = call i32 @T(i32 2)
  %73 = call i32 @W(i32 50)
  %74 = load i32, i32* @ENT, align 4
  %75 = call i32 @T(i32 %74)
  %76 = load i32, i32* @END, align 4
  %77 = call i32* @MACRO(i32 %67, i32 %68, i32 %70, i32 %71, i32 %72, i32 %73, i32 %75, i32 %76)
  store i32* %77, i32** %4, align 8
  br label %121

78:                                               ; preds = %59
  br label %119

79:                                               ; preds = %3
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @SLCK, align 4
  %87 = call i32 @T(i32 %86)
  %88 = call i32 @W(i32 50)
  %89 = load i32, i32* @SLCK, align 4
  %90 = call i32 @T(i32 %89)
  %91 = call i32 @W(i32 50)
  %92 = call i32 @T(i32 3)
  %93 = call i32 @W(i32 50)
  %94 = load i32, i32* @ENT, align 4
  %95 = call i32 @T(i32 %94)
  %96 = load i32, i32* @END, align 4
  %97 = call i32* @MACRO(i32 %87, i32 %88, i32 %90, i32 %91, i32 %92, i32 %93, i32 %95, i32 %96)
  store i32* %97, i32** %4, align 8
  br label %121

98:                                               ; preds = %79
  br label %119

99:                                               ; preds = %3
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @SLCK, align 4
  %107 = call i32 @T(i32 %106)
  %108 = call i32 @W(i32 50)
  %109 = load i32, i32* @SLCK, align 4
  %110 = call i32 @T(i32 %109)
  %111 = call i32 @W(i32 50)
  %112 = call i32 @T(i32 4)
  %113 = call i32 @W(i32 50)
  %114 = load i32, i32* @ENT, align 4
  %115 = call i32 @T(i32 %114)
  %116 = load i32, i32* @END, align 4
  %117 = call i32* @MACRO(i32 %107, i32 %108, i32 %110, i32 %111, i32 %112, i32 %113, i32 %115, i32 %116)
  store i32* %117, i32** %4, align 8
  br label %121

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %3, %118, %98, %78, %58, %38, %21
  %120 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %120, i32** %4, align 8
  br label %121

121:                                              ; preds = %119, %105, %85, %65, %45
  %122 = load i32*, i32** %4, align 8
  ret i32* %122
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32* @MACRO(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @W(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
