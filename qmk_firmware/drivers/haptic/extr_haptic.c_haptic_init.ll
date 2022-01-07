; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_haptic.c_haptic_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_haptic.c_haptic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@debug_enable = common dso_local global i32 0, align 4
@haptic_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [59 x i8] c"No haptic config found in eeprom, setting default configs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @haptic_init() #0 {
  store i32 1, i32* @debug_enable, align 4
  %1 = call i32 (...) @eeconfig_is_enabled()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 (...) @eeconfig_init()
  br label %5

5:                                                ; preds = %3, %0
  %6 = call i32 (...) @eeconfig_read_haptic()
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 1), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 0), align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 0), align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call i32 @dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @haptic_reset()
  br label %16

16:                                               ; preds = %13, %10
  %17 = call i32 (...) @eeconfig_debug_haptic()
  ret void
}

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_haptic(...) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @haptic_reset(...) #1

declare dso_local i32 @eeconfig_debug_haptic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
