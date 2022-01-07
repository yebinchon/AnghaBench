; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/soundmonster/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/crkbd/keymaps/soundmonster/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@process_record_user.my_colon_timer = internal global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RALT = common dso_local global i32 0, align 4
@TAPPING_TERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@RGB_current_mode = common dso_local global i32 0, align 4
@oled_timer = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %91 [
    i32 130, label %14
    i32 129, label %35
    i32 132, label %56
    i32 131, label %69
    i32 128, label %90
  ]

14:                                               ; preds = %12
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* @_LOWER, align 4
  %22 = call i32 @layer_on(i32 %21)
  %23 = load i32, i32* @_LOWER, align 4
  %24 = load i32, i32* @_RAISE, align 4
  %25 = load i32, i32* @_ADJUST, align 4
  %26 = call i32 @update_tri_layer_RGB(i32 %23, i32 %24, i32 %25)
  br label %34

27:                                               ; preds = %14
  %28 = load i32, i32* @_LOWER, align 4
  %29 = call i32 @layer_off(i32 %28)
  %30 = load i32, i32* @_LOWER, align 4
  %31 = load i32, i32* @_RAISE, align 4
  %32 = load i32, i32* @_ADJUST, align 4
  %33 = call i32 @update_tri_layer_RGB(i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %20
  store i32 0, i32* %3, align 4
  br label %92

35:                                               ; preds = %12
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @_RAISE, align 4
  %43 = call i32 @layer_on(i32 %42)
  %44 = load i32, i32* @_LOWER, align 4
  %45 = load i32, i32* @_RAISE, align 4
  %46 = load i32, i32* @_ADJUST, align 4
  %47 = call i32 @update_tri_layer_RGB(i32 %44, i32 %45, i32 %46)
  br label %55

48:                                               ; preds = %35
  %49 = load i32, i32* @_RAISE, align 4
  %50 = call i32 @layer_off(i32 %49)
  %51 = load i32, i32* @_LOWER, align 4
  %52 = load i32, i32* @_RAISE, align 4
  %53 = load i32, i32* @_ADJUST, align 4
  %54 = call i32 @update_tri_layer_RGB(i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %41
  store i32 0, i32* %3, align 4
  br label %92

56:                                               ; preds = %12
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @_ADJUST, align 4
  %64 = call i32 @layer_on(i32 %63)
  br label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @_ADJUST, align 4
  %67 = call i32 @layer_off(i32 %66)
  br label %68

68:                                               ; preds = %65, %62
  store i32 0, i32* %3, align 4
  br label %92

69:                                               ; preds = %12
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = call i32 (...) @timer_read()
  store i32 %76, i32* @process_record_user.my_colon_timer, align 4
  %77 = load i32, i32* @KC_RALT, align 4
  %78 = call i32 @register_code(i32 %77)
  br label %89

79:                                               ; preds = %69
  %80 = load i32, i32* @KC_RALT, align 4
  %81 = call i32 @unregister_code(i32 %80)
  %82 = load i32, i32* @process_record_user.my_colon_timer, align 4
  %83 = call i32 @timer_elapsed(i32 %82)
  %84 = load i32, i32* @TAPPING_TERM, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = call i32 @SEND_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %79
  br label %89

89:                                               ; preds = %88, %75
  store i32 0, i32* %3, align 4
  br label %92

90:                                               ; preds = %12
  br label %91

91:                                               ; preds = %12, %90
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %89, %68, %55, %34
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer_RGB(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @SEND_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
