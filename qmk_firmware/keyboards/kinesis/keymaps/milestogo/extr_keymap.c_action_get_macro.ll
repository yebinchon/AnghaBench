; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kinesis/keymaps/milestogo/extr_keymap.c_action_get_macro.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kinesis/keymaps/milestogo/extr_keymap.c_action_get_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KC_RSFT = common dso_local global i32 0, align 4
@KC_MS_UP = common dso_local global i32 0, align 4
@KC_MS_LEFT = common dso_local global i32 0, align 4
@KC_MS_RIGHT = common dso_local global i32 0, align 4
@KC_MS_DOWN = common dso_local global i32 0, align 4
@MACRO_NONE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @action_get_macro(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %93 [
    i32 0, label %8
    i32 129, label %21
    i32 128, label %39
    i32 131, label %57
    i32 130, label %75
  ]

8:                                                ; preds = %3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @KC_RSFT, align 4
  %16 = call i32 @register_code(i32 %15)
  br label %20

17:                                               ; preds = %8
  %18 = load i32, i32* @KC_RSFT, align 4
  %19 = call i32 @unregister_code(i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  br label %93

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* @KC_MS_UP, align 4
  %29 = call i32 @mousekey_on(i32 %28)
  %30 = load i32, i32* @KC_MS_LEFT, align 4
  %31 = call i32 @mousekey_on(i32 %30)
  br label %37

32:                                               ; preds = %21
  %33 = load i32, i32* @KC_MS_UP, align 4
  %34 = call i32 @mousekey_off(i32 %33)
  %35 = load i32, i32* @KC_MS_LEFT, align 4
  %36 = call i32 @mousekey_off(i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = call i32 (...) @mousekey_send()
  br label %93

39:                                               ; preds = %3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @KC_MS_UP, align 4
  %47 = call i32 @mousekey_on(i32 %46)
  %48 = load i32, i32* @KC_MS_RIGHT, align 4
  %49 = call i32 @mousekey_on(i32 %48)
  br label %55

50:                                               ; preds = %39
  %51 = load i32, i32* @KC_MS_UP, align 4
  %52 = call i32 @mousekey_off(i32 %51)
  %53 = load i32, i32* @KC_MS_RIGHT, align 4
  %54 = call i32 @mousekey_off(i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = call i32 (...) @mousekey_send()
  br label %93

57:                                               ; preds = %3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* @KC_MS_DOWN, align 4
  %65 = call i32 @mousekey_on(i32 %64)
  %66 = load i32, i32* @KC_MS_LEFT, align 4
  %67 = call i32 @mousekey_on(i32 %66)
  br label %73

68:                                               ; preds = %57
  %69 = load i32, i32* @KC_MS_DOWN, align 4
  %70 = call i32 @mousekey_off(i32 %69)
  %71 = load i32, i32* @KC_MS_LEFT, align 4
  %72 = call i32 @mousekey_off(i32 %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = call i32 (...) @mousekey_send()
  br label %93

75:                                               ; preds = %3
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* @KC_MS_DOWN, align 4
  %83 = call i32 @mousekey_on(i32 %82)
  %84 = load i32, i32* @KC_MS_RIGHT, align 4
  %85 = call i32 @mousekey_on(i32 %84)
  br label %91

86:                                               ; preds = %75
  %87 = load i32, i32* @KC_MS_DOWN, align 4
  %88 = call i32 @mousekey_off(i32 %87)
  %89 = load i32, i32* @KC_MS_RIGHT, align 4
  %90 = call i32 @mousekey_off(i32 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = call i32 (...) @mousekey_send()
  br label %93

93:                                               ; preds = %3, %91, %73, %55, %37, %20
  %94 = load i32*, i32** @MACRO_NONE, align 8
  ret i32* %94
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @mousekey_on(i32) #1

declare dso_local i32 @mousekey_off(i32) #1

declare dso_local i32 @mousekey_send(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
