; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_l3g4200d.c_r8u.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_l3g4200d.c_r8u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c_addr = common dso_local global i32 0, align 4
@PLATFORM_I2C_DIRECTION_TRANSMITTER = common dso_local global i32 0, align 4
@PLATFORM_I2C_DIRECTION_RECEIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @r8u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8u(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @platform_i2c_send_start(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @i2c_addr, align 4
  %10 = load i32, i32* @PLATFORM_I2C_DIRECTION_TRANSMITTER, align 4
  %11 = call i32 @platform_i2c_send_address(i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @platform_i2c_send_byte(i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @platform_i2c_send_stop(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @platform_i2c_send_start(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @i2c_addr, align 4
  %21 = load i32, i32* @PLATFORM_I2C_DIRECTION_RECEIVER, align 4
  %22 = call i32 @platform_i2c_send_address(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @platform_i2c_recv_byte(i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @platform_i2c_send_stop(i32 %25)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @platform_i2c_send_start(i32) #1

declare dso_local i32 @platform_i2c_send_address(i32, i32, i32) #1

declare dso_local i32 @platform_i2c_send_byte(i32, i32) #1

declare dso_local i32 @platform_i2c_send_stop(i32) #1

declare dso_local i32 @platform_i2c_recv_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
