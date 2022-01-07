; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_haptic.c_haptic_feedback_toggle.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_haptic.c_haptic_feedback_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@haptic_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HAPTIC_FEEDBACK_MAX = common dso_local global i64 0, align 8
@KEY_PRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"haptic_config.feedback = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @haptic_feedback_toggle() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 0), align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 0), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 0), align 8
  %4 = load i64, i64* @HAPTIC_FEEDBACK_MAX, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i64, i64* @KEY_PRESS, align 8
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 0), align 8
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @xprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 1), align 8
  %15 = call i32 @eeconfig_update_haptic(i32 %14)
  ret void
}

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @eeconfig_update_haptic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
