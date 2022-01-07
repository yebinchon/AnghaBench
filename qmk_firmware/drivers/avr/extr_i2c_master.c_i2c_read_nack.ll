; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_read_nack.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_read_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWINT = common dso_local global i32 0, align 4
@TWEN = common dso_local global i32 0, align 4
@TWCR = common dso_local global i32 0, align 4
@I2C_TIMEOUT_INFINITE = common dso_local global i64 0, align 8
@I2C_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@TWDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_read_nack(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @TWINT, align 4
  %6 = shl i32 1, %5
  %7 = load i32, i32* @TWEN, align 4
  %8 = shl i32 1, %7
  %9 = or i32 %6, %8
  store i32 %9, i32* @TWCR, align 4
  %10 = call i64 (...) @timer_read()
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i32, i32* @TWCR, align 4
  %13 = load i32, i32* @TWINT, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @I2C_TIMEOUT_INFINITE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = call i64 (...) @timer_read()
  %24 = load i64, i64* %4, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load i64, i64* %3, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @I2C_STATUS_TIMEOUT, align 4
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %22, %18
  br label %11

31:                                               ; preds = %11
  %32 = load i32, i32* @TWDR, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @timer_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
