; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_sethsv_eeprom_helper.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_sethsv_eeprom_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@rgblight_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@mode_base_table = common dso_local global i64* null, align 8
@rgblight_status = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@RGBLIGHT_MODE_STATIC_LIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"rgblight set hsv [EEPROM]: %u,%u,%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"rgblight set hsv [NOEEPROM]: %u,%u,%u\0A\00", align 1
@RGBLED_GRADIENT_RANGES = common dso_local global i32* null, align 8
@RGBLIGHT_MODE_BREATHING = common dso_local global i64 0, align 8
@RGBLIGHT_MODE_RAINBOW_MOOD = common dso_local global i64 0, align 8
@RGBLIGHT_MODE_RAINBOW_SWIRL = common dso_local global i64 0, align 8
@RGBLIGHT_MODE_STATIC_GRADIENT = common dso_local global i64 0, align 8
@RGBLIGHT_SPLIT_SET_CHANGE_HSVS = common dso_local global i32 0, align 4
@effect_num_leds = common dso_local global i32 0, align 4
@effect_start_pos = common dso_local global i32 0, align 4
@led = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgblight_sethsv_eeprom_helper(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 5), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %4
  %13 = load i64*, i64** @mode_base_table, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_status, i32 0, i32 0), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 0), align 8
  %18 = load i64, i64* @RGBLIGHT_MODE_STATIC_LIGHT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @sethsv(i32 %21, i32 %22, i32 %23, %struct.TYPE_5__* %9)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rgblight_setrgb(i32 %26, i32 %28, i32 %30)
  br label %33

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 2), align 4
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 3), align 8
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 1), align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 4), align 4
  %41 = call i32 @eeconfig_update_rgblight(i32 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 2), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 3), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 1), align 8
  %45 = call i32 (i8*, i32, i32, i32, ...) @dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  br label %51

46:                                               ; preds = %33
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 2), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 3), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgblight_config, i32 0, i32 1), align 8
  %50 = call i32 (i8*, i32, i32, i32, ...) @dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51, %4
  ret void
}

declare dso_local i32 @sethsv(i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @rgblight_setrgb(i32, i32, i32) #1

declare dso_local i32 @eeconfig_update_rgblight(i32) #1

declare dso_local i32 @dprintf(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
