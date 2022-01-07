; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/mjtnumsym/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/mjtnumsym/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DYN_REC_STOP = common dso_local global i32 0, align 4
@_QWERTY = common dso_local global i64 0, align 8
@_FKEYS = common dso_local global i32 0, align 4
@_NUMSYM = common dso_local global i32 0, align 4
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
  %8 = icmp eq i32 %7, 132
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @DYN_REC_STOP, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = call i32 @process_record_dynamic_macro(i32 %15, %struct.TYPE_7__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %143

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %142 [
    i32 128, label %22
    i32 132, label %33
    i32 130, label %54
    i32 134, label %75
    i32 129, label %88
    i32 133, label %112
    i32 131, label %122
  ]

22:                                               ; preds = %20
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i64, i64* @_QWERTY, align 8
  %30 = shl i64 1, %29
  %31 = call i32 @persistant_default_layer_set(i64 %30)
  br label %32

32:                                               ; preds = %28, %22
  store i32 0, i32* %3, align 4
  br label %143

33:                                               ; preds = %20
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* @_FKEYS, align 4
  %41 = call i32 @layer_on(i32 %40)
  %42 = load i32, i32* @_FKEYS, align 4
  %43 = load i32, i32* @_NUMSYM, align 4
  %44 = load i32, i32* @_ADJUST, align 4
  %45 = call i32 @update_tri_layer(i32 %42, i32 %43, i32 %44)
  br label %53

46:                                               ; preds = %33
  %47 = load i32, i32* @_FKEYS, align 4
  %48 = call i32 @layer_off(i32 %47)
  %49 = load i32, i32* @_FKEYS, align 4
  %50 = load i32, i32* @_NUMSYM, align 4
  %51 = load i32, i32* @_ADJUST, align 4
  %52 = call i32 @update_tri_layer(i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %39
  store i32 0, i32* %3, align 4
  br label %143

54:                                               ; preds = %20
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* @_NUMSYM, align 4
  %62 = call i32 @layer_on(i32 %61)
  %63 = load i32, i32* @_FKEYS, align 4
  %64 = load i32, i32* @_NUMSYM, align 4
  %65 = load i32, i32* @_ADJUST, align 4
  %66 = call i32 @update_tri_layer(i32 %63, i32 %64, i32 %65)
  br label %74

67:                                               ; preds = %54
  %68 = load i32, i32* @_NUMSYM, align 4
  %69 = call i32 @layer_off(i32 %68)
  %70 = load i32, i32* @_FKEYS, align 4
  %71 = load i32, i32* @_NUMSYM, align 4
  %72 = load i32, i32* @_ADJUST, align 4
  %73 = call i32 @update_tri_layer(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  store i32 0, i32* %3, align 4
  br label %143

75:                                               ; preds = %20
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @KC_RSFT, align 4
  %83 = call i32 @register_code(i32 %82)
  br label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @KC_RSFT, align 4
  %86 = call i32 @unregister_code(i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  store i32 0, i32* %3, align 4
  br label %143

88:                                               ; preds = %20
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load i32, i32* @_NUMSYM, align 4
  %96 = call i32 @layer_off(i32 %95)
  %97 = load i32, i32* @_FKEYS, align 4
  %98 = call i32 @layer_off(i32 %97)
  %99 = load i32, i32* @_ADJUST, align 4
  %100 = call i32 @layer_off(i32 %99)
  %101 = load i32, i32* @_PLOVER, align 4
  %102 = call i32 @layer_on(i32 %101)
  %103 = call i32 (...) @eeconfig_is_enabled()
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %94
  %106 = call i32 (...) @eeconfig_init()
  br label %107

107:                                              ; preds = %105, %94
  %108 = call i32 (...) @eeconfig_read_keymap()
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @keymap_config, i32 0, i32 0), align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @keymap_config, i32 0, i32 1), align 4
  %110 = call i32 @eeconfig_update_keymap(i32 %109)
  br label %111

111:                                              ; preds = %107, %88
  store i32 0, i32* %3, align 4
  br label %143

112:                                              ; preds = %20
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* @_PLOVER, align 4
  %120 = call i32 @layer_off(i32 %119)
  br label %121

121:                                              ; preds = %118, %112
  store i32 0, i32* %3, align 4
  br label %143

122:                                              ; preds = %20
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %122
  %129 = load i32, i32* @KC_RSFT, align 4
  %130 = call i32 @register_code(i32 %129)
  %131 = load i32, i32* @KC_RCTL, align 4
  %132 = call i32 @register_code(i32 %131)
  %133 = load i32, i32* @KC_POWER, align 4
  %134 = call i32 @register_code(i32 %133)
  %135 = load i32, i32* @KC_POWER, align 4
  %136 = call i32 @unregister_code(i32 %135)
  %137 = load i32, i32* @KC_RCTL, align 4
  %138 = call i32 @unregister_code(i32 %137)
  %139 = load i32, i32* @KC_RSFT, align 4
  %140 = call i32 @unregister_code(i32 %139)
  br label %141

141:                                              ; preds = %128, %122
  store i32 0, i32* %3, align 4
  br label %143

142:                                              ; preds = %20
  store i32 1, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %141, %121, %111, %87, %74, %53, %32, %19
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

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
