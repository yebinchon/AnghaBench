; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_read_ack.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_read_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWINT = common dso_local global i32 0, align 4
@TWEN = common dso_local global i32 0, align 4
@TWEA = common dso_local global i32 0, align 4
@TWCR = common dso_local global i32 0, align 4
@I2C_TIMEOUT_INFINITE = common dso_local global i64 0, align 8
@I2C_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@TWDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_read_ack(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @TWINT, align 4
  %6 = shl i32 1, %5
  %7 = load i32, i32* @TWEN, align 4
  %8 = shl i32 1, %7
  %9 = or i32 %6, %8
  %10 = load i32, i32* @TWEA, align 4
  %11 = shl i32 1, %10
  %12 = or i32 %9, %11
  store i32 %12, i32* @TWCR, align 4
  %13 = call i64 (...) @timer_read()
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %33, %1
  %15 = load i32, i32* @TWCR, align 4
  %16 = load i32, i32* @TWINT, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @I2C_TIMEOUT_INFINITE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = call i64 (...) @timer_read()
  %27 = load i64, i64* %4, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i64, i64* %3, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @I2C_STATUS_TIMEOUT, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %25, %21
  br label %14

34:                                               ; preds = %14
  %35 = load i32, i32* @TWDR, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @timer_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
