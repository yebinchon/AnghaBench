; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_led_matrix.c_led_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_led_matrix.c_led_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)* }
%struct.TYPE_4__ = type { i8*, i32 }

@led_matrix_driver = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@LED_DRIVER_LED_COUNT = common dso_local global i32 0, align 4
@g_key_hit = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"led_matrix_init_drivers eeconfig is not enabled.\0A\00", align 1
@led_matrix_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [85 x i8] c"led_matrix_init_drivers led_matrix_config.mode = 0. Write default values to EEPROM.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_matrix_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @led_matrix_driver, i32 0, i32 0), align 8
  %3 = call i32 (...) %2()
  %4 = call i32 @wait_ms(i32 500)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @LED_DRIVER_LED_COUNT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load i32*, i32** @g_key_hit, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32 255, i32* %13, align 4
  br label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %5

17:                                               ; preds = %5
  %18 = call i32 (...) @eeconfig_is_enabled()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = call i32 @dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (...) @eeconfig_init()
  %23 = call i32 (...) @eeconfig_update_led_matrix_default()
  br label %24

24:                                               ; preds = %20, %17
  %25 = call i8* (...) @eeconfig_read_led_matrix()
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @led_matrix_config, i32 0, i32 0), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @led_matrix_config, i32 0, i32 1), align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = call i32 @dprintf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 (...) @eeconfig_update_led_matrix_default()
  %31 = call i8* (...) @eeconfig_read_led_matrix()
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @led_matrix_config, i32 0, i32 0), align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = call i32 (...) @eeconfig_debug_led_matrix()
  ret void
}

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_update_led_matrix_default(...) #1

declare dso_local i8* @eeconfig_read_led_matrix(...) #1

declare dso_local i32 @eeconfig_debug_led_matrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
