; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/vision_division/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/vision_division/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@KC_LCTL = common dso_local global i32 0, align 4
@KC_C = common dso_local global i32 0, align 4
@KC_X = common dso_local global i32 0, align 4
@LAYER_UPPER = common dso_local global i32 0, align 4
@LAYER_LOWER = common dso_local global i32 0, align 4
@LAYER_ADJUST = common dso_local global i32 0, align 4
@LAYER_MOUSE = common dso_local global i32 0, align 4
@TEMPO_DEFAULT = common dso_local global i32 0, align 4
@TIMBRE_12 = common dso_local global i32 0, align 4
@TIMBRE_25 = common dso_local global i32 0, align 4
@TIMBRE_50 = common dso_local global i32 0, align 4
@TIMBRE_75 = common dso_local global i32 0, align 4
@TIMBRE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %88 [
    i32 138, label %7
    i32 135, label %42
    i32 137, label %65
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = load i32, i32* @KC_LCTL, align 4
  %15 = call i32 @register_code(i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i32, i32* @KC_C, align 4
  %23 = call i32 @register_code(i32 %22)
  %24 = load i32, i32* @KC_C, align 4
  %25 = call i32 @unregister_code(i32 %24)
  br label %38

26:                                               ; preds = %13
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @KC_X, align 4
  %34 = call i32 @register_code(i32 %33)
  %35 = load i32, i32* @KC_X, align 4
  %36 = call i32 @unregister_code(i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i32, i32* @KC_LCTL, align 4
  %40 = call i32 @unregister_code(i32 %39)
  br label %41

41:                                               ; preds = %38, %7
  store i32 0, i32* %3, align 4
  br label %89

42:                                               ; preds = %2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* @LAYER_UPPER, align 4
  %50 = call i32 @layer_on(i32 %49)
  %51 = call i32 @breathing_period_set(i32 2)
  %52 = call i32 (...) @breathing_pulse()
  %53 = load i32, i32* @LAYER_LOWER, align 4
  %54 = load i32, i32* @LAYER_UPPER, align 4
  %55 = load i32, i32* @LAYER_ADJUST, align 4
  %56 = call i32 @update_tri_layer(i32 %53, i32 %54, i32 %55)
  br label %64

57:                                               ; preds = %42
  %58 = load i32, i32* @LAYER_UPPER, align 4
  %59 = call i32 @layer_off(i32 %58)
  %60 = load i32, i32* @LAYER_LOWER, align 4
  %61 = load i32, i32* @LAYER_UPPER, align 4
  %62 = load i32, i32* @LAYER_ADJUST, align 4
  %63 = call i32 @update_tri_layer(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %48
  store i32 0, i32* %3, align 4
  br label %89

65:                                               ; preds = %2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i32, i32* @LAYER_LOWER, align 4
  %73 = call i32 @layer_on(i32 %72)
  %74 = call i32 @breathing_period_set(i32 2)
  %75 = call i32 (...) @breathing_pulse()
  %76 = load i32, i32* @LAYER_LOWER, align 4
  %77 = load i32, i32* @LAYER_UPPER, align 4
  %78 = load i32, i32* @LAYER_ADJUST, align 4
  %79 = call i32 @update_tri_layer(i32 %76, i32 %77, i32 %78)
  br label %87

80:                                               ; preds = %65
  %81 = load i32, i32* @LAYER_LOWER, align 4
  %82 = call i32 @layer_off(i32 %81)
  %83 = load i32, i32* @LAYER_LOWER, align 4
  %84 = load i32, i32* @LAYER_UPPER, align 4
  %85 = load i32, i32* @LAYER_ADJUST, align 4
  %86 = call i32 @update_tri_layer(i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %71
  store i32 0, i32* %3, align 4
  br label %89

88:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %87, %64, %41
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @breathing_period_set(i32) #1

declare dso_local i32 @breathing_pulse(...) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
