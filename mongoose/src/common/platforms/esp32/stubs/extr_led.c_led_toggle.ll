; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp32/stubs/extr_led.c_led_toggle.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp32/stubs/extr_led.c_led_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_OUT_REG = common dso_local global i32 0, align 4
@GPIO_OUT_W1TC_REG = common dso_local global i32 0, align 4
@GPIO_OUT_W1TS_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_toggle(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @GPIO_OUT_REG, align 4
  %4 = load i32, i32* %2, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = call i64 @READ_PERI_REG(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @GPIO_OUT_W1TC_REG, align 4
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 1, %11
  %13 = call i32 @WRITE_PERI_REG(i32 %10, i32 %12)
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @GPIO_OUT_W1TS_REG, align 4
  %16 = load i32, i32* %2, align 4
  %17 = shl i32 1, %16
  %18 = call i32 @WRITE_PERI_REG(i32 %15, i32 %17)
  br label %19

19:                                               ; preds = %14, %9
  ret void
}

declare dso_local i64 @READ_PERI_REG(i32) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
