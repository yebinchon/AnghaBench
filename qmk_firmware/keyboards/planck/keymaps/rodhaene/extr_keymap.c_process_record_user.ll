; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/rodhaene/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/rodhaene/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@PORTE = common dso_local global i32 0, align 4
@_NUMPAD = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %110 [
    i32 129, label %7
    i32 131, label %17
    i32 128, label %38
    i32 133, label %59
    i32 130, label %76
    i32 132, label %100
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_QWERTY, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %111

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32, i32* @_LOWER, align 4
  %25 = call i32 @layer_on(i32 %24)
  %26 = load i32, i32* @_LOWER, align 4
  %27 = load i32, i32* @_RAISE, align 4
  %28 = load i32, i32* @_ADJUST, align 4
  %29 = call i32 @update_tri_layer(i32 %26, i32 %27, i32 %28)
  br label %37

30:                                               ; preds = %17
  %31 = load i32, i32* @_LOWER, align 4
  %32 = call i32 @layer_off(i32 %31)
  %33 = load i32, i32* @_LOWER, align 4
  %34 = load i32, i32* @_RAISE, align 4
  %35 = load i32, i32* @_ADJUST, align 4
  %36 = call i32 @update_tri_layer(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %23
  store i32 0, i32* %3, align 4
  br label %111

38:                                               ; preds = %2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @_RAISE, align 4
  %46 = call i32 @layer_on(i32 %45)
  %47 = load i32, i32* @_LOWER, align 4
  %48 = load i32, i32* @_RAISE, align 4
  %49 = load i32, i32* @_ADJUST, align 4
  %50 = call i32 @update_tri_layer(i32 %47, i32 %48, i32 %49)
  br label %58

51:                                               ; preds = %38
  %52 = load i32, i32* @_RAISE, align 4
  %53 = call i32 @layer_off(i32 %52)
  %54 = load i32, i32* @_LOWER, align 4
  %55 = load i32, i32* @_RAISE, align 4
  %56 = load i32, i32* @_ADJUST, align 4
  %57 = call i32 @update_tri_layer(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %44
  store i32 0, i32* %3, align 4
  br label %111

59:                                               ; preds = %2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* @KC_RSFT, align 4
  %67 = call i32 @register_code(i32 %66)
  %68 = load i32, i32* @PORTE, align 4
  %69 = and i32 %68, -65
  store i32 %69, i32* @PORTE, align 4
  br label %75

70:                                               ; preds = %59
  %71 = load i32, i32* @KC_RSFT, align 4
  %72 = call i32 @unregister_code(i32 %71)
  %73 = load i32, i32* @PORTE, align 4
  %74 = or i32 %73, 64
  store i32 %74, i32* @PORTE, align 4
  br label %75

75:                                               ; preds = %70, %65
  store i32 0, i32* %3, align 4
  br label %111

76:                                               ; preds = %2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %76
  %83 = load i32, i32* @_RAISE, align 4
  %84 = call i32 @layer_off(i32 %83)
  %85 = load i32, i32* @_LOWER, align 4
  %86 = call i32 @layer_off(i32 %85)
  %87 = load i32, i32* @_ADJUST, align 4
  %88 = call i32 @layer_off(i32 %87)
  %89 = load i32, i32* @_NUMPAD, align 4
  %90 = call i32 @layer_on(i32 %89)
  %91 = call i32 (...) @eeconfig_is_enabled()
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %82
  %94 = call i32 (...) @eeconfig_init()
  br label %95

95:                                               ; preds = %93, %82
  %96 = call i32 (...) @eeconfig_read_keymap()
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  %98 = call i32 @eeconfig_update_keymap(i32 %97)
  br label %99

99:                                               ; preds = %95, %76
  store i32 0, i32* %3, align 4
  br label %111

100:                                              ; preds = %2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @_NUMPAD, align 4
  %108 = call i32 @layer_off(i32 %107)
  br label %109

109:                                              ; preds = %106, %100
  store i32 0, i32* %3, align 4
  br label %111

110:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %109, %99, %75, %58, %37, %16
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_keymap(...) #1

declare dso_local i32 @eeconfig_update_keymap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
