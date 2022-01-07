; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/chance/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/chance/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i64 0, align 8
@_RAISE = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@_NUMPAD = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i64 0, align 8
@_DVORAK = common dso_local global i64 0, align 8
@KC_RSFT = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@tone_colemak = common dso_local global i32 0, align 4
@tone_dvorak = common dso_local global i32 0, align 4
@tone_plover = common dso_local global i32 0, align 4
@tone_plover_gb = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %155 [
    i32 129, label %7
    i32 131, label %18
    i32 134, label %34
    i32 136, label %44
    i32 135, label %55
    i32 132, label %66
    i32 128, label %87
    i32 137, label %108
    i32 130, label %121
    i32 133, label %145
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i64, i64* @_QWERTY, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @persistant_default_layer_set(i64 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %156

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i32, i32* @_RAISE, align 4
  %26 = call i32 @layer_off(i32 %25)
  %27 = load i32, i32* @_LOWER, align 4
  %28 = call i32 @layer_off(i32 %27)
  %29 = load i32, i32* @_ADJUST, align 4
  %30 = call i32 @layer_off(i32 %29)
  %31 = load i32, i32* @_NUMPAD, align 4
  %32 = call i32 @layer_on(i32 %31)
  br label %33

33:                                               ; preds = %24, %18
  store i32 0, i32* %3, align 4
  br label %156

34:                                               ; preds = %2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @_NUMPAD, align 4
  %42 = call i32 @layer_off(i32 %41)
  br label %43

43:                                               ; preds = %40, %34
  store i32 0, i32* %3, align 4
  br label %156

44:                                               ; preds = %2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i64, i64* @_COLEMAK, align 8
  %52 = shl i64 1, %51
  %53 = call i32 @persistant_default_layer_set(i64 %52)
  br label %54

54:                                               ; preds = %50, %44
  store i32 0, i32* %3, align 4
  br label %156

55:                                               ; preds = %2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64, i64* @_DVORAK, align 8
  %63 = shl i64 1, %62
  %64 = call i32 @persistant_default_layer_set(i64 %63)
  br label %65

65:                                               ; preds = %61, %55
  store i32 0, i32* %3, align 4
  br label %156

66:                                               ; preds = %2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* @_LOWER, align 4
  %74 = call i32 @layer_on(i32 %73)
  %75 = load i32, i32* @_LOWER, align 4
  %76 = load i32, i32* @_RAISE, align 4
  %77 = load i32, i32* @_ADJUST, align 4
  %78 = call i32 @update_tri_layer(i32 %75, i32 %76, i32 %77)
  br label %86

79:                                               ; preds = %66
  %80 = load i32, i32* @_LOWER, align 4
  %81 = call i32 @layer_off(i32 %80)
  %82 = load i32, i32* @_LOWER, align 4
  %83 = load i32, i32* @_RAISE, align 4
  %84 = load i32, i32* @_ADJUST, align 4
  %85 = call i32 @update_tri_layer(i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %72
  store i32 0, i32* %3, align 4
  br label %156

87:                                               ; preds = %2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load i32, i32* @_RAISE, align 4
  %95 = call i32 @layer_on(i32 %94)
  %96 = load i32, i32* @_LOWER, align 4
  %97 = load i32, i32* @_RAISE, align 4
  %98 = load i32, i32* @_ADJUST, align 4
  %99 = call i32 @update_tri_layer(i32 %96, i32 %97, i32 %98)
  br label %107

100:                                              ; preds = %87
  %101 = load i32, i32* @_RAISE, align 4
  %102 = call i32 @layer_off(i32 %101)
  %103 = load i32, i32* @_LOWER, align 4
  %104 = load i32, i32* @_RAISE, align 4
  %105 = load i32, i32* @_ADJUST, align 4
  %106 = call i32 @update_tri_layer(i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %93
  store i32 0, i32* %3, align 4
  br label %156

108:                                              ; preds = %2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* @KC_RSFT, align 4
  %116 = call i32 @register_code(i32 %115)
  br label %120

117:                                              ; preds = %108
  %118 = load i32, i32* @KC_RSFT, align 4
  %119 = call i32 @unregister_code(i32 %118)
  br label %120

120:                                              ; preds = %117, %114
  store i32 0, i32* %3, align 4
  br label %156

121:                                              ; preds = %2
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %121
  %128 = load i32, i32* @_RAISE, align 4
  %129 = call i32 @layer_off(i32 %128)
  %130 = load i32, i32* @_LOWER, align 4
  %131 = call i32 @layer_off(i32 %130)
  %132 = load i32, i32* @_ADJUST, align 4
  %133 = call i32 @layer_off(i32 %132)
  %134 = load i32, i32* @_PLOVER, align 4
  %135 = call i32 @layer_on(i32 %134)
  %136 = call i32 (...) @eeconfig_is_enabled()
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %127
  %139 = call i32 (...) @eeconfig_init()
  br label %140

140:                                              ; preds = %138, %127
  %141 = call i32 (...) @eeconfig_read_keymap()
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  %143 = call i32 @eeconfig_update_keymap(i32 %142)
  br label %144

144:                                              ; preds = %140, %121
  store i32 0, i32* %3, align 4
  br label %156

145:                                              ; preds = %2
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32, i32* @_PLOVER, align 4
  %153 = call i32 @layer_off(i32 %152)
  br label %154

154:                                              ; preds = %151, %145
  store i32 0, i32* %3, align 4
  br label %156

155:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %154, %144, %120, %107, %86, %65, %54, %43, %33, %17
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @persistant_default_layer_set(i64) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

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
