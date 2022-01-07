; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_encoder.c_pre_encoder_mode_change.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_encoder.c_pre_encoder_mode_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@encoder_mode = common dso_local global i64 0, align 8
@ENC_MODE_CLOCK_SET = common dso_local global i64 0, align 8
@year_config = common dso_local global i32 0, align 4
@month_config = common dso_local global i32 0, align 4
@day_config = common dso_local global i32 0, align 4
@hour_config = common dso_local global i32 0, align 4
@minute_config = common dso_local global i32 0, align 4
@RTCD1 = common dso_local global i32 0, align 4
@ENC_MODE_BACKLIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pre_encoder_mode_change() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = load i64, i64* @encoder_mode, align 8
  %3 = load i64, i64* @ENC_MODE_CLOCK_SET, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load i32, i32* @year_config, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @month_config, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @day_config, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @hour_config, align 4
  %13 = mul nsw i32 %12, 60
  %14 = load i32, i32* @minute_config, align 4
  %15 = add nsw i32 %13, %14
  %16 = mul nsw i32 %15, 60
  %17 = mul nsw i32 %16, 1000
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = call i32 @rtcSetTime(i32* @RTCD1, %struct.TYPE_3__* %1)
  br label %27

20:                                               ; preds = %0
  %21 = load i64, i64* @encoder_mode, align 8
  %22 = load i64, i64* @ENC_MODE_BACKLIGHT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (...) @save_backlight_config_to_eeprom()
  br label %26

26:                                               ; preds = %24, %20
  br label %27

27:                                               ; preds = %26, %5
  ret void
}

declare dso_local i32 @rtcSetTime(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @save_backlight_config_to_eeprom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
