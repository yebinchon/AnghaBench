; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/laurentlaurent/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/preonic/keymaps/laurentlaurent/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY_MAC = common dso_local global i32 0, align 4
@_QWERTY_WIN = common dso_local global i32 0, align 4
@key_timer = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@timer_thresh = common dso_local global i32 0, align 4
@KC_BSPC = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@PORTE = common dso_local global i32 0, align 4
@tone_macro1_record = common dso_local global i32 0, align 4
@tone_macro2_record = common dso_local global i32 0, align 4
@tone_macro_record_stop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = call i32 @process_record_dynamic_macro(i32 %6, %struct.TYPE_6__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %106 [
    i32 130, label %13
    i32 129, label %23
    i32 131, label %33
    i32 128, label %63
    i32 135, label %93
  ]

13:                                               ; preds = %11
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @_QWERTY_MAC, align 4
  %21 = call i32 @set_single_persistent_default_layer(i32 %20)
  br label %22

22:                                               ; preds = %19, %13
  store i32 0, i32* %3, align 4
  br label %107

23:                                               ; preds = %11
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @_QWERTY_WIN, align 4
  %31 = call i32 @set_single_persistent_default_layer(i32 %30)
  br label %32

32:                                               ; preds = %29, %23
  store i32 0, i32* %3, align 4
  br label %107

33:                                               ; preds = %11
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = call i32 (...) @timer_read()
  store i32 %40, i32* @key_timer, align 4
  %41 = load i32, i32* @_LOWER, align 4
  %42 = call i32 @layer_on(i32 %41)
  %43 = load i32, i32* @_LOWER, align 4
  %44 = load i32, i32* @_RAISE, align 4
  %45 = load i32, i32* @_ADJUST, align 4
  %46 = call i32 @update_tri_layer(i32 %43, i32 %44, i32 %45)
  br label %62

47:                                               ; preds = %33
  %48 = load i32, i32* @key_timer, align 4
  %49 = call i32 @timer_elapsed(i32 %48)
  %50 = load i32, i32* @timer_thresh, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @KC_BSPC, align 4
  %54 = call i32 @tap_code(i32 %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* @_LOWER, align 4
  %57 = call i32 @layer_off(i32 %56)
  %58 = load i32, i32* @_LOWER, align 4
  %59 = load i32, i32* @_RAISE, align 4
  %60 = load i32, i32* @_ADJUST, align 4
  %61 = call i32 @update_tri_layer(i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %39
  store i32 0, i32* %3, align 4
  br label %107

63:                                               ; preds = %11
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = call i32 (...) @timer_read()
  store i32 %70, i32* @key_timer, align 4
  %71 = load i32, i32* @_RAISE, align 4
  %72 = call i32 @layer_on(i32 %71)
  %73 = load i32, i32* @_LOWER, align 4
  %74 = load i32, i32* @_RAISE, align 4
  %75 = load i32, i32* @_ADJUST, align 4
  %76 = call i32 @update_tri_layer(i32 %73, i32 %74, i32 %75)
  br label %92

77:                                               ; preds = %63
  %78 = load i32, i32* @key_timer, align 4
  %79 = call i32 @timer_elapsed(i32 %78)
  %80 = load i32, i32* @timer_thresh, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @KC_BSPC, align 4
  %84 = call i32 @tap_code(i32 %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* @_RAISE, align 4
  %87 = call i32 @layer_off(i32 %86)
  %88 = load i32, i32* @_LOWER, align 4
  %89 = load i32, i32* @_RAISE, align 4
  %90 = load i32, i32* @_ADJUST, align 4
  %91 = call i32 @update_tri_layer(i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %69
  store i32 0, i32* %3, align 4
  br label %107

93:                                               ; preds = %11
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @KC_RSFT, align 4
  %101 = call i32 @register_code(i32 %100)
  br label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @KC_RSFT, align 4
  %104 = call i32 @unregister_code(i32 %103)
  br label %105

105:                                              ; preds = %102, %99
  store i32 0, i32* %3, align 4
  br label %107

106:                                              ; preds = %11
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %105, %92, %62, %32, %22, %10
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @process_record_dynamic_macro(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
