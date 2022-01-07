; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2801.c_ws2801_byte.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2801.c_ws2801_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_OUT_W1TS_ADDRESS = common dso_local global i32 0, align 4
@ws2801_bit_data = common dso_local global i32 0, align 4
@GPIO_OUT_W1TC_ADDRESS = common dso_local global i32 0, align 4
@ws2801_bit_clk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ws2801_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws2801_byte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 128, i32* %3, align 4
  br label %4

4:                                                ; preds = %27, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load i32, i32* @GPIO_OUT_W1TS_ADDRESS, align 4
  %14 = load i32, i32* @ws2801_bit_data, align 4
  %15 = call i32 @GPIO_REG_WRITE(i32 %13, i32 %14)
  br label %20

16:                                               ; preds = %7
  %17 = load i32, i32* @GPIO_OUT_W1TC_ADDRESS, align 4
  %18 = load i32, i32* @ws2801_bit_data, align 4
  %19 = call i32 @GPIO_REG_WRITE(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @GPIO_OUT_W1TS_ADDRESS, align 4
  %22 = load i32, i32* @ws2801_bit_clk, align 4
  %23 = call i32 @GPIO_REG_WRITE(i32 %21, i32 %22)
  %24 = load i32, i32* @GPIO_OUT_W1TC_ADDRESS, align 4
  %25 = load i32, i32* @ws2801_bit_clk, align 4
  %26 = call i32 @GPIO_REG_WRITE(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %4

30:                                               ; preds = %4
  ret void
}

declare dso_local i32 @GPIO_REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
