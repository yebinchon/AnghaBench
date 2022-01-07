; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/five_rows/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/five_rows/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@_DVORAK = common dso_local global i32 0, align 4
@_EUCALYN = common dso_local global i32 0, align 4
@_KEYPAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"00\00", align 1
@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@KC_LANG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@KC_LANG1 = common dso_local global i32 0, align 4
@tone_colemak = common dso_local global i32 0, align 4
@tone_dvorak = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %107 [
    i32 129, label %7
    i32 136, label %17
    i32 135, label %27
    i32 134, label %37
    i32 130, label %47
    i32 133, label %57
    i32 132, label %66
    i32 131, label %86
    i32 128, label %106
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
  %15 = call i32 @update_base_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %108

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @_COLEMAK, align 4
  %25 = call i32 @update_base_layer(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %108

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @_DVORAK, align 4
  %35 = call i32 @update_base_layer(i32 %34)
  br label %36

36:                                               ; preds = %33, %27
  store i32 0, i32* %3, align 4
  br label %108

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @_EUCALYN, align 4
  %45 = call i32 @update_base_layer(i32 %44)
  br label %46

46:                                               ; preds = %43, %37
  store i32 0, i32* %3, align 4
  br label %108

47:                                               ; preds = %2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @_KEYPAD, align 4
  %55 = call i32 @update_base_layer(i32 %54)
  br label %56

56:                                               ; preds = %53, %47
  store i32 0, i32* %3, align 4
  br label %108

57:                                               ; preds = %2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %57
  store i32 0, i32* %3, align 4
  br label %108

66:                                               ; preds = %2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @KC_LANG2, align 4
  %77 = call i32 @register_code(i32 %76)
  br label %81

78:                                               ; preds = %72
  %79 = call i8* @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i32 @SEND_STRING(i8* %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %85

82:                                               ; preds = %66
  %83 = load i32, i32* @KC_LANG2, align 4
  %84 = call i32 @unregister_code(i32 %83)
  br label %85

85:                                               ; preds = %82, %81
  store i32 0, i32* %3, align 4
  br label %108

86:                                               ; preds = %2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* @KC_LANG1, align 4
  %97 = call i32 @register_code(i32 %96)
  br label %101

98:                                               ; preds = %92
  %99 = call i8* @SS_LALT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %100 = call i32 @SEND_STRING(i8* %99)
  br label %101

101:                                              ; preds = %98, %95
  br label %105

102:                                              ; preds = %86
  %103 = load i32, i32* @KC_LANG1, align 4
  %104 = call i32 @unregister_code(i32 %103)
  br label %105

105:                                              ; preds = %102, %101
  store i32 0, i32* %3, align 4
  br label %108

106:                                              ; preds = %2
  br label %107

107:                                              ; preds = %2, %106
  store i32 1, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %105, %85, %65, %56, %46, %36, %26, %16
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @update_base_layer(i32) #1

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i8* @SS_LALT(i8*) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
