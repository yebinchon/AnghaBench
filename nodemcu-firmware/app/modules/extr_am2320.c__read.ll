; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_am2320.c__read.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_am2320.c__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@am2320_i2c_addr = common dso_local global i32 0, align 4
@PLATFORM_I2C_DIRECTION_TRANSMITTER = common dso_local global i32 0, align 4
@PLATFORM_I2C_DIRECTION_RECEIVER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_read(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @platform_i2c_send_start(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @am2320_i2c_addr, align 4
  %19 = load i32, i32* @PLATFORM_I2C_DIRECTION_TRANSMITTER, align 4
  %20 = call i32 @platform_i2c_send_address(i32 %17, i32 %18, i32 %19)
  %21 = call i32 @os_delay_us(i32 800)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @platform_i2c_send_stop(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @platform_i2c_send_start(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @am2320_i2c_addr, align 4
  %28 = load i32, i32* @PLATFORM_I2C_DIRECTION_TRANSMITTER, align 4
  %29 = call i32 @platform_i2c_send_address(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @platform_i2c_send_byte(i32 %30, i32 3)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @platform_i2c_send_byte(i32 %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @platform_i2c_send_byte(i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @platform_i2c_send_stop(i32 %38)
  %40 = call i32 @os_delay_us(i32 1500)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @platform_i2c_send_start(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @am2320_i2c_addr, align 4
  %45 = load i32, i32* @PLATFORM_I2C_DIRECTION_RECEIVER, align 4
  %46 = call i32 @platform_i2c_send_address(i32 %43, i32 %44, i32 %45)
  %47 = call i32 @os_delay_us(i32 30)
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %60, %4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 2
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @platform_i2c_recv_byte(i32 %54, i32 1)
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %48

63:                                               ; preds = %48
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @platform_i2c_recv_byte(i32 %64, i32 1)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @platform_i2c_recv_byte(i32 %66, i32 0)
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @platform_i2c_send_stop(i32 %71)
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 3
  br i1 %76, label %83, label %77

77:                                               ; preds = %63
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %63
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %97

86:                                               ; preds = %77
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 2
  %91 = call i32 @crc16(i32* %88, i32 %90)
  %92 = icmp ne i32 %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %97

96:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %93, %83
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @platform_i2c_send_start(i32) #1

declare dso_local i32 @platform_i2c_send_address(i32, i32, i32) #1

declare dso_local i32 @os_delay_us(i32) #1

declare dso_local i32 @platform_i2c_send_stop(i32) #1

declare dso_local i32 @platform_i2c_send_byte(i32, i32) #1

declare dso_local i32 @platform_i2c_recv_byte(i32, i32) #1

declare dso_local i32 @crc16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
