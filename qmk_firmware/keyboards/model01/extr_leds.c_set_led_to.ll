; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/model01/extr_leds.c_set_led_to.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/model01/extr_leds.c_set_led_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWI_CMD_LED_SET_ONE_TO = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@I2C_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_led_to(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %12 = load i32, i32* @TWI_CMD_LED_SET_ONE_TO, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 31
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds i32, i32* %13, i64 1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 32
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @RIGHT, align 4
  br label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @LEFT, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @I2C_ADDR(i32 %30)
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %33 = load i32, i32* @I2C_TIMEOUT, align 4
  %34 = call i32 @i2c_transmit(i32 %31, i32* %32, i32 20, i32 %33)
  %35 = call i32 @_delay_us(i32 10)
  ret void
}

declare dso_local i32 @i2c_transmit(i32, i32*, i32, i32) #1

declare dso_local i32 @I2C_ADDR(i32) #1

declare dso_local i32 @_delay_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
