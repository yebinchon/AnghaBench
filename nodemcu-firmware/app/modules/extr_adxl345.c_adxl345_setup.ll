; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_adxl345.c_adxl345_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_adxl345.c_adxl345_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@adxl345_i2c_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"device not found\00", align 1
@adxl345_i2c_addr = common dso_local global i32 0, align 4
@PLATFORM_I2C_DIRECTION_TRANSMITTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @adxl345_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl345_setup(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @adxl345_i2c_id, align 4
  %6 = call i32 @r8u(i32 %5, i32 0)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 229
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_error(i32* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @adxl345_i2c_id, align 4
  %14 = call i32 @platform_i2c_send_start(i32 %13)
  %15 = load i32, i32* @adxl345_i2c_id, align 4
  %16 = load i32, i32* @adxl345_i2c_addr, align 4
  %17 = load i32, i32* @PLATFORM_I2C_DIRECTION_TRANSMITTER, align 4
  %18 = call i32 @platform_i2c_send_address(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @adxl345_i2c_id, align 4
  %20 = call i32 @platform_i2c_send_byte(i32 %19, i32 45)
  %21 = load i32, i32* @adxl345_i2c_id, align 4
  %22 = call i32 @platform_i2c_send_byte(i32 %21, i32 8)
  %23 = load i32, i32* @adxl345_i2c_id, align 4
  %24 = call i32 @platform_i2c_send_stop(i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %12, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @r8u(i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

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
