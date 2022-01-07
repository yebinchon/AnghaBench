; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/mjt/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/mjt/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@_DYN = common dso_local global i32 0, align 4
@DYN_REC_STOP = common dso_local global i32 0, align 4
@_QWERTY = common dso_local global i64 0, align 8
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@KC_RCTL = common dso_local global i32 0, align 4
@KC_POWER = common dso_local global i32 0, align 4
@tone_plover = common dso_local global i32 0, align 4
@tone_plover_gb = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @_DYN, align 4
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
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = call i32 @process_record_dynamic_macro(i32 %17, %struct.TYPE_7__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %145

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %144 [
    i32 129, label %24
    i32 132, label %35
    i32 128, label %56
    i32 134, label %77
    i32 130, label %90
    i32 133, label %114
    i32 131, label %124
  ]

24:                                               ; preds = %22
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i64, i64* @_QWERTY, align 8
  %32 = shl i64 1, %31
  %33 = call i32 @persistant_default_layer_set(i64 %32)
  br label %34

34:                                               ; preds = %30, %24
  store i32 0, i32* %3, align 4
  br label %145

35:                                               ; preds = %22
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @_LOWER, align 4
  %43 = call i32 @layer_on(i32 %42)
  %44 = load i32, i32* @_LOWER, align 4
  %45 = load i32, i32* @_RAISE, align 4
  %46 = load i32, i32* @_ADJUST, align 4
  %47 = call i32 @update_tri_layer(i32 %44, i32 %45, i32 %46)
  br label %55

48:                                               ; preds = %35
  %49 = load i32, i32* @_LOWER, align 4
  %50 = call i32 @layer_off(i32 %49)
  %51 = load i32, i32* @_LOWER, align 4
  %52 = load i32, i32* @_RAISE, align 4
  %53 = load i32, i32* @_ADJUST, align 4
  %54 = call i32 @update_tri_layer(i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %41
  store i32 0, i32* %3, align 4
  br label %145

56:                                               ; preds = %22
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32, i32* @_RAISE, align 4
  %64 = call i32 @layer_on(i32 %63)
  %65 = load i32, i32* @_LOWER, align 4
  %66 = load i32, i32* @_RAISE, align 4
  %67 = load i32, i32* @_ADJUST, align 4
  %68 = call i32 @update_tri_layer(i32 %65, i32 %66, i32 %67)
  br label %76

69:                                               ; preds = %56
  %70 = load i32, i32* @_RAISE, align 4
  %71 = call i32 @layer_off(i32 %70)
  %72 = load i32, i32* @_LOWER, align 4
  %73 = load i32, i32* @_RAISE, align 4
  %74 = load i32, i32* @_ADJUST, align 4
  %75 = call i32 @update_tri_layer(i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %62
  store i32 0, i32* %3, align 4
  br label %145

77:                                               ; preds = %22
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @KC_RSFT, align 4
  %85 = call i32 @register_code(i32 %84)
  br label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @KC_RSFT, align 4
  %88 = call i32 @unregister_code(i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  store i32 0, i32* %3, align 4
  br label %145

90:                                               ; preds = %22
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %90
  %97 = load i32, i32* @_RAISE, align 4
  %98 = call i32 @layer_off(i32 %97)
  %99 = load i32, i32* @_LOWER, align 4
  %100 = call i32 @layer_off(i32 %99)
  %101 = load i32, i32* @_ADJUST, align 4
  %102 = call i32 @layer_off(i32 %101)
  %103 = load i32, i32* @_PLOVER, align 4
  %104 = call i32 @layer_on(i32 %103)
  %105 = call i32 (...) @eeconfig_is_enabled()
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %96
  %108 = call i32 (...) @eeconfig_init()
  br label %109

109:                                              ; preds = %107, %96
  %110 = call i32 (...) @eeconfig_read_keymap()
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @keymap_config, i32 0, i32 0), align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @keymap_config, i32 0, i32 1), align 4
  %112 = call i32 @eeconfig_update_keymap(i32 %111)
  br label %113

113:                                              ; preds = %109, %90
  store i32 0, i32* %3, align 4
  br label %145

114:                                              ; preds = %22
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* @_PLOVER, align 4
  %122 = call i32 @layer_off(i32 %121)
  br label %123

123:                                              ; preds = %120, %114
  store i32 0, i32* %3, align 4
  br label %145

124:                                              ; preds = %22
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = load i32, i32* @KC_RSFT, align 4
  %132 = call i32 @register_code(i32 %131)
  %133 = load i32, i32* @KC_RCTL, align 4
  %134 = call i32 @register_code(i32 %133)
  %135 = load i32, i32* @KC_POWER, align 4
  %136 = call i32 @register_code(i32 %135)
  %137 = load i32, i32* @KC_POWER, align 4
  %138 = call i32 @unregister_code(i32 %137)
  %139 = load i32, i32* @KC_RCTL, align 4
  %140 = call i32 @unregister_code(i32 %139)
  %141 = load i32, i32* @KC_RSFT, align 4
  %142 = call i32 @unregister_code(i32 %141)
  br label %143

143:                                              ; preds = %130, %124
  store i32 0, i32* %3, align 4
  br label %145

144:                                              ; preds = %22
  store i32 1, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %143, %123, %113, %89, %76, %55, %34, %21
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @MO(i32) #1

declare dso_local i32 @process_record_dynamic_macro(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @persistant_default_layer_set(i64) #1

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
