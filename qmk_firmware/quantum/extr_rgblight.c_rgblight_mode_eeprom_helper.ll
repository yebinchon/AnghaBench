; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_mode_eeprom_helper.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_mode_eeprom_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@rgblight_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@RGBLIGHT_MODE_STATIC_LIGHT = common dso_local global i64 0, align 8
@RGBLIGHT_MODES = common dso_local global i64 0, align 8
@RGBLIGHT_SPLIT_SET_CHANGE_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"rgblight mode [EEPROM]: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"rgblight mode [NOEEPROM]: %u\0A\00", align 1
@animation_status = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgblight_mode_eeprom_helper(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 5), align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %46

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @RGBLIGHT_MODE_STATIC_LIGHT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i64, i64* @RGBLIGHT_MODE_STATIC_LIGHT, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 3), align 8
  br label %23

14:                                               ; preds = %8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @RGBLIGHT_MODES, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @RGBLIGHT_MODES, align 8
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 3), align 8
  br label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %3, align 8
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 3), align 8
  br label %22

22:                                               ; preds = %20, %18
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i32, i32* @RGBLIGHT_SPLIT_SET_CHANGE_MODE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 4), align 8
  %29 = call i32 @eeconfig_update_rgblight(i32 %28)
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 3), align 8
  %31 = call i32 @dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %35

32:                                               ; preds = %23
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 3), align 8
  %34 = call i32 @dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 3), align 8
  %37 = call i64 @is_static_effect(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %41

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 2), align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 1), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rgblight_config, i32 0, i32 0), align 8
  %45 = call i32 @rgblight_sethsv_noeeprom(i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %7
  ret void
}

declare dso_local i32 @eeconfig_update_rgblight(i32) #1

declare dso_local i32 @dprintf(i8*, i64) #1

declare dso_local i64 @is_static_effect(i64) #1

declare dso_local i32 @rgblight_sethsv_noeeprom(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
