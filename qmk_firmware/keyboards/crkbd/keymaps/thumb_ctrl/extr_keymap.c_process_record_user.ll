; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/thumb_ctrl/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/thumb_ctrl/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@_QWERTY = common dso_local global i64 0, align 8
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@RGB_current_mode = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %82 [
    i32 131, label %14
    i32 132, label %25
    i32 130, label %46
    i32 133, label %67
    i32 128, label %80
    i32 129, label %81
  ]

14:                                               ; preds = %12
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i64, i64* @_QWERTY, align 8
  %22 = shl i64 1, %21
  %23 = call i32 @persistent_default_layer_set(i64 %22)
  br label %24

24:                                               ; preds = %20, %14
  store i32 0, i32* %3, align 4
  br label %83

25:                                               ; preds = %12
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* @_LOWER, align 4
  %33 = call i32 @layer_on(i32 %32)
  %34 = load i32, i32* @_LOWER, align 4
  %35 = load i32, i32* @_RAISE, align 4
  %36 = load i32, i32* @_ADJUST, align 4
  %37 = call i32 @update_tri_layer_RGB(i32 %34, i32 %35, i32 %36)
  br label %45

38:                                               ; preds = %25
  %39 = load i32, i32* @_LOWER, align 4
  %40 = call i32 @layer_off(i32 %39)
  %41 = load i32, i32* @_LOWER, align 4
  %42 = load i32, i32* @_RAISE, align 4
  %43 = load i32, i32* @_ADJUST, align 4
  %44 = call i32 @update_tri_layer_RGB(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %31
  store i32 0, i32* %3, align 4
  br label %83

46:                                               ; preds = %12
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @_RAISE, align 4
  %54 = call i32 @layer_on(i32 %53)
  %55 = load i32, i32* @_LOWER, align 4
  %56 = load i32, i32* @_RAISE, align 4
  %57 = load i32, i32* @_ADJUST, align 4
  %58 = call i32 @update_tri_layer_RGB(i32 %55, i32 %56, i32 %57)
  br label %66

59:                                               ; preds = %46
  %60 = load i32, i32* @_RAISE, align 4
  %61 = call i32 @layer_off(i32 %60)
  %62 = load i32, i32* @_LOWER, align 4
  %63 = load i32, i32* @_RAISE, align 4
  %64 = load i32, i32* @_ADJUST, align 4
  %65 = call i32 @update_tri_layer_RGB(i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %52
  store i32 0, i32* %3, align 4
  br label %83

67:                                               ; preds = %12
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @_ADJUST, align 4
  %75 = call i32 @layer_on(i32 %74)
  br label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @_ADJUST, align 4
  %78 = call i32 @layer_off(i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  store i32 0, i32* %3, align 4
  br label %83

80:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %83

81:                                               ; preds = %12
  br label %82

82:                                               ; preds = %12, %81
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %80, %79, %66, %45, %24
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer_RGB(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
