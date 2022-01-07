; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (...)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i8**, i64 }
%struct.TYPE_7__ = type { i8**, i64 }

@rgb_matrix_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [50 x i8] c"rgb_matrix_init_drivers eeconfig is not enabled.\0A\00", align 1
@rgb_matrix_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"rgb_matrix_init_drivers rgb_matrix_config.mode = 0. Write default values to EEPROM.\0A\00", align 1
@LED_HITS_TO_REMEMBER = common dso_local global i64 0, align 8
@UINT16_MAX = common dso_local global i8* null, align 8
@g_last_hit_tracker = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@last_hit_buffer = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_matrix_init() #0 {
  %1 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rgb_matrix_driver, i32 0, i32 0), align 8
  %2 = call i32 (...) %1()
  %3 = call i32 (...) @eeconfig_is_enabled()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = call i32 @dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @eeconfig_init()
  %8 = call i32 (...) @eeconfig_update_rgb_matrix_default()
  br label %9

9:                                                ; preds = %5, %0
  %10 = call i32 (...) @eeconfig_read_rgb_matrix()
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgb_matrix_config, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = call i32 @dprintf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 (...) @eeconfig_update_rgb_matrix_default()
  br label %16

16:                                               ; preds = %13, %9
  %17 = call i32 (...) @eeconfig_debug_rgb_matrix()
  ret void
}

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_update_rgb_matrix_default(...) #1

declare dso_local i32 @eeconfig_read_rgb_matrix(...) #1

declare dso_local i32 @eeconfig_debug_rgb_matrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
