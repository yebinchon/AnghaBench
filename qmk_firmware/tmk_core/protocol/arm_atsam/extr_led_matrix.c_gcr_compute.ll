; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_led_matrix.c_gcr_compute.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_led_matrix.c_gcr_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACT_GCR_NONE = common dso_local global i64 0, align 8
@gcr_desired = common dso_local global i64 0, align 8
@v_5v = common dso_local global i64 0, align 8
@V5_CAT = common dso_local global i64 0, align 8
@v_5v_cat_hit = common dso_local global i32 0, align 4
@gcr_actual = common dso_local global i64 0, align 8
@usb_gcr_auto = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"USB: WARNING: Re-enabling LED drivers\0D\0A\00", align 1
@v_5v_avg = common dso_local global i64 0, align 8
@V5_LOW = common dso_local global i64 0, align 8
@ACT_GCR_DEC = common dso_local global i64 0, align 8
@V5_HIGH = common dso_local global i64 0, align 8
@ACT_GCR_INC = common dso_local global i64 0, align 8
@gcr_min_counter = common dso_local global i32 0, align 4
@LED_GCR_STEP_AUTO = common dso_local global i64 0, align 8
@LED_GCR_MAX = common dso_local global i64 0, align 8
@usb_extra_state = common dso_local global i64 0, align 8
@USB_EXTRA_STATE_DISABLED_UNTIL_REPLUG = common dso_local global i64 0, align 8
@USB_EXTRA_STATE_ENABLED = common dso_local global i64 0, align 8
@usb_extra_manual = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"USB: Disabling extra port until replug and manual mode toggle!\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"USB: Disabling extra port until replug!\0D\0A\00", align 1
@gcr_breathe = common dso_local global i64 0, align 8
@led_animation_breathing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gcr_compute() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @ACT_GCR_NONE, align 8
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* @gcr_desired, align 8
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* @v_5v, align 8
  %6 = load i64, i64* @V5_CAT, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @I2C3733_Control_Set(i32 0)
  store i32 20, i32* @v_5v_cat_hit, align 4
  store i64 0, i64* @gcr_actual, align 8
  store i32 1, i32* @usb_gcr_auto, align 4
  br label %129

10:                                               ; preds = %0
  %11 = load i32, i32* @v_5v_cat_hit, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @v_5v_cat_hit, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @v_5v_cat_hit, align 4
  br label %129

16:                                               ; preds = %10
  %17 = load i32, i32* @v_5v_cat_hit, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call i32 @I2C3733_Control_Set(i32 1)
  %21 = call i32 @CDC_print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @v_5v_cat_hit, align 4
  br label %129

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @usb_gcr_auto, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %24
  %28 = load i64, i64* @v_5v_avg, align 8
  %29 = load i64, i64* @V5_LOW, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @ACT_GCR_DEC, align 8
  store i64 %32, i64* %1, align 8
  br label %51

33:                                               ; preds = %27
  %34 = load i64, i64* @v_5v_avg, align 8
  %35 = load i64, i64* @V5_HIGH, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i64, i64* @gcr_actual, align 8
  %39 = load i64, i64* %2, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @ACT_GCR_INC, align 8
  store i64 %42, i64* %1, align 8
  br label %50

43:                                               ; preds = %37, %33
  %44 = load i64, i64* @gcr_actual, align 8
  %45 = load i64, i64* %2, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @ACT_GCR_DEC, align 8
  store i64 %48, i64* %1, align 8
  br label %49

49:                                               ; preds = %47, %43
  br label %50

50:                                               ; preds = %49, %41
  br label %51

51:                                               ; preds = %50, %31
  br label %66

52:                                               ; preds = %24
  %53 = load i64, i64* @gcr_actual, align 8
  %54 = load i64, i64* %2, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @ACT_GCR_INC, align 8
  store i64 %57, i64* %1, align 8
  br label %65

58:                                               ; preds = %52
  %59 = load i64, i64* @gcr_actual, align 8
  %60 = load i64, i64* %2, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* @ACT_GCR_DEC, align 8
  store i64 %63, i64* %1, align 8
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %64, %56
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i64, i64* %1, align 8
  %68 = load i64, i64* @ACT_GCR_NONE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* @gcr_min_counter, align 4
  br label %129

71:                                               ; preds = %66
  %72 = load i64, i64* %1, align 8
  %73 = load i64, i64* @ACT_GCR_INC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i64, i64* @LED_GCR_STEP_AUTO, align 8
  %77 = load i64, i64* @LED_GCR_MAX, align 8
  %78 = load i64, i64* @gcr_actual, align 8
  %79 = sub nsw i64 %77, %78
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i64, i64* @LED_GCR_MAX, align 8
  store i64 %82, i64* @gcr_actual, align 8
  br label %87

83:                                               ; preds = %75
  %84 = load i64, i64* @LED_GCR_STEP_AUTO, align 8
  %85 = load i64, i64* @gcr_actual, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* @gcr_actual, align 8
  br label %87

87:                                               ; preds = %83, %81
  store i32 0, i32* @gcr_min_counter, align 4
  br label %128

88:                                               ; preds = %71
  %89 = load i64, i64* %1, align 8
  %90 = load i64, i64* @ACT_GCR_DEC, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %127

92:                                               ; preds = %88
  %93 = load i64, i64* @LED_GCR_STEP_AUTO, align 8
  %94 = load i64, i64* @gcr_actual, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %92
  store i64 0, i64* @gcr_actual, align 8
  %97 = load i64, i64* @usb_extra_state, align 8
  %98 = load i64, i64* @USB_EXTRA_STATE_DISABLED_UNTIL_REPLUG, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = load i64, i64* @usb_extra_state, align 8
  %102 = load i64, i64* @USB_EXTRA_STATE_ENABLED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = load i32, i32* @gcr_min_counter, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @gcr_min_counter, align 4
  %107 = load i32, i32* @gcr_min_counter, align 4
  %108 = icmp sgt i32 %107, 200
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load i64, i64* @USB_EXTRA_STATE_DISABLED_UNTIL_REPLUG, align 8
  %111 = call i32 @USB_ExtraSetState(i64 %110)
  store i64 0, i64* @usb_extra_manual, align 8
  %112 = load i64, i64* @usb_extra_manual, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 @CDC_print(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %118

116:                                              ; preds = %109
  %117 = call i32 @CDC_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %114
  br label %119

119:                                              ; preds = %118, %104
  br label %120

120:                                              ; preds = %119, %100
  br label %121

121:                                              ; preds = %120, %96
  br label %126

122:                                              ; preds = %92
  %123 = load i64, i64* @LED_GCR_STEP_AUTO, align 8
  %124 = load i64, i64* @gcr_actual, align 8
  %125 = sub nsw i64 %124, %123
  store i64 %125, i64* @gcr_actual, align 8
  store i32 0, i32* @gcr_min_counter, align 4
  br label %126

126:                                              ; preds = %122, %121
  br label %127

127:                                              ; preds = %126, %88
  br label %128

128:                                              ; preds = %127, %87
  br label %129

129:                                              ; preds = %8, %13, %19, %128, %70
  ret void
}

declare dso_local i32 @I2C3733_Control_Set(i32) #1

declare dso_local i32 @CDC_print(i8*) #1

declare dso_local i32 @USB_ExtraSetState(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
