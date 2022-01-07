; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/backlight/extr_backlight.c_backlight_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/backlight/extr_backlight.c_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@backlight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BACKLIGHT_LEVELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_init() #0 {
  %1 = call i32 (...) @eeconfig_is_enabled()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 (...) @eeconfig_init()
  br label %5

5:                                                ; preds = %3, %0
  %6 = call i32 (...) @eeconfig_read_backlight()
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 2), align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 0), align 8
  %8 = load i64, i64* @BACKLIGHT_LEVELS, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i64, i64* @BACKLIGHT_LEVELS, align 8
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 0), align 8
  br label %12

12:                                               ; preds = %10, %5
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 1), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @backlight_config, i32 0, i32 0), align 8
  br label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %17 ]
  %20 = call i32 @backlight_set(i64 %19)
  ret void
}

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_backlight(...) #1

declare dso_local i32 @backlight_set(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
