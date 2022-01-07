; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/meira/keymaps/takmiya/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/meira/keymaps/takmiya/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@TOG_STATUS = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Stepping backlight\0A\00", align 1
@RGB_current_mode = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %98 [
    i32 130, label %7
    i32 131, label %15
    i32 129, label %45
    i32 134, label %75
    i32 132, label %88
    i32 133, label %89
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %99

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load i32, i32* @TOG_STATUS, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @TOG_STATUS, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* @TOG_STATUS, align 4
  br label %30

30:                                               ; preds = %25, %24
  %31 = load i32, i32* @_LOWER, align 4
  %32 = call i32 @layer_on(i32 %31)
  %33 = load i32, i32* @_LOWER, align 4
  %34 = load i32, i32* @_RAISE, align 4
  %35 = load i32, i32* @_ADJUST, align 4
  %36 = call i32 @update_tri_layer_RGB(i32 %33, i32 %34, i32 %35)
  br label %44

37:                                               ; preds = %15
  store i32 0, i32* @TOG_STATUS, align 4
  %38 = load i32, i32* @_LOWER, align 4
  %39 = call i32 @layer_off(i32 %38)
  %40 = load i32, i32* @_LOWER, align 4
  %41 = load i32, i32* @_RAISE, align 4
  %42 = load i32, i32* @_ADJUST, align 4
  %43 = call i32 @update_tri_layer_RGB(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %30
  store i32 0, i32* %3, align 4
  br label %99

45:                                               ; preds = %2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load i32, i32* @TOG_STATUS, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @TOG_STATUS, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* @TOG_STATUS, align 4
  br label %60

60:                                               ; preds = %55, %54
  %61 = load i32, i32* @_RAISE, align 4
  %62 = call i32 @layer_on(i32 %61)
  %63 = load i32, i32* @_LOWER, align 4
  %64 = load i32, i32* @_RAISE, align 4
  %65 = load i32, i32* @_ADJUST, align 4
  %66 = call i32 @update_tri_layer_RGB(i32 %63, i32 %64, i32 %65)
  br label %74

67:                                               ; preds = %45
  %68 = load i32, i32* @_RAISE, align 4
  %69 = call i32 @layer_off(i32 %68)
  store i32 0, i32* @TOG_STATUS, align 4
  %70 = load i32, i32* @_LOWER, align 4
  %71 = load i32, i32* @_RAISE, align 4
  %72 = load i32, i32* @_ADJUST, align 4
  %73 = call i32 @update_tri_layer_RGB(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  store i32 0, i32* %3, align 4
  br label %99

75:                                               ; preds = %2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @_ADJUST, align 4
  %83 = call i32 @layer_on(i32 %82)
  br label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @_ADJUST, align 4
  %86 = call i32 @layer_off(i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  store i32 0, i32* %3, align 4
  br label %99

88:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

89:                                               ; preds = %2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %89
  store i32 0, i32* %3, align 4
  br label %99

98:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %97, %88, %87, %74, %44, %14
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer_RGB(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
