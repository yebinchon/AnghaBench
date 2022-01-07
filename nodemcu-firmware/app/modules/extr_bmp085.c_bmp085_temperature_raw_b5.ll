; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bmp085.c_bmp085_temperature_raw_b5.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bmp085.c_bmp085_temperature_raw_b5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@bmp085_i2c_id = common dso_local global i32 0, align 4
@bmp085_i2c_addr = common dso_local global i32 0, align 4
@PLATFORM_I2C_DIRECTION_TRANSMITTER = common dso_local global i32 0, align 4
@bmp085_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bmp085_temperature_raw_b5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp085_temperature_raw_b5() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @bmp085_i2c_id, align 4
  %5 = call i32 @platform_i2c_send_start(i32 %4)
  %6 = load i32, i32* @bmp085_i2c_id, align 4
  %7 = load i32, i32* @bmp085_i2c_addr, align 4
  %8 = load i32, i32* @PLATFORM_I2C_DIRECTION_TRANSMITTER, align 4
  %9 = call i32 @platform_i2c_send_address(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @bmp085_i2c_id, align 4
  %11 = call i32 @platform_i2c_send_byte(i32 %10, i32 244)
  %12 = load i32, i32* @bmp085_i2c_id, align 4
  %13 = call i32 @platform_i2c_send_byte(i32 %12, i32 46)
  %14 = load i32, i32* @bmp085_i2c_id, align 4
  %15 = call i32 @platform_i2c_send_stop(i32 %14)
  %16 = call i32 @os_delay_us(i32 4500)
  %17 = load i32, i32* @bmp085_i2c_id, align 4
  %18 = call i32 @r16(i32 %17, i32 246)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmp085_data, i32 0, i32 0), align 4
  %21 = sub nsw i32 %19, %20
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmp085_data, i32 0, i32 1), align 4
  %23 = mul nsw i32 %21, %22
  %24 = ashr i32 %23, 15
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmp085_data, i32 0, i32 2), align 4
  %26 = shl i32 %25, 11
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmp085_data, i32 0, i32 3), align 4
  %29 = add nsw i32 %27, %28
  %30 = sdiv i32 %26, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %31, %32
  ret i32 %33
}

declare dso_local i32 @platform_i2c_send_start(i32) #1

declare dso_local i32 @platform_i2c_send_address(i32, i32, i32) #1

declare dso_local i32 @platform_i2c_send_byte(i32, i32) #1

declare dso_local i32 @platform_i2c_send_stop(i32) #1

declare dso_local i32 @os_delay_us(i32) #1

declare dso_local i32 @r16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
