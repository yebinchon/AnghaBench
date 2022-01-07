; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_encoder.c_post_encoder_mode_change.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_encoder.c_post_encoder_mode_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@encoder_mode = common dso_local global i64 0, align 8
@ENC_MODE_CLOCK_SET = common dso_local global i64 0, align 8
@last_minute = common dso_local global i32 0, align 4
@hour_config = common dso_local global i32 0, align 4
@minute_config = common dso_local global i32 0, align 4
@last_timespec = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@year_config = common dso_local global i32 0, align 4
@month_config = common dso_local global i32 0, align 4
@day_config = common dso_local global i32 0, align 4
@time_config_idx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @post_encoder_mode_change() #0 {
  %1 = load i64, i64* @encoder_mode, align 8
  %2 = load i64, i64* @ENC_MODE_CLOCK_SET, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i32, i32* @last_minute, align 4
  %6 = sdiv i32 %5, 60
  store i32 %6, i32* @hour_config, align 4
  %7 = load i32, i32* @last_minute, align 4
  %8 = srem i32 %7, 60
  store i32 %8, i32* @minute_config, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last_timespec, i32 0, i32 2), align 4
  store i32 %9, i32* @year_config, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last_timespec, i32 0, i32 1), align 4
  store i32 %10, i32* @month_config, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @last_timespec, i32 0, i32 0), align 4
  store i32 %11, i32* @day_config, align 4
  store i64 0, i64* @time_config_idx, align 8
  br label %12

12:                                               ; preds = %4, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
