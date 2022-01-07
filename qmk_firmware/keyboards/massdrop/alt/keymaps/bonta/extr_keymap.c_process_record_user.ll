; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/bonta/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/bonta/extr_keymap.c_process_record_user.c"
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
@LED_FLAG_UNDERGLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %114 [
    i32 128, label %7
    i32 129, label %23
    i32 134, label %39
    i32 135, label %49
    i32 137, label %59
    i32 136, label %69
    i32 130, label %79
    i32 131, label %98
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = load i32, i32* @MODS_SHIFT, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* @MODS_CTRL, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @usb_extra_manual, align 4
  %21 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16, %13, %7
  store i32 0, i32* %3, align 4
  br label %115

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @MODS_SHIFT, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @MODS_CTRL, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @usb_gcr_auto, align 4
  %37 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32, %29, %23
  store i32 0, i32* %3, align 4
  br label %115

39:                                               ; preds = %2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @debug_enable, align 4
  %47 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %39
  store i32 0, i32* %3, align 4
  br label %115

49:                                               ; preds = %2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @debug_matrix, align 4
  %57 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %49
  store i32 0, i32* %3, align 4
  br label %115

59:                                               ; preds = %2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @debug_keyboard, align 4
  %67 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %59
  store i32 0, i32* %3, align 4
  br label %115

69:                                               ; preds = %2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @debug_mouse, align 4
  %77 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %69
  store i32 0, i32* %3, align 4
  br label %115

79:                                               ; preds = %2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = call i32 (...) @rgb_matrix_get_flags()
  switch i32 %86, label %94 [
    i32 133, label %87
    i32 132, label %90
  ]

87:                                               ; preds = %85
  %88 = call i32 @rgb_matrix_set_flags(i32 132)
  %89 = call i32 @rgb_matrix_set_color_all(i32 0, i32 0, i32 0)
  br label %96

90:                                               ; preds = %85
  %91 = load i32, i32* @LED_FLAG_UNDERGLOW, align 4
  %92 = call i32 @rgb_matrix_set_flags(i32 %91)
  %93 = call i32 @rgb_matrix_set_color_all(i32 0, i32 0, i32 0)
  br label %96

94:                                               ; preds = %85
  %95 = call i32 @rgb_matrix_set_flags(i32 133)
  br label %96

96:                                               ; preds = %94, %90, %87
  br label %97

97:                                               ; preds = %96, %79
  store i32 0, i32* %3, align 4
  br label %115

98:                                               ; preds = %2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 (...) @timer_read32()
  store i32 %105, i32* @process_record_user.key_timer, align 4
  br label %113

106:                                              ; preds = %98
  %107 = load i32, i32* @process_record_user.key_timer, align 4
  %108 = call i32 @timer_elapsed32(i32 %107)
  %109 = icmp sge i32 %108, 500
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = call i32 (...) @reset_keyboard()
  br label %112

112:                                              ; preds = %110, %106
  br label %113

113:                                              ; preds = %112, %104
  store i32 0, i32* %3, align 4
  br label %115

114:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %113, %97, %78, %68, %58, %48, %38, %22
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @TOGGLE_FLAG_AND_PRINT(i32, i8*) #1

declare dso_local i32 @rgb_matrix_get_flags(...) #1

declare dso_local i32 @rgb_matrix_set_flags(i32) #1

declare dso_local i32 @rgb_matrix_set_color_all(i32, i32, i32) #1

declare dso_local i32 @timer_read32(...) #1

declare dso_local i32 @timer_elapsed32(i32) #1

declare dso_local i32 @reset_keyboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
