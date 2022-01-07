; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/jd45/keymaps/mjt6u/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/jd45/keymaps/mjt6u/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_ADJUST = common dso_local global i32 0, align 4
@DYN_REC_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"process record\00", align 1
@KC_RSFT = common dso_local global i32 0, align 4
@KC_RCTL = common dso_local global i32 0, align 4
@KC_POWER = common dso_local global i32 0, align 4
@_QWERTY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"Space-FN\00", align 1
@_QWERTYNUMMODS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"Space-Numpad\00", align 1
@singular_key = common dso_local global i32 0, align 4
@tone_fnmac = common dso_local global i32 0, align 4
@tone_fnpc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @_ADJUST, align 4
  %9 = call i32 @MO(i32 %8)
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @DYN_REC_STOP, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = call i32 @process_record_dynamic_macro(i32 %17, %struct.TYPE_6__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %72

22:                                               ; preds = %15
  %23 = call i32 @println(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %70 [
    i32 130, label %26
    i32 129, label %46
    i32 128, label %58
  ]

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i32, i32* @KC_RSFT, align 4
  %34 = call i32 @register_code(i32 %33)
  %35 = load i32, i32* @KC_RCTL, align 4
  %36 = call i32 @register_code(i32 %35)
  %37 = load i32, i32* @KC_POWER, align 4
  %38 = call i32 @register_code(i32 %37)
  %39 = load i32, i32* @KC_POWER, align 4
  %40 = call i32 @unregister_code(i32 %39)
  %41 = load i32, i32* @KC_RCTL, align 4
  %42 = call i32 @unregister_code(i32 %41)
  %43 = load i32, i32* @KC_RSFT, align 4
  %44 = call i32 @unregister_code(i32 %43)
  br label %45

45:                                               ; preds = %32, %26
  store i32 0, i32* %3, align 4
  br label %72

46:                                               ; preds = %22
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i64, i64* @_QWERTY, align 8
  %54 = shl i64 1, %53
  %55 = call i32 @persistent_default_layer_set(i64 %54)
  %56 = call i32 @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %46
  store i32 0, i32* %3, align 4
  br label %72

58:                                               ; preds = %22
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i64, i64* @_QWERTYNUMMODS, align 8
  %66 = shl i64 1, %65
  %67 = call i32 @persistent_default_layer_set(i64 %66)
  %68 = call i32 @print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %58
  store i32 0, i32* %3, align 4
  br label %72

70:                                               ; preds = %22
  store i32 0, i32* @singular_key, align 4
  br label %71

71:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %57, %45, %21
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @MO(i32) #1

declare dso_local i32 @process_record_dynamic_macro(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @println(i8*) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @persistent_default_layer_set(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
