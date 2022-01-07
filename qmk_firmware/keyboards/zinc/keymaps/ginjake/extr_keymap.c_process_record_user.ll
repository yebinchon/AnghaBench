; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/zinc/keymaps/ginjake/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/zinc/keymaps/ginjake/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@_DVORAK = common dso_local global i32 0, align 4
@TOG_STATUS = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@KC_LANG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"`\00", align 1
@KC_LANG1 = common dso_local global i32 0, align 4
@RGB_current_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@aqours_mode = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %153 [
    i32 131, label %7
    i32 136, label %17
    i32 135, label %27
    i32 132, label %37
    i32 130, label %67
    i32 138, label %97
    i32 128, label %110
    i32 134, label %111
    i32 133, label %131
    i32 137, label %151
    i32 129, label %152
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_QWERTY, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %154

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @_COLEMAK, align 4
  %25 = call i32 @set_single_persistent_default_layer(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %154

27:                                               ; preds = %2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @_DVORAK, align 4
  %35 = call i32 @set_single_persistent_default_layer(i32 %34)
  br label %36

36:                                               ; preds = %33, %27
  store i32 0, i32* %3, align 4
  br label %154

37:                                               ; preds = %2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load i32, i32* @TOG_STATUS, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %52

47:                                               ; preds = %43
  %48 = load i32, i32* @TOG_STATUS, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* @TOG_STATUS, align 4
  br label %52

52:                                               ; preds = %47, %46
  %53 = load i32, i32* @_LOWER, align 4
  %54 = call i32 @layer_on(i32 %53)
  %55 = load i32, i32* @_LOWER, align 4
  %56 = load i32, i32* @_RAISE, align 4
  %57 = load i32, i32* @_ADJUST, align 4
  %58 = call i32 @update_tri_layer_RGB(i32 %55, i32 %56, i32 %57)
  br label %66

59:                                               ; preds = %37
  store i32 0, i32* @TOG_STATUS, align 4
  %60 = load i32, i32* @_LOWER, align 4
  %61 = call i32 @layer_off(i32 %60)
  %62 = load i32, i32* @_LOWER, align 4
  %63 = load i32, i32* @_RAISE, align 4
  %64 = load i32, i32* @_ADJUST, align 4
  %65 = call i32 @update_tri_layer_RGB(i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %52
  store i32 0, i32* %3, align 4
  br label %154

67:                                               ; preds = %2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = load i32, i32* @TOG_STATUS, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %82

77:                                               ; preds = %73
  %78 = load i32, i32* @TOG_STATUS, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  store i32 %81, i32* @TOG_STATUS, align 4
  br label %82

82:                                               ; preds = %77, %76
  %83 = load i32, i32* @_RAISE, align 4
  %84 = call i32 @layer_on(i32 %83)
  %85 = load i32, i32* @_LOWER, align 4
  %86 = load i32, i32* @_RAISE, align 4
  %87 = load i32, i32* @_ADJUST, align 4
  %88 = call i32 @update_tri_layer_RGB(i32 %85, i32 %86, i32 %87)
  br label %96

89:                                               ; preds = %67
  %90 = load i32, i32* @_RAISE, align 4
  %91 = call i32 @layer_off(i32 %90)
  store i32 0, i32* @TOG_STATUS, align 4
  %92 = load i32, i32* @_LOWER, align 4
  %93 = load i32, i32* @_RAISE, align 4
  %94 = load i32, i32* @_ADJUST, align 4
  %95 = call i32 @update_tri_layer_RGB(i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %82
  store i32 0, i32* %3, align 4
  br label %154

97:                                               ; preds = %2
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @_ADJUST, align 4
  %105 = call i32 @layer_on(i32 %104)
  br label %109

106:                                              ; preds = %97
  %107 = load i32, i32* @_ADJUST, align 4
  %108 = call i32 @layer_off(i32 %107)
  br label %109

109:                                              ; preds = %106, %103
  store i32 0, i32* %3, align 4
  br label %154

110:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %154

111:                                              ; preds = %2
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @keymap_config, i32 0, i32 0), align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @KC_LANG2, align 4
  %122 = call i32 @register_code(i32 %121)
  br label %126

123:                                              ; preds = %117
  %124 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %125 = call i32 @SEND_STRING(i32 %124)
  br label %126

126:                                              ; preds = %123, %120
  br label %130

127:                                              ; preds = %111
  %128 = load i32, i32* @KC_LANG2, align 4
  %129 = call i32 @unregister_code(i32 %128)
  br label %130

130:                                              ; preds = %127, %126
  store i32 0, i32* %3, align 4
  br label %154

131:                                              ; preds = %2
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %131
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @keymap_config, i32 0, i32 0), align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* @KC_LANG1, align 4
  %142 = call i32 @register_code(i32 %141)
  br label %146

143:                                              ; preds = %137
  %144 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %145 = call i32 @SEND_STRING(i32 %144)
  br label %146

146:                                              ; preds = %143, %140
  br label %150

147:                                              ; preds = %131
  %148 = load i32, i32* @KC_LANG1, align 4
  %149 = call i32 @unregister_code(i32 %148)
  br label %150

150:                                              ; preds = %147, %146
  store i32 0, i32* %3, align 4
  br label %154

151:                                              ; preds = %2
  br label %153

152:                                              ; preds = %2
  br label %153

153:                                              ; preds = %2, %152, %151
  store i32 1, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %150, %130, %110, %109, %96, %66, %36, %26, %16
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

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
