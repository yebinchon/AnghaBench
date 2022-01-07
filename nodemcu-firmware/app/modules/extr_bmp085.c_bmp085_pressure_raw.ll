; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bmp085.c_bmp085_pressure_raw.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bmp085.c_bmp085_pressure_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bmp085_i2c_id = common dso_local global i32 0, align 4
@bmp085_i2c_addr = common dso_local global i32 0, align 4
@PLATFORM_I2C_DIRECTION_TRANSMITTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bmp085_pressure_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp085_pressure_raw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @bmp085_i2c_id, align 4
  %8 = call i32 @platform_i2c_send_start(i32 %7)
  %9 = load i32, i32* @bmp085_i2c_id, align 4
  %10 = load i32, i32* @bmp085_i2c_addr, align 4
  %11 = load i32, i32* @PLATFORM_I2C_DIRECTION_TRANSMITTER, align 4
  %12 = call i32 @platform_i2c_send_address(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @bmp085_i2c_id, align 4
  %14 = call i32 @platform_i2c_send_byte(i32 %13, i32 244)
  %15 = load i32, i32* @bmp085_i2c_id, align 4
  %16 = load i32, i32* %2, align 4
  %17 = mul nsw i32 64, %16
  %18 = add nsw i32 52, %17
  %19 = call i32 @platform_i2c_send_byte(i32 %15, i32 %18)
  %20 = load i32, i32* @bmp085_i2c_id, align 4
  %21 = call i32 @platform_i2c_send_stop(i32 %20)
  %22 = load i32, i32* %2, align 4
  switch i32 %22, label %31 [
    i32 0, label %23
    i32 1, label %25
    i32 2, label %27
    i32 3, label %29
  ]

23:                                               ; preds = %1
  %24 = call i32 @os_delay_us(i32 4500)
  br label %31

25:                                               ; preds = %1
  %26 = call i32 @os_delay_us(i32 7500)
  br label %31

27:                                               ; preds = %1
  %28 = call i32 @os_delay_us(i32 13500)
  br label %31

29:                                               ; preds = %1
  %30 = call i32 @os_delay_us(i32 25500)
  br label %31

31:                                               ; preds = %1, %29, %27, %25, %23
  %32 = load i32, i32* @bmp085_i2c_id, align 4
  %33 = call i32 @r8u(i32 %32, i32 246)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @bmp085_i2c_id, align 4
  %35 = call i32 @r8u(i32 %34, i32 247)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @bmp085_i2c_id, align 4
  %37 = call i32 @r8u(i32 %36, i32 248)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = shl i32 %38, 16
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %39, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %2, align 4
  %47 = sub nsw i32 8, %46
  %48 = ashr i32 %45, %47
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @platform_i2c_send_start(i32) #1

declare dso_local i32 @platform_i2c_send_address(i32, i32, i32) #1

declare dso_local i32 @platform_i2c_send_byte(i32, i32) #1

declare dso_local i32 @platform_i2c_send_stop(i32) #1

declare dso_local i32 @os_delay_us(i32) #1

declare dso_local i32 @r8u(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
