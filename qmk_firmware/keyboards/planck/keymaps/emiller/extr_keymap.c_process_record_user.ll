; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/emiller/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/emiller/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"mode just switched to qwerty and this is a huge string\0A\00", align 1
@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@_DVORAK = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@_NUM = common dso_local global i32 0, align 4
@plover_gb_song = common dso_local global i32 0, align 4
@plover_song = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %148 [
    i32 129, label %7
    i32 135, label %18
    i32 134, label %28
    i32 132, label %38
    i32 128, label %59
    i32 136, label %80
    i32 130, label %93
    i32 133, label %117
    i32 131, label %127
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = call i32 @print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @_QWERTY, align 4
  %16 = call i32 @set_single_persistent_default_layer(i32 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %149

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @_COLEMAK, align 4
  %26 = call i32 @set_single_persistent_default_layer(i32 %25)
  br label %27

27:                                               ; preds = %24, %18
  store i32 0, i32* %3, align 4
  br label %149

28:                                               ; preds = %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @_DVORAK, align 4
  %36 = call i32 @set_single_persistent_default_layer(i32 %35)
  br label %37

37:                                               ; preds = %34, %28
  store i32 0, i32* %3, align 4
  br label %149

38:                                               ; preds = %2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @_LOWER, align 4
  %46 = call i32 @layer_on(i32 %45)
  %47 = load i32, i32* @_LOWER, align 4
  %48 = load i32, i32* @_RAISE, align 4
  %49 = load i32, i32* @_ADJUST, align 4
  %50 = call i32 @update_tri_layer(i32 %47, i32 %48, i32 %49)
  br label %58

51:                                               ; preds = %38
  %52 = load i32, i32* @_LOWER, align 4
  %53 = call i32 @layer_off(i32 %52)
  %54 = load i32, i32* @_LOWER, align 4
  %55 = load i32, i32* @_RAISE, align 4
  %56 = load i32, i32* @_ADJUST, align 4
  %57 = call i32 @update_tri_layer(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %44
  store i32 0, i32* %3, align 4
  br label %149

59:                                               ; preds = %2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* @_RAISE, align 4
  %67 = call i32 @layer_on(i32 %66)
  %68 = load i32, i32* @_LOWER, align 4
  %69 = load i32, i32* @_RAISE, align 4
  %70 = load i32, i32* @_ADJUST, align 4
  %71 = call i32 @update_tri_layer(i32 %68, i32 %69, i32 %70)
  br label %79

72:                                               ; preds = %59
  %73 = load i32, i32* @_RAISE, align 4
  %74 = call i32 @layer_off(i32 %73)
  %75 = load i32, i32* @_LOWER, align 4
  %76 = load i32, i32* @_RAISE, align 4
  %77 = load i32, i32* @_ADJUST, align 4
  %78 = call i32 @update_tri_layer(i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %65
  store i32 0, i32* %3, align 4
  br label %149

80:                                               ; preds = %2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @KC_RSFT, align 4
  %88 = call i32 @register_code(i32 %87)
  br label %92

89:                                               ; preds = %80
  %90 = load i32, i32* @KC_RSFT, align 4
  %91 = call i32 @unregister_code(i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  store i32 0, i32* %3, align 4
  br label %149

93:                                               ; preds = %2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %93
  %100 = load i32, i32* @_RAISE, align 4
  %101 = call i32 @layer_off(i32 %100)
  %102 = load i32, i32* @_LOWER, align 4
  %103 = call i32 @layer_off(i32 %102)
  %104 = load i32, i32* @_ADJUST, align 4
  %105 = call i32 @layer_off(i32 %104)
  %106 = load i32, i32* @_PLOVER, align 4
  %107 = call i32 @layer_on(i32 %106)
  %108 = call i32 (...) @eeconfig_is_enabled()
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %99
  %111 = call i32 (...) @eeconfig_init()
  br label %112

112:                                              ; preds = %110, %99
  %113 = call i32 (...) @eeconfig_read_keymap()
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  %115 = call i32 @eeconfig_update_keymap(i32 %114)
  br label %116

116:                                              ; preds = %112, %93
  store i32 0, i32* %3, align 4
  br label %149

117:                                              ; preds = %2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* @_PLOVER, align 4
  %125 = call i32 @layer_off(i32 %124)
  br label %126

126:                                              ; preds = %123, %117
  store i32 0, i32* %3, align 4
  br label %149

127:                                              ; preds = %2
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load i32, i32* @_NUM, align 4
  %135 = call i32 @layer_on(i32 %134)
  %136 = load i32, i32* @_LOWER, align 4
  %137 = load i32, i32* @_RAISE, align 4
  %138 = load i32, i32* @_ADJUST, align 4
  %139 = call i32 @update_tri_layer(i32 %136, i32 %137, i32 %138)
  br label %147

140:                                              ; preds = %127
  %141 = load i32, i32* @_NUM, align 4
  %142 = call i32 @layer_off(i32 %141)
  %143 = load i32, i32* @_LOWER, align 4
  %144 = load i32, i32* @_RAISE, align 4
  %145 = load i32, i32* @_ADJUST, align 4
  %146 = call i32 @update_tri_layer(i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %140, %133
  store i32 0, i32* %3, align 4
  br label %149

148:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %147, %126, %116, %92, %79, %58, %37, %27, %17
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @print(i8*) #1

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
