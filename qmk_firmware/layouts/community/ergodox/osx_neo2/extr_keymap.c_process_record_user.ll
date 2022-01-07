; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/osx_neo2/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/osx_neo2/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@capslock_state = common dso_local global i32 0, align 4
@NEO_3 = common dso_local global i32 0, align 4
@neo3_state = common dso_local global i32 0, align 4
@neo3_timer = common dso_local global i32 0, align 4
@KC_2 = common dso_local global i32 0, align 4
@MOD_MASK_SHIFT = common dso_local global i32 0, align 4
@KC_Y = common dso_local global i32 0, align 4
@MOD_MASK_NONE = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@KC_LOCKING_CAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %99 [
    i32 131, label %7
    i32 130, label %23
    i32 129, label %39
    i32 128, label %61
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = call i32 @MOD_BIT(i32 131)
  %15 = load i32, i32* @capslock_state, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* @capslock_state, align 4
  br label %22

17:                                               ; preds = %7
  %18 = call i32 @MOD_BIT(i32 131)
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @capslock_state, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* @capslock_state, align 4
  br label %22

22:                                               ; preds = %17, %13
  br label %99

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = call i32 @MOD_BIT(i32 130)
  %31 = load i32, i32* @capslock_state, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @capslock_state, align 4
  br label %38

33:                                               ; preds = %23
  %34 = call i32 @MOD_BIT(i32 130)
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @capslock_state, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* @capslock_state, align 4
  br label %38

38:                                               ; preds = %33, %29
  br label %99

39:                                               ; preds = %2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @NEO_3, align 4
  %47 = call i32 @layer_on(i32 %46)
  %48 = load i32, i32* @neo3_state, align 4
  %49 = or i32 %48, 2
  store i32 %49, i32* @neo3_state, align 4
  br label %60

50:                                               ; preds = %39
  %51 = load i32, i32* @neo3_state, align 4
  %52 = and i32 %51, -3
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @NEO_3, align 4
  %56 = call i32 @layer_off(i32 %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* @neo3_state, align 4
  %59 = and i32 %58, -3
  store i32 %59, i32* @neo3_state, align 4
  br label %60

60:                                               ; preds = %57, %45
  br label %99

61:                                               ; preds = %2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = call i32 (...) @timer_read()
  store i32 %68, i32* @neo3_timer, align 4
  %69 = load i32, i32* @neo3_state, align 4
  %70 = or i32 %69, 4
  store i32 %70, i32* @neo3_state, align 4
  %71 = load i32, i32* @NEO_3, align 4
  %72 = call i32 @layer_on(i32 %71)
  br label %98

73:                                               ; preds = %61
  %74 = load i32, i32* @neo3_state, align 4
  %75 = and i32 %74, -5
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @NEO_3, align 4
  %79 = call i32 @layer_off(i32 %78)
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i32, i32* @neo3_state, align 4
  %82 = and i32 %81, -5
  store i32 %82, i32* @neo3_state, align 4
  %83 = load i32, i32* @neo3_timer, align 4
  %84 = call i32 @timer_elapsed(i32 %83)
  %85 = icmp sle i32 %84, 150
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load i32, i32* @neo3_state, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* @KC_2, align 4
  %91 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %92 = call i32 @tap_with_modifiers(i32 %90, i32 %91)
  store i32 0, i32* %3, align 4
  br label %122

93:                                               ; preds = %86
  %94 = load i32, i32* @KC_Y, align 4
  %95 = load i32, i32* @MOD_MASK_NONE, align 4
  %96 = call i32 @tap_with_modifiers(i32 %94, i32 %95)
  store i32 0, i32* %3, align 4
  br label %122

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97, %67
  br label %99

99:                                               ; preds = %2, %98, %60, %38, %22
  %100 = load i32, i32* @capslock_state, align 4
  %101 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = call i32 (...) @host_keyboard_leds()
  %107 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %108 = shl i32 1, %107
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @KC_LOCKING_CAPS, align 4
  %113 = call i32 @unregister_code(i32 %112)
  br label %117

114:                                              ; preds = %105
  %115 = load i32, i32* @KC_LOCKING_CAPS, align 4
  %116 = call i32 @register_code(i32 %115)
  br label %117

117:                                              ; preds = %114, %111
  store i32 0, i32* %3, align 4
  br label %122

118:                                              ; preds = %99
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = call i32 @process_record_user_shifted(i32 %119, %struct.TYPE_6__* %120)
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %117, %93, %89
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @tap_with_modifiers(i32, i32) #1

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @process_record_user_shifted(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
