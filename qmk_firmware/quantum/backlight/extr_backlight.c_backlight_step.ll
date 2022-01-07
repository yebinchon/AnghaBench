; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/backlight/extr_backlight.c_backlight_step.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/backlight/extr_backlight.c_backlight_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@backlight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BACKLIGHT_LEVELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"backlight step: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_step() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 0), align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 0), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 0), align 8
  %4 = load i64, i64* @BACKLIGHT_LEVELS, align 8
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 0), align 8
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 1), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 2), align 4
  %14 = call i32 @eeconfig_update_backlight(i32 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 0), align 8
  %16 = call i32 @dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 0), align 8
  %18 = call i32 @backlight_set(i64 %17)
  ret void
}

declare dso_local i32 @eeconfig_update_backlight(i32) #1

declare dso_local i32 @dprintf(i8*, i64) #1

declare dso_local i32 @backlight_set(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
