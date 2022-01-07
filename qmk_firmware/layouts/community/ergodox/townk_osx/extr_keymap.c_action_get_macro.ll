; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/townk_osx/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/townk_osx/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LCTRL = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@ESC = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@P = common dso_local global i32 0, align 4
@LGUI = common dso_local global i32 0, align 4
@C = common dso_local global i32 0, align 4
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
  switch i32 %8, label %93 [
    i32 129, label %9
    i32 128, label %31
    i32 131, label %53
    i32 130, label %73
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load i32, i32* @LCTRL, align 4
  %17 = call i32 @D(i32 %16)
  %18 = load i32, i32* @A, align 4
  %19 = call i32 @T(i32 %18)
  %20 = load i32, i32* @LCTRL, align 4
  %21 = call i32 @U(i32 %20)
  %22 = load i32, i32* @ESC, align 4
  %23 = call i32 @D(i32 %22)
  %24 = load i32, i32* @END, align 4
  %25 = call i32* (i32, i32, ...) @MACRO(i32 %17, i32 %19, i32 %21, i32 %23, i32 %24)
  store i32* %25, i32** %4, align 8
  br label %95

26:                                               ; preds = %9
  %27 = load i32, i32* @ESC, align 4
  %28 = call i32 @U(i32 %27)
  %29 = load i32, i32* @END, align 4
  %30 = call i32* (i32, i32, ...) @MACRO(i32 %28, i32 %29)
  store i32* %30, i32** %4, align 8
  br label %95

31:                                               ; preds = %3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, i32* @LCTRL, align 4
  %39 = call i32 @D(i32 %38)
  %40 = load i32, i32* @A, align 4
  %41 = call i32 @T(i32 %40)
  %42 = load i32, i32* @LCTRL, align 4
  %43 = call i32 @U(i32 %42)
  %44 = load i32, i32* @P, align 4
  %45 = call i32 @D(i32 %44)
  %46 = load i32, i32* @END, align 4
  %47 = call i32* (i32, i32, ...) @MACRO(i32 %39, i32 %41, i32 %43, i32 %45, i32 %46)
  store i32* %47, i32** %4, align 8
  br label %95

48:                                               ; preds = %31
  %49 = load i32, i32* @P, align 4
  %50 = call i32 @U(i32 %49)
  %51 = load i32, i32* @END, align 4
  %52 = call i32* (i32, i32, ...) @MACRO(i32 %50, i32 %51)
  store i32* %52, i32** %4, align 8
  br label %95

53:                                               ; preds = %3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i32, i32* @LGUI, align 4
  %61 = call i32 @D(i32 %60)
  %62 = load i32, i32* @C, align 4
  %63 = call i32 @D(i32 %62)
  %64 = load i32, i32* @END, align 4
  %65 = call i32* (i32, i32, ...) @MACRO(i32 %61, i32 %63, i32 %64)
  store i32* %65, i32** %4, align 8
  br label %95

66:                                               ; preds = %53
  %67 = load i32, i32* @C, align 4
  %68 = call i32 @U(i32 %67)
  %69 = load i32, i32* @LGUI, align 4
  %70 = call i32 @U(i32 %69)
  %71 = load i32, i32* @END, align 4
  %72 = call i32* (i32, i32, ...) @MACRO(i32 %68, i32 %70, i32 %71)
  store i32* %72, i32** %4, align 8
  br label %95

73:                                               ; preds = %3
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i32, i32* @LGUI, align 4
  %81 = call i32 @D(i32 %80)
  %82 = load i32, i32* @V, align 4
  %83 = call i32 @D(i32 %82)
  %84 = load i32, i32* @END, align 4
  %85 = call i32* (i32, i32, ...) @MACRO(i32 %81, i32 %83, i32 %84)
  store i32* %85, i32** %4, align 8
  br label %95

86:                                               ; preds = %73
  %87 = load i32, i32* @V, align 4
  %88 = call i32 @U(i32 %87)
  %89 = load i32, i32* @LGUI, align 4
  %90 = call i32 @U(i32 %89)
  %91 = load i32, i32* @END, align 4
  %92 = call i32* (i32, i32, ...) @MACRO(i32 %88, i32 %90, i32 %91)
  store i32* %92, i32** %4, align 8
  br label %95

93:                                               ; preds = %3
  %94 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %94, i32** %4, align 8
  br label %95

95:                                               ; preds = %93, %86, %79, %66, %59, %48, %37, %26, %15
  %96 = load i32*, i32** %4, align 8
  ret i32* %96
}

declare dso_local i32* @MACRO(i32, i32, ...) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
