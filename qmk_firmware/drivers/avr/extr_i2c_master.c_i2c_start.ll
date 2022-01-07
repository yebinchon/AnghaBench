; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_start.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWCR = common dso_local global i32 0, align 4
@TWINT = common dso_local global i32 0, align 4
@TWSTA = common dso_local global i32 0, align 4
@TWEN = common dso_local global i32 0, align 4
@I2C_TIMEOUT_INFINITE = common dso_local global i64 0, align 8
@I2C_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@TW_STATUS = common dso_local global i32 0, align 4
@TW_START = common dso_local global i32 0, align 4
@TW_REP_START = common dso_local global i32 0, align 4
@I2C_STATUS_ERROR = common dso_local global i32 0, align 4
@TWDR = common dso_local global i64 0, align 8
@TW_MT_SLA_ACK = common dso_local global i64 0, align 8
@TW_MR_SLA_ACK = common dso_local global i64 0, align 8
@I2C_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_start(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* @TWCR, align 4
  %8 = load i32, i32* @TWINT, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* @TWSTA, align 4
  %11 = shl i32 1, %10
  %12 = or i32 %9, %11
  %13 = load i32, i32* @TWEN, align 4
  %14 = shl i32 1, %13
  %15 = or i32 %12, %14
  store i32 %15, i32* @TWCR, align 4
  %16 = call i64 (...) @timer_read()
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %36, %2
  %18 = load i32, i32* @TWCR, align 4
  %19 = load i32, i32* @TWINT, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @I2C_TIMEOUT_INFINITE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = call i64 (...) @timer_read()
  %30 = load i64, i64* %6, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64, i64* %5, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @I2C_STATUS_TIMEOUT, align 4
  store i32 %35, i32* %3, align 4
  br label %92

36:                                               ; preds = %28, %24
  br label %17

37:                                               ; preds = %17
  %38 = load i32, i32* @TW_STATUS, align 4
  %39 = and i32 %38, 248
  %40 = load i32, i32* @TW_START, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @TW_STATUS, align 4
  %44 = and i32 %43, 248
  %45 = load i32, i32* @TW_REP_START, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @I2C_STATUS_ERROR, align 4
  store i32 %48, i32* %3, align 4
  br label %92

49:                                               ; preds = %42, %37
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* @TWDR, align 8
  %51 = load i32, i32* @TWINT, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* @TWEN, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  store i32 %55, i32* @TWCR, align 4
  %56 = call i64 (...) @timer_read()
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %76, %49
  %58 = load i32, i32* @TWCR, align 4
  %59 = load i32, i32* @TWINT, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @I2C_TIMEOUT_INFINITE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = call i64 (...) @timer_read()
  %70 = load i64, i64* %6, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load i64, i64* %5, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @I2C_STATUS_TIMEOUT, align 4
  store i32 %75, i32* %3, align 4
  br label %92

76:                                               ; preds = %68, %64
  br label %57

77:                                               ; preds = %57
  %78 = load i32, i32* @TW_STATUS, align 4
  %79 = and i32 %78, 248
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @TW_MT_SLA_ACK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @TW_MR_SLA_ACK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @I2C_STATUS_ERROR, align 4
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %84, %77
  %91 = load i32, i32* @I2C_STATUS_SUCCESS, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %88, %74, %47, %34
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @timer_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
