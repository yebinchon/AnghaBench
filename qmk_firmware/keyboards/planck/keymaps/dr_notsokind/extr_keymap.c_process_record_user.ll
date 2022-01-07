; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/dr_notsokind/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/dr_notsokind/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_ONESHOT = common dso_local global i32 0, align 4
@ONESHOT_START = common dso_local global i32 0, align 4
@ONESHOT_PRESSED = common dso_local global i32 0, align 4
@_NUMPAD = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_FUNCTN = common dso_local global i32 0, align 4
@_MEDIA = common dso_local global i32 0, align 4
@tone_dyn_macro_rec = common dso_local global i32 0, align 4
@tone_dyn_macro_stop = common dso_local global i32 0, align 4
@tone_numpad = common dso_local global i32 0, align 4
@tone_oneshot = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

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
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %14 [
    i32 136, label %12
    i32 135, label %12
    i32 134, label %13
  ]

12:                                               ; preds = %10, %10
  br label %14

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %10, %13, %12
  store i32 0, i32* %3, align 4
  br label %118

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %117 [
    i32 130, label %17
    i32 129, label %32
    i32 131, label %47
    i32 128, label %62
    i32 133, label %83
    i32 132, label %104
  ]

17:                                               ; preds = %15
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* @_ONESHOT, align 4
  %25 = call i32 @layer_on(i32 %24)
  %26 = load i32, i32* @_ONESHOT, align 4
  %27 = load i32, i32* @ONESHOT_START, align 4
  %28 = call i32 @set_oneshot_layer(i32 %26, i32 %27)
  %29 = load i32, i32* @ONESHOT_PRESSED, align 4
  %30 = call i32 @clear_oneshot_layer_state(i32 %29)
  br label %31

31:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %118

32:                                               ; preds = %15
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i32, i32* @_NUMPAD, align 4
  %40 = call i32 @IS_LAYER_ON(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @_NUMPAD, align 4
  %44 = call i32 @layer_off(i32 %43)
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %32
  store i32 0, i32* %3, align 4
  br label %118

47:                                               ; preds = %15
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32, i32* @_NUMPAD, align 4
  %55 = call i32 @IS_LAYER_ON(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @_NUMPAD, align 4
  %59 = call i32 @layer_on(i32 %58)
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %47
  store i32 0, i32* %3, align 4
  br label %118

62:                                               ; preds = %15
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i32, i32* @_RAISE, align 4
  %70 = call i32 @layer_on(i32 %69)
  %71 = load i32, i32* @_RAISE, align 4
  %72 = load i32, i32* @_LOWER, align 4
  %73 = load i32, i32* @_FUNCTN, align 4
  %74 = call i32 @update_tri_layer(i32 %71, i32 %72, i32 %73)
  br label %82

75:                                               ; preds = %62
  %76 = load i32, i32* @_RAISE, align 4
  %77 = call i32 @layer_off(i32 %76)
  %78 = load i32, i32* @_RAISE, align 4
  %79 = load i32, i32* @_LOWER, align 4
  %80 = load i32, i32* @_FUNCTN, align 4
  %81 = call i32 @update_tri_layer(i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %68
  store i32 0, i32* %3, align 4
  br label %118

83:                                               ; preds = %15
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* @_LOWER, align 4
  %91 = call i32 @layer_on(i32 %90)
  %92 = load i32, i32* @_RAISE, align 4
  %93 = load i32, i32* @_LOWER, align 4
  %94 = load i32, i32* @_FUNCTN, align 4
  %95 = call i32 @update_tri_layer(i32 %92, i32 %93, i32 %94)
  br label %103

96:                                               ; preds = %83
  %97 = load i32, i32* @_LOWER, align 4
  %98 = call i32 @layer_off(i32 %97)
  %99 = load i32, i32* @_RAISE, align 4
  %100 = load i32, i32* @_LOWER, align 4
  %101 = load i32, i32* @_FUNCTN, align 4
  %102 = call i32 @update_tri_layer(i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %89
  store i32 0, i32* %3, align 4
  br label %118

104:                                              ; preds = %15
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @_MEDIA, align 4
  %112 = call i32 @layer_on(i32 %111)
  br label %116

113:                                              ; preds = %104
  %114 = load i32, i32* @_MEDIA, align 4
  %115 = call i32 @layer_off(i32 %114)
  br label %116

116:                                              ; preds = %113, %110
  store i32 0, i32* %3, align 4
  br label %118

117:                                              ; preds = %15
  store i32 1, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %116, %103, %82, %61, %46, %31, %14
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @process_record_dynamic_macro(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @set_oneshot_layer(i32, i32) #1

declare dso_local i32 @clear_oneshot_layer_state(i32) #1

declare dso_local i32 @IS_LAYER_ON(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
