; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3733.c_IS31FL3733_write_pwm_buffer.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3733.c_IS31FL3733_write_pwm_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_twi_transfer_buffer = common dso_local global i32* null, align 8
@ISSI_TIMEOUT = common dso_local global i32 0, align 4
@ISSI_PERSISTENCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3733_write_pwm_buffer(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %40, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 192
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** @g_twi_transfer_buffer, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %31, %10
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i64*, i64** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %18, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** @g_twi_transfer_buffer, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %25, i32* %30, align 4
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load i64, i64* %3, align 8
  %36 = shl i64 %35, 1
  %37 = load i32*, i32** @g_twi_transfer_buffer, align 8
  %38 = load i32, i32* @ISSI_TIMEOUT, align 4
  %39 = call i64 @i2c_transmit(i64 %36, i32* %37, i32 17, i32 %38)
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 16
  store i32 %42, i32* %5, align 4
  br label %7

43:                                               ; preds = %7
  ret void
}

declare dso_local i64 @i2c_transmit(i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
