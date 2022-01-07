; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/zeal60/keymaps/ryanmaclean/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/zeal60/keymaps/ryanmaclean/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LSFT = common dso_local global i32 0, align 4
@LCTL = common dso_local global i32 0, align 4
@LGUI = common dso_local global i32 0, align 4
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
  switch i32 %8, label %97 [
    i32 0, label %9
    i32 1, label %33
    i32 2, label %53
    i32 3, label %77
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load i32, i32* @LSFT, align 4
  %17 = call i32 @D(i32 %16)
  %18 = load i32, i32* @LCTL, align 4
  %19 = call i32 @D(i32 %18)
  %20 = load i32, i32* @LGUI, align 4
  %21 = call i32 @D(i32 %20)
  %22 = call i32 @T(i32 4)
  %23 = load i32, i32* @LSFT, align 4
  %24 = call i32 @U(i32 %23)
  %25 = load i32, i32* @LCTL, align 4
  %26 = call i32 @U(i32 %25)
  %27 = load i32, i32* @LGUI, align 4
  %28 = call i32 @U(i32 %27)
  %29 = call i32 @W(i32 255)
  %30 = load i32, i32* @END, align 4
  %31 = call i32* (i32, i32, i32, i32, i32, i32, i32, ...) @MACRO(i32 %17, i32 %19, i32 %21, i32 %22, i32 %24, i32 %26, i32 %28, i32 %29, i32 %30)
  store i32* %31, i32** %4, align 8
  br label %99

32:                                               ; preds = %9
  br label %97

33:                                               ; preds = %3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i32, i32* @LSFT, align 4
  %41 = call i32 @D(i32 %40)
  %42 = load i32, i32* @LGUI, align 4
  %43 = call i32 @D(i32 %42)
  %44 = call i32 @T(i32 4)
  %45 = load i32, i32* @LSFT, align 4
  %46 = call i32 @U(i32 %45)
  %47 = load i32, i32* @LGUI, align 4
  %48 = call i32 @U(i32 %47)
  %49 = call i32 @W(i32 255)
  %50 = load i32, i32* @END, align 4
  %51 = call i32* (i32, i32, i32, i32, i32, i32, i32, ...) @MACRO(i32 %41, i32 %43, i32 %44, i32 %46, i32 %48, i32 %49, i32 %50)
  store i32* %51, i32** %4, align 8
  br label %99

52:                                               ; preds = %33
  br label %97

53:                                               ; preds = %3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load i32, i32* @LSFT, align 4
  %61 = call i32 @D(i32 %60)
  %62 = load i32, i32* @LCTL, align 4
  %63 = call i32 @D(i32 %62)
  %64 = load i32, i32* @LGUI, align 4
  %65 = call i32 @D(i32 %64)
  %66 = call i32 @T(i32 3)
  %67 = load i32, i32* @LSFT, align 4
  %68 = call i32 @U(i32 %67)
  %69 = load i32, i32* @LCTL, align 4
  %70 = call i32 @U(i32 %69)
  %71 = load i32, i32* @LGUI, align 4
  %72 = call i32 @U(i32 %71)
  %73 = call i32 @W(i32 255)
  %74 = load i32, i32* @END, align 4
  %75 = call i32* (i32, i32, i32, i32, i32, i32, i32, ...) @MACRO(i32 %61, i32 %63, i32 %65, i32 %66, i32 %68, i32 %70, i32 %72, i32 %73, i32 %74)
  store i32* %75, i32** %4, align 8
  br label %99

76:                                               ; preds = %53
  br label %97

77:                                               ; preds = %3
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load i32, i32* @LSFT, align 4
  %85 = call i32 @D(i32 %84)
  %86 = load i32, i32* @LGUI, align 4
  %87 = call i32 @D(i32 %86)
  %88 = call i32 @T(i32 3)
  %89 = load i32, i32* @LSFT, align 4
  %90 = call i32 @U(i32 %89)
  %91 = load i32, i32* @LGUI, align 4
  %92 = call i32 @U(i32 %91)
  %93 = call i32 @W(i32 255)
  %94 = load i32, i32* @END, align 4
  %95 = call i32* (i32, i32, i32, i32, i32, i32, i32, ...) @MACRO(i32 %85, i32 %87, i32 %88, i32 %90, i32 %92, i32 %93, i32 %94)
  store i32* %95, i32** %4, align 8
  br label %99

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %3, %96, %76, %52, %32
  %98 = load i32*, i32** @MACRO_NONE, align 8
  store i32* %98, i32** %4, align 8
  br label %99

99:                                               ; preds = %97, %83, %59, %39, %15
  %100 = load i32*, i32** %4, align 8
  ret i32* %100
}

declare dso_local i32* @MACRO(i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @U(i32) #1

declare dso_local i32 @W(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
