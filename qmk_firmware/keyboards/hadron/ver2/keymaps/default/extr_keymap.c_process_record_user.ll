; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hadron/ver2/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hadron/ver2/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@RGB_INIT = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@RGB_current_mode = common dso_local global i32 0, align 4
@TOG_STATUS = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %139 [
    i32 130, label %7
    i32 133, label %17
    i32 131, label %27
    i32 129, label %66
    i32 134, label %105
    i32 128, label %118
    i32 132, label %130
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
  br label %140

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @_COLEMAK, align 4
  %25 = call i32 @set_single_persistent_default_layer(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %140

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = load i32, i32* @RGB_INIT, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %38, i32* @RGB_current_mode, align 4
  store i32 1, i32* @RGB_INIT, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = load i32, i32* @TOG_STATUS, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @TOG_STATUS, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* @TOG_STATUS, align 4
  %48 = call i32 @rgblight_mode(i32 16)
  br label %49

49:                                               ; preds = %43, %42
  %50 = load i32, i32* @_LOWER, align 4
  %51 = call i32 @layer_on(i32 %50)
  %52 = load i32, i32* @_LOWER, align 4
  %53 = load i32, i32* @_RAISE, align 4
  %54 = load i32, i32* @_ADJUST, align 4
  %55 = call i32 @update_tri_layer_RGB(i32 %52, i32 %53, i32 %54)
  br label %65

56:                                               ; preds = %27
  %57 = load i32, i32* @RGB_current_mode, align 4
  %58 = call i32 @rgblight_mode(i32 %57)
  store i32 0, i32* @TOG_STATUS, align 4
  %59 = load i32, i32* @_LOWER, align 4
  %60 = call i32 @layer_off(i32 %59)
  %61 = load i32, i32* @_LOWER, align 4
  %62 = load i32, i32* @_RAISE, align 4
  %63 = load i32, i32* @_ADJUST, align 4
  %64 = call i32 @update_tri_layer_RGB(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %49
  store i32 0, i32* %3, align 4
  br label %140

66:                                               ; preds = %2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %66
  %73 = load i32, i32* @RGB_INIT, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %78

76:                                               ; preds = %72
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %77, i32* @RGB_current_mode, align 4
  store i32 1, i32* @RGB_INIT, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = load i32, i32* @TOG_STATUS, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @TOG_STATUS, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* @TOG_STATUS, align 4
  %87 = call i32 @rgblight_mode(i32 15)
  br label %88

88:                                               ; preds = %82, %81
  %89 = load i32, i32* @_RAISE, align 4
  %90 = call i32 @layer_on(i32 %89)
  %91 = load i32, i32* @_LOWER, align 4
  %92 = load i32, i32* @_RAISE, align 4
  %93 = load i32, i32* @_ADJUST, align 4
  %94 = call i32 @update_tri_layer_RGB(i32 %91, i32 %92, i32 %93)
  br label %104

95:                                               ; preds = %66
  %96 = load i32, i32* @RGB_current_mode, align 4
  %97 = call i32 @rgblight_mode(i32 %96)
  %98 = load i32, i32* @_RAISE, align 4
  %99 = call i32 @layer_off(i32 %98)
  store i32 0, i32* @TOG_STATUS, align 4
  %100 = load i32, i32* @_LOWER, align 4
  %101 = load i32, i32* @_RAISE, align 4
  %102 = load i32, i32* @_ADJUST, align 4
  %103 = call i32 @update_tri_layer_RGB(i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %95, %88
  store i32 0, i32* %3, align 4
  br label %140

105:                                              ; preds = %2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @KC_RSFT, align 4
  %113 = call i32 @register_code(i32 %112)
  br label %117

114:                                              ; preds = %105
  %115 = load i32, i32* @KC_RSFT, align 4
  %116 = call i32 @unregister_code(i32 %115)
  br label %117

117:                                              ; preds = %114, %111
  store i32 0, i32* %3, align 4
  br label %140

118:                                              ; preds = %2
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load i32, i32* @RGB_current_mode, align 4
  %126 = call i32 @rgblight_mode(i32 %125)
  %127 = call i32 (...) @rgblight_step()
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %128, i32* @RGB_current_mode, align 4
  br label %129

129:                                              ; preds = %124, %118
  store i32 0, i32* %3, align 4
  br label %140

130:                                              ; preds = %2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = call i32 @SEND_STRING(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %130
  store i32 0, i32* %3, align 4
  br label %140

139:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %138, %129, %117, %104, %65, %26, %16
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer_RGB(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @rgblight_step(...) #1

declare dso_local i32 @SEND_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
