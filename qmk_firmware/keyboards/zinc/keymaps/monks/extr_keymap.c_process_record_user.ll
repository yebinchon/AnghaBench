; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/zinc/keymaps/monks/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/zinc/keymaps/monks/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@TOG_STATUS = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@KC_LANG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"`\00", align 1
@KC_LANG1 = common dso_local global i32 0, align 4
@RGB_current_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@rgblight_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %132 [
    i32 131, label %7
    i32 132, label %17
    i32 130, label %47
    i32 135, label %77
    i32 128, label %90
    i32 134, label %91
    i32 133, label %111
    i32 129, label %131
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
  br label %133

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i32, i32* @TOG_STATUS, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @TOG_STATUS, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* @TOG_STATUS, align 4
  br label %32

32:                                               ; preds = %27, %26
  %33 = load i32, i32* @_LOWER, align 4
  %34 = call i32 @layer_on(i32 %33)
  %35 = load i32, i32* @_LOWER, align 4
  %36 = load i32, i32* @_RAISE, align 4
  %37 = load i32, i32* @_ADJUST, align 4
  %38 = call i32 @update_tri_layer_RGB(i32 %35, i32 %36, i32 %37)
  br label %46

39:                                               ; preds = %17
  store i32 0, i32* @TOG_STATUS, align 4
  %40 = load i32, i32* @_LOWER, align 4
  %41 = call i32 @layer_off(i32 %40)
  %42 = load i32, i32* @_LOWER, align 4
  %43 = load i32, i32* @_RAISE, align 4
  %44 = load i32, i32* @_ADJUST, align 4
  %45 = call i32 @update_tri_layer_RGB(i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %32
  store i32 0, i32* %3, align 4
  br label %133

47:                                               ; preds = %2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load i32, i32* @TOG_STATUS, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @TOG_STATUS, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* @TOG_STATUS, align 4
  br label %62

62:                                               ; preds = %57, %56
  %63 = load i32, i32* @_RAISE, align 4
  %64 = call i32 @layer_on(i32 %63)
  %65 = load i32, i32* @_LOWER, align 4
  %66 = load i32, i32* @_RAISE, align 4
  %67 = load i32, i32* @_ADJUST, align 4
  %68 = call i32 @update_tri_layer_RGB(i32 %65, i32 %66, i32 %67)
  br label %76

69:                                               ; preds = %47
  %70 = load i32, i32* @_RAISE, align 4
  %71 = call i32 @layer_off(i32 %70)
  store i32 0, i32* @TOG_STATUS, align 4
  %72 = load i32, i32* @_LOWER, align 4
  %73 = load i32, i32* @_RAISE, align 4
  %74 = load i32, i32* @_ADJUST, align 4
  %75 = call i32 @update_tri_layer_RGB(i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %62
  store i32 0, i32* %3, align 4
  br label %133

77:                                               ; preds = %2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @_ADJUST, align 4
  %85 = call i32 @layer_on(i32 %84)
  br label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @_ADJUST, align 4
  %88 = call i32 @layer_off(i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  store i32 0, i32* %3, align 4
  br label %133

90:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %133

91:                                               ; preds = %2
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @keymap_config, i32 0, i32 0), align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @KC_LANG2, align 4
  %102 = call i32 @register_code(i32 %101)
  br label %106

103:                                              ; preds = %97
  %104 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %105 = call i32 @SEND_STRING(i32 %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %110

107:                                              ; preds = %91
  %108 = load i32, i32* @KC_LANG2, align 4
  %109 = call i32 @unregister_code(i32 %108)
  br label %110

110:                                              ; preds = %107, %106
  store i32 0, i32* %3, align 4
  br label %133

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
  %121 = load i32, i32* @KC_LANG1, align 4
  %122 = call i32 @register_code(i32 %121)
  br label %126

123:                                              ; preds = %117
  %124 = call i32 @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %125 = call i32 @SEND_STRING(i32 %124)
  br label %126

126:                                              ; preds = %123, %120
  br label %130

127:                                              ; preds = %111
  %128 = load i32, i32* @KC_LANG1, align 4
  %129 = call i32 @unregister_code(i32 %128)
  br label %130

130:                                              ; preds = %127, %126
  store i32 0, i32* %3, align 4
  br label %133

131:                                              ; preds = %2
  br label %132

132:                                              ; preds = %2, %131
  store i32 1, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %130, %110, %90, %89, %76, %46, %16
  %134 = load i32, i32* %3, align 4
  ret i32 %134
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
