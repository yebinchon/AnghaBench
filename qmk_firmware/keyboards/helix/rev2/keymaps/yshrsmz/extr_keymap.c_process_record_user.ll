; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/yshrsmz/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/yshrsmz/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@TOG_STATUS = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@_FUNC = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@KC_LANG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"`\00", align 1
@KC_LANG1 = common dso_local global i32 0, align 4
@RGB_current_mode = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %145 [
    i32 130, label %7
    i32 131, label %18
    i32 129, label %48
    i32 133, label %78
    i32 135, label %91
    i32 128, label %104
    i32 134, label %105
    i32 132, label %125
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, i64* @_QWERTY, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @persistent_default_layer_set(i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %146

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i32, i32* @TOG_STATUS, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @TOG_STATUS, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* @TOG_STATUS, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32, i32* @_LOWER, align 4
  %35 = call i32 @layer_on(i32 %34)
  %36 = load i32, i32* @_LOWER, align 4
  %37 = load i32, i32* @_RAISE, align 4
  %38 = load i32, i32* @_ADJUST, align 4
  %39 = call i32 @update_tri_layer_RGB(i32 %36, i32 %37, i32 %38)
  br label %47

40:                                               ; preds = %18
  store i32 0, i32* @TOG_STATUS, align 4
  %41 = load i32, i32* @_LOWER, align 4
  %42 = call i32 @layer_off(i32 %41)
  %43 = load i32, i32* @_LOWER, align 4
  %44 = load i32, i32* @_RAISE, align 4
  %45 = load i32, i32* @_ADJUST, align 4
  %46 = call i32 @update_tri_layer_RGB(i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %33
  store i32 0, i32* %3, align 4
  br label %146

48:                                               ; preds = %2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load i32, i32* @TOG_STATUS, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %63

58:                                               ; preds = %54
  %59 = load i32, i32* @TOG_STATUS, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* @TOG_STATUS, align 4
  br label %63

63:                                               ; preds = %58, %57
  %64 = load i32, i32* @_RAISE, align 4
  %65 = call i32 @layer_on(i32 %64)
  %66 = load i32, i32* @_LOWER, align 4
  %67 = load i32, i32* @_RAISE, align 4
  %68 = load i32, i32* @_ADJUST, align 4
  %69 = call i32 @update_tri_layer_RGB(i32 %66, i32 %67, i32 %68)
  br label %77

70:                                               ; preds = %48
  %71 = load i32, i32* @_RAISE, align 4
  %72 = call i32 @layer_off(i32 %71)
  store i32 0, i32* @TOG_STATUS, align 4
  %73 = load i32, i32* @_LOWER, align 4
  %74 = load i32, i32* @_RAISE, align 4
  %75 = load i32, i32* @_ADJUST, align 4
  %76 = call i32 @update_tri_layer_RGB(i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %63
  store i32 0, i32* %3, align 4
  br label %146

78:                                               ; preds = %2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @_FUNC, align 4
  %86 = call i32 @layer_on(i32 %85)
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @_FUNC, align 4
  %89 = call i32 @layer_off(i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  store i32 0, i32* %3, align 4
  br label %146

91:                                               ; preds = %2
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @_ADJUST, align 4
  %99 = call i32 @layer_on(i32 %98)
  br label %103

100:                                              ; preds = %91
  %101 = load i32, i32* @_ADJUST, align 4
  %102 = call i32 @layer_off(i32 %101)
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %3, align 4
  br label %146

104:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %146

105:                                              ; preds = %2
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keymap_config, i32 0, i32 0), align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @KC_LANG2, align 4
  %116 = call i32 @register_code(i32 %115)
  br label %120

117:                                              ; preds = %111
  %118 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %119 = call i32 @SEND_STRING(i32 %118)
  br label %120

120:                                              ; preds = %117, %114
  br label %124

121:                                              ; preds = %105
  %122 = load i32, i32* @KC_LANG2, align 4
  %123 = call i32 @unregister_code(i32 %122)
  br label %124

124:                                              ; preds = %121, %120
  store i32 0, i32* %3, align 4
  br label %146

125:                                              ; preds = %2
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @keymap_config, i32 0, i32 0), align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* @KC_LANG1, align 4
  %136 = call i32 @register_code(i32 %135)
  br label %140

137:                                              ; preds = %131
  %138 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %139 = call i32 @SEND_STRING(i32 %138)
  br label %140

140:                                              ; preds = %137, %134
  br label %144

141:                                              ; preds = %125
  %142 = load i32, i32* @KC_LANG1, align 4
  %143 = call i32 @unregister_code(i32 %142)
  br label %144

144:                                              ; preds = %141, %140
  store i32 0, i32* %3, align 4
  br label %146

145:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %144, %124, %104, %103, %90, %77, %47, %17
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer_RGB(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @SEND_STRING(i32) #1

declare dso_local i32 @SS_LALT(i8*) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
