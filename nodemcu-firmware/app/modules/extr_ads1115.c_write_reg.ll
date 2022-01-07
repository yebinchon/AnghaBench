; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ads1115.c_write_reg.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ads1115.c_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ads1115_i2c_id = common dso_local global i32 0, align 4
@PLATFORM_I2C_DIRECTION_TRANSMITTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @ads1115_i2c_id, align 4
  %9 = call i32 @platform_i2c_send_start(i32 %8)
  %10 = load i32, i32* @ads1115_i2c_id, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PLATFORM_I2C_DIRECTION_TRANSMITTER, align 4
  %13 = call i32 @platform_i2c_send_address(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @ads1115_i2c_id, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @platform_i2c_send_byte(i32 %14, i32 %15)
  %17 = load i32, i32* @ads1115_i2c_id, align 4
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 8
  %20 = call i32 @platform_i2c_send_byte(i32 %17, i32 %19)
  %21 = load i32, i32* @ads1115_i2c_id, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 255
  %24 = call i32 @platform_i2c_send_byte(i32 %21, i32 %23)
  %25 = load i32, i32* @ads1115_i2c_id, align 4
  %26 = call i32 @platform_i2c_send_stop(i32 %25)
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @platform_i2c_send_start(i32) #1

declare dso_local i32 @platform_i2c_send_address(i32, i32, i32) #1

declare dso_local i32 @platform_i2c_send_byte(i32, i32) #1

declare dso_local i32 @platform_i2c_send_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
