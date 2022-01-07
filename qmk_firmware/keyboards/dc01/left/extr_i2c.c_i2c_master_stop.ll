; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/left/extr_i2c.c_i2c_master_stop.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/left/extr_i2c.c_i2c_master_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWINT = common dso_local global i32 0, align 4
@TWEN = common dso_local global i32 0, align 4
@TWSTO = common dso_local global i32 0, align 4
@TWCR = common dso_local global i32 0, align 4
@I2C_LOOP_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2c_master_stop() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @TWINT, align 4
  %3 = shl i32 1, %2
  %4 = load i32, i32* @TWEN, align 4
  %5 = shl i32 1, %4
  %6 = or i32 %3, %5
  %7 = load i32, i32* @TWSTO, align 4
  %8 = shl i32 1, %7
  %9 = or i32 %6, %8
  store i32 %9, i32* @TWCR, align 4
  store i64 0, i64* %1, align 8
  br label %10

10:                                               ; preds = %22, %0
  %11 = load i32, i32* @TWCR, align 4
  %12 = load i32, i32* @TWSTO, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @I2C_LOOP_TIMEOUT, align 8
  %19 = icmp slt i64 %17, %18
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i1 [ false, %10 ], [ %19, %16 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i64, i64* %1, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %1, align 8
  br label %10

25:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
