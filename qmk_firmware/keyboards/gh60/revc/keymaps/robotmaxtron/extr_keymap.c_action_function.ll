; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gh60/revc/keymaps/robotmaxtron/extr_keymap.c_action_function.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gh60/revc/keymaps/robotmaxtron/extr_keymap.c_action_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@action_function.shift_esc_shift_mask = internal global i32 0, align 4
@MODS_CTRL_MASK = common dso_local global i32 0, align 4
@KC_GRV = common dso_local global i32 0, align 4
@KC_ESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @action_function(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %114 [
    i32 129, label %8
    i32 133, label %17
    i32 136, label %26
    i32 132, label %35
    i32 135, label %44
    i32 131, label %53
    i32 134, label %62
    i32 130, label %71
    i32 128, label %80
  ]

8:                                                ; preds = %3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 (...) @rgblight_toggle()
  br label %16

16:                                               ; preds = %14, %8
  br label %114

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (...) @rgblight_increase_hue()
  br label %25

25:                                               ; preds = %23, %17
  br label %114

26:                                               ; preds = %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (...) @rgblight_decrease_hue()
  br label %34

34:                                               ; preds = %32, %26
  br label %114

35:                                               ; preds = %3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 (...) @rgblight_increase_sat()
  br label %43

43:                                               ; preds = %41, %35
  br label %114

44:                                               ; preds = %3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 (...) @rgblight_decrease_sat()
  br label %52

52:                                               ; preds = %50, %44
  br label %114

53:                                               ; preds = %3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 (...) @rgblight_increase_val()
  br label %61

61:                                               ; preds = %59, %53
  br label %114

62:                                               ; preds = %3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 (...) @rgblight_decrease_val()
  br label %70

70:                                               ; preds = %68, %62
  br label %114

71:                                               ; preds = %3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = call i32 (...) @rgblight_step()
  br label %79

79:                                               ; preds = %77, %71
  br label %114

80:                                               ; preds = %3
  %81 = call i32 (...) @get_mods()
  %82 = load i32, i32* @MODS_CTRL_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* @action_function.shift_esc_shift_mask, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %80
  %90 = load i32, i32* @action_function.shift_esc_shift_mask, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* @KC_GRV, align 4
  %94 = call i32 @add_key(i32 %93)
  %95 = call i32 (...) @send_keyboard_report()
  br label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @KC_ESC, align 4
  %98 = call i32 @add_key(i32 %97)
  %99 = call i32 (...) @send_keyboard_report()
  br label %100

100:                                              ; preds = %96, %92
  br label %113

101:                                              ; preds = %80
  %102 = load i32, i32* @action_function.shift_esc_shift_mask, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* @KC_GRV, align 4
  %106 = call i32 @del_key(i32 %105)
  %107 = call i32 (...) @send_keyboard_report()
  br label %112

108:                                              ; preds = %101
  %109 = load i32, i32* @KC_ESC, align 4
  %110 = call i32 @del_key(i32 %109)
  %111 = call i32 (...) @send_keyboard_report()
  br label %112

112:                                              ; preds = %108, %104
  br label %113

113:                                              ; preds = %112, %100
  br label %114

114:                                              ; preds = %3, %113, %79, %70, %61, %52, %43, %34, %25, %16
  ret void
}

declare dso_local i32 @rgblight_toggle(...) #1

declare dso_local i32 @rgblight_increase_hue(...) #1

declare dso_local i32 @rgblight_decrease_hue(...) #1

declare dso_local i32 @rgblight_increase_sat(...) #1

declare dso_local i32 @rgblight_decrease_sat(...) #1

declare dso_local i32 @rgblight_increase_val(...) #1

declare dso_local i32 @rgblight_decrease_val(...) #1

declare dso_local i32 @rgblight_step(...) #1

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @add_key(i32) #1

declare dso_local i32 @send_keyboard_report(...) #1

declare dso_local i32 @del_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
