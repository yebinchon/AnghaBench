; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cyw43/extr_cyw43_ctrl.c_cyw43_cb_ensure_awake.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cyw43/extr_cyw43_ctrl.c_cyw43_cb_ensure_awake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CYW43_SLEEP_MAX = common dso_local global i32 0, align 4
@cyw43_sleep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cyw43_cb_ensure_awake(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @CYW43_SLEEP_MAX, align 4
  store i32 %3, i32* @cyw43_sleep, align 4
  %4 = call i64 (...) @__HAL_RCC_SDMMC1_IS_CLK_DISABLED()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call i32 (...) @__HAL_RCC_SDMMC1_CLK_ENABLE()
  %8 = call i32 (...) @sdio_enable_high_speed_4bit()
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare dso_local i64 @__HAL_RCC_SDMMC1_IS_CLK_DISABLED(...) #1

declare dso_local i32 @__HAL_RCC_SDMMC1_CLK_ENABLE(...) #1

declare dso_local i32 @sdio_enable_high_speed_4bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
