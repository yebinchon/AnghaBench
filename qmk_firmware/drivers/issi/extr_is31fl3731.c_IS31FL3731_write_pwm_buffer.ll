; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3731.c_IS31FL3731_write_pwm_buffer.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3731.c_IS31FL3731_write_pwm_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_twi_transfer_buffer = common dso_local global i32* null, align 8
@ISSI_TIMEOUT = common dso_local global i32 0, align 4
@ISSI_PERSISTENCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3731_write_pwm_buffer(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 144
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 36, %11
  %13 = load i32*, i32** @g_twi_transfer_buffer, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %12, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %32, %10
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 16
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i64*, i64** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %19, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32*, i32** @g_twi_transfer_buffer, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 1, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %26, i32* %31, align 4
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load i64, i64* %3, align 8
  %37 = shl i64 %36, 1
  %38 = load i32*, i32** @g_twi_transfer_buffer, align 8
  %39 = load i32, i32* @ISSI_TIMEOUT, align 4
  %40 = call i64 @i2c_transmit(i64 %37, i32* %38, i32 17, i32 %39)
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 16
  store i32 %43, i32* %5, align 4
  br label %7

44:                                               ; preds = %7
  ret void
}

declare dso_local i64 @i2c_transmit(i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
