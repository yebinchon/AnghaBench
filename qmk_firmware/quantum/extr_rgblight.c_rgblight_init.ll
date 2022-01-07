; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgblight.c_rgblight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i8* }

@is_rgblight_initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rgblight_init called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"rgblight_init start!\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"rgblight_init eeconfig is not enabled.\0A\00", align 1
@rgblight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RGBLIGHT_SPLIT_SET_CHANGE_MODEHSVS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"rgblight_init rgblight_config.mode = 0. Write default values to EEPROM.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgblight_init() #0 {
  %1 = load i32, i32* @is_rgblight_initialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %31

4:                                                ; preds = %0
  %5 = call i32 @dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (...) @eeconfig_is_enabled()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = call i32 @dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 (...) @eeconfig_init()
  %12 = call i32 (...) @eeconfig_update_rgblight_default()
  br label %13

13:                                               ; preds = %9, %4
  %14 = call i8* (...) @eeconfig_read_rgblight()
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 2), align 8
  %15 = load i32, i32* @RGBLIGHT_SPLIT_SET_CHANGE_MODEHSVS, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = call i32 @dprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 (...) @eeconfig_update_rgblight_default()
  %21 = call i8* (...) @eeconfig_read_rgblight()
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 2), align 8
  br label %22

22:                                               ; preds = %18, %13
  %23 = call i32 (...) @rgblight_check_config()
  %24 = call i32 (...) @eeconfig_debug_rgblight()
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 1), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 8
  %29 = call i32 @rgblight_mode_noeeprom(i32 %28)
  br label %30

30:                                               ; preds = %27, %22
  store i32 1, i32* @is_rgblight_initialized, align 4
  br label %31

31:                                               ; preds = %30, %3
  ret void
}

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_update_rgblight_default(...) #1

declare dso_local i8* @eeconfig_read_rgblight(...) #1

declare dso_local i32 @rgblight_check_config(...) #1

declare dso_local i32 @eeconfig_debug_rgblight(...) #1

declare dso_local i32 @rgblight_mode_noeeprom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
