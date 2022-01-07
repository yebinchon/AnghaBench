; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/jc65/v32u4/keymaps/naut/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/jc65/v32u4/keymaps/naut/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LGUI = common dso_local global i32 0, align 4
@LSFT = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@LCTL = common dso_local global i32 0, align 4
@UP = common dso_local global i32 0, align 4
@DOWN = common dso_local global i32 0, align 4
@SPC = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@RGHT = common dso_local global i32 0, align 4
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
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %119

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %118 [
    i32 0, label %15
    i32 1, label %27
    i32 2, label %39
    i32 3, label %55
    i32 4, label %71
    i32 5, label %80
    i32 6, label %89
    i32 7, label %98
    i32 8, label %107
    i32 9, label %116
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @LGUI, align 4
  %17 = call i32 @D(i32 %16)
  %18 = load i32, i32* @LSFT, align 4
  %19 = call i32 @D(i32 %18)
  %20 = call i32 @T(i32 3)
  %21 = load i32, i32* @LSFT, align 4
  %22 = call i32 @U(i32 %21)
  %23 = load i32, i32* @LGUI, align 4
  %24 = call i32 @U(i32 %23)
  %25 = load i32, i32* @END, align 4
  %26 = call i32* (i32, i32, i32, i32, ...) @MACRO(i32 %17, i32 %19, i32 %20, i32 %22, i32 %24, i32 %25)
  store i32* %26, i32** %4, align 8
  br label %121

27:                                               ; preds = %13
  %28 = load i32, i32* @LGUI, align 4
  %29 = call i32 @D(i32 %28)
  %30 = load i32, i32* @LSFT, align 4
  %31 = call i32 @D(i32 %30)
  %32 = call i32 @T(i32 4)
  %33 = load i32, i32* @LSFT, align 4
  %34 = call i32 @U(i32 %33)
  %35 = load i32, i32* @LGUI, align 4
  %36 = call i32 @U(i32 %35)
  %37 = load i32, i32* @END, align 4
  %38 = call i32* (i32, i32, i32, i32, ...) @MACRO(i32 %29, i32 %31, i32 %32, i32 %34, i32 %36, i32 %37)
  store i32* %38, i32** %4, align 8
  br label %121

39:                                               ; preds = %13
  %40 = load i32, i32* @LCTL, align 4
  %41 = call i32 @D(i32 %40)
  %42 = load i32, i32* @LSFT, align 4
  %43 = call i32 @D(i32 %42)
  %44 = load i32, i32* @LGUI, align 4
  %45 = call i32 @D(i32 %44)
  %46 = call i32 @T(i32 3)
  %47 = load i32, i32* @LCTL, align 4
  %48 = call i32 @D(i32 %47)
  %49 = load i32, i32* @LSFT, align 4
  %50 = call i32 @D(i32 %49)
  %51 = load i32, i32* @LGUI, align 4
  %52 = call i32 @D(i32 %51)
  %53 = load i32, i32* @END, align 4
  %54 = call i32* (i32, i32, i32, i32, ...) @MACRO(i32 %41, i32 %43, i32 %45, i32 %46, i32 %48, i32 %50, i32 %52, i32 %53)
  store i32* %54, i32** %4, align 8
  br label %121

55:                                               ; preds = %13
  %56 = load i32, i32* @LCTL, align 4
  %57 = call i32 @D(i32 %56)
  %58 = load i32, i32* @LSFT, align 4
  %59 = call i32 @D(i32 %58)
  %60 = load i32, i32* @LGUI, align 4
  %61 = call i32 @D(i32 %60)
  %62 = call i32 @T(i32 4)
  %63 = load i32, i32* @LCTL, align 4
  %64 = call i32 @D(i32 %63)
  %65 = load i32, i32* @LSFT, align 4
  %66 = call i32 @D(i32 %65)
  %67 = load i32, i32* @LGUI, align 4
  %68 = call i32 @D(i32 %67)
  %69 = load i32, i32* @END, align 4
  %70 = call i32* (i32, i32, i32, i32, ...) @MACRO(i32 %57, i32 %59, i32 %61, i32 %62, i32 %64, i32 %66, i32 %68, i32 %69)
  store i32* %70, i32** %4, align 8
  br label %121

71:                                               ; preds = %13
  %72 = load i32, i32* @LCTL, align 4
  %73 = call i32 @D(i32 %72)
  %74 = load i32, i32* @UP, align 4
  %75 = call i32 @T(i32 %74)
  %76 = load i32, i32* @LCTL, align 4
  %77 = call i32 @U(i32 %76)
  %78 = load i32, i32* @END, align 4
  %79 = call i32* (i32, i32, i32, i32, ...) @MACRO(i32 %73, i32 %75, i32 %77, i32 %78)
  store i32* %79, i32** %4, align 8
  br label %121

80:                                               ; preds = %13
  %81 = load i32, i32* @LCTL, align 4
  %82 = call i32 @D(i32 %81)
  %83 = load i32, i32* @DOWN, align 4
  %84 = call i32 @T(i32 %83)
  %85 = load i32, i32* @LCTL, align 4
  %86 = call i32 @U(i32 %85)
  %87 = load i32, i32* @END, align 4
  %88 = call i32* (i32, i32, i32, i32, ...) @MACRO(i32 %82, i32 %84, i32 %86, i32 %87)
  store i32* %88, i32** %4, align 8
  br label %121

89:                                               ; preds = %13
  %90 = load i32, i32* @LGUI, align 4
  %91 = call i32 @D(i32 %90)
  %92 = load i32, i32* @SPC, align 4
  %93 = call i32 @T(i32 %92)
  %94 = load i32, i32* @LGUI, align 4
  %95 = call i32 @U(i32 %94)
  %96 = load i32, i32* @END, align 4
  %97 = call i32* (i32, i32, i32, i32, ...) @MACRO(i32 %91, i32 %93, i32 %95, i32 %96)
  store i32* %97, i32** %4, align 8
  br label %121

98:                                               ; preds = %13
  %99 = load i32, i32* @LCTL, align 4
  %100 = call i32 @D(i32 %99)
  %101 = load i32, i32* @LEFT, align 4
  %102 = call i32 @T(i32 %101)
  %103 = load i32, i32* @LCTL, align 4
  %104 = call i32 @U(i32 %103)
  %105 = load i32, i32* @END, align 4
  %106 = call i32* (i32, i32, i32, i32, ...) @MACRO(i32 %100, i32 %102, i32 %104, i32 %105)
  store i32* %106, i32** %4, align 8
  br label %121

107:                                              ; preds = %13
  %108 = load i32, i32* @LCTL, align 4
  %109 = call i32 @D(i32 %108)
  %110 = load i32, i32* @RGHT, align 4
  %111 = call i32 @T(i32 %110)
  %112 = load i32, i32* @LCTL, align 4
  %113 = call i32 @U(i32 %112)
  %114 = load i32, i32* @END, align 4
  %115 = call i32* (i32, i32, i32, i32, ...) @MACRO(i32 %109, i32 %111, i32 %113, i32 %114)
  store i32* %115, i32** %4, align 8
  br label %121

116:                                              ; preds = %13
  %117 = call i32 @rgblight_setrgb(i32 255, i32 255, i32 255)
  br label %118

118:                                              ; preds = %13, %116
  br label %119

119:                                              ; preds = %118, %3
  %120 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %120, i32** %4, align 8
  br label %121

121:                                              ; preds = %119, %107, %98, %89, %80, %71, %55, %39, %27, %15
  %122 = load i32*, i32** %4, align 8
  ret i32* %122
}

declare dso_local i32* @MACRO(i32, i32, i32, i32, ...) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @U(i32) #1

declare dso_local i32 @rgblight_setrgb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
