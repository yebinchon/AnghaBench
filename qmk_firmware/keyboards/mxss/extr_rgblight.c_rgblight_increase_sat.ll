; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_rgblight_increase_sat.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_rgblight_increase_sat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@rgblight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RGBLIGHT_SAT_STEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgblight_increase_sat() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  %3 = load i32, i32* @RGBLIGHT_SAT_STEP, align 4
  %4 = add nsw i32 %2, %3
  %5 = icmp sgt i32 %4, 255
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 255, i32* %1, align 4
  br label %11

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  %9 = load i32, i32* @RGBLIGHT_SAT_STEP, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 2), align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 1), align 4
  %15 = call i32 @rgblight_sethsv(i32 %12, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @rgblight_sethsv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
