; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/favorable-mutation/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/favorable-mutation/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@process_record_user.key_timer = internal global i32 0, align 4
@MODS_SHIFT = common dso_local global i32 0, align 4
@MODS_CTRL = common dso_local global i32 0, align 4
@usb_extra_manual = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"USB extra port manual mode\00", align 1
@usb_gcr_auto = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"USB GCR auto mode\00", align 1
@debug_enable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Debug mode\00", align 1
@debug_matrix = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Debug matrix\00", align 1
@debug_keyboard = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Debug keyboard\00", align 1
@debug_mouse = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Debug mouse\00", align 1
@LED_FLAG_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %121 [
    i32 135, label %7
    i32 128, label %10
    i32 129, label %26
    i32 136, label %42
    i32 137, label %52
    i32 139, label %62
    i32 138, label %72
    i32 131, label %82
    i32 130, label %98
  ]

7:                                                ; preds = %2
  %8 = call i32 (...) @clear_keyboard()
  %9 = call i32 (...) @reset_oneshot_layer()
  store i32 1, i32* %3, align 4
  br label %122

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i32, i32* @MODS_SHIFT, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @MODS_CTRL, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @usb_extra_manual, align 4
  %24 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19, %16, %10
  store i32 0, i32* %3, align 4
  br label %122

26:                                               ; preds = %2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* @MODS_SHIFT, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @MODS_CTRL, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @usb_gcr_auto, align 4
  %40 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %35, %32, %26
  store i32 0, i32* %3, align 4
  br label %122

42:                                               ; preds = %2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @debug_enable, align 4
  %50 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %42
  store i32 0, i32* %3, align 4
  br label %122

52:                                               ; preds = %2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @debug_matrix, align 4
  %60 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %52
  store i32 0, i32* %3, align 4
  br label %122

62:                                               ; preds = %2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @debug_keyboard, align 4
  %70 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %62
  store i32 0, i32* %3, align 4
  br label %122

72:                                               ; preds = %2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @debug_mouse, align 4
  %80 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %72
  store i32 0, i32* %3, align 4
  br label %122

82:                                               ; preds = %2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 (...) @timer_read32()
  store i32 %89, i32* @process_record_user.key_timer, align 4
  br label %97

90:                                               ; preds = %82
  %91 = load i32, i32* @process_record_user.key_timer, align 4
  %92 = call i32 @timer_elapsed32(i32 %91)
  %93 = icmp sge i32 %92, 500
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 (...) @reset_keyboard()
  br label %96

96:                                               ; preds = %94, %90
  br label %97

97:                                               ; preds = %96, %88
  store i32 0, i32* %3, align 4
  br label %122

98:                                               ; preds = %2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %98
  %105 = call i32 (...) @rgb_matrix_get_flags()
  switch i32 %105, label %116 [
    i32 134, label %106
    i32 133, label %109
    i32 132, label %112
  ]

106:                                              ; preds = %104
  %107 = call i32 @rgb_matrix_set_flags(i32 133)
  %108 = call i32 @rgb_matrix_set_color_all(i32 0, i32 0, i32 0)
  br label %119

109:                                              ; preds = %104
  %110 = call i32 @rgb_matrix_set_flags(i32 132)
  %111 = call i32 @rgb_matrix_set_color_all(i32 0, i32 0, i32 0)
  br label %119

112:                                              ; preds = %104
  %113 = load i32, i32* @LED_FLAG_NONE, align 4
  %114 = call i32 @rgb_matrix_set_flags(i32 %113)
  %115 = call i32 (...) @rgb_matrix_disable_noeeprom()
  br label %119

116:                                              ; preds = %104
  %117 = call i32 @rgb_matrix_set_flags(i32 134)
  %118 = call i32 (...) @rgb_matrix_enable_noeeprom()
  br label %119

119:                                              ; preds = %116, %112, %109, %106
  br label %120

120:                                              ; preds = %119, %98
  store i32 0, i32* %3, align 4
  br label %122

121:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %120, %97, %81, %71, %61, %51, %41, %25, %7
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @clear_keyboard(...) #1

declare dso_local i32 @reset_oneshot_layer(...) #1

declare dso_local i32 @TOGGLE_FLAG_AND_PRINT(i32, i8*) #1

declare dso_local i32 @timer_read32(...) #1

declare dso_local i32 @timer_elapsed32(i32) #1

declare dso_local i32 @reset_keyboard(...) #1

declare dso_local i32 @rgb_matrix_get_flags(...) #1

declare dso_local i32 @rgb_matrix_set_flags(i32) #1

declare dso_local i32 @rgb_matrix_set_color_all(i32, i32, i32) #1

declare dso_local i32 @rgb_matrix_disable_noeeprom(...) #1

declare dso_local i32 @rgb_matrix_enable_noeeprom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
