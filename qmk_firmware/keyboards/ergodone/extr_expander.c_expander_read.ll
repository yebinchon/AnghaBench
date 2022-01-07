; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_expander.c_expander_read.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_expander.c_expander_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expander_status = common dso_local global i64 0, align 8
@EXPANDER_ADDR = common dso_local global i32 0, align 4
@I2C_WRITE = common dso_local global i32 0, align 4
@I2C_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @expander_read(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64, i64* @expander_status, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %38

10:                                               ; preds = %2
  %11 = load i32, i32* @EXPANDER_ADDR, align 4
  %12 = load i32, i32* @I2C_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @i2c_start(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %35

18:                                               ; preds = %10
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @i2c_write(i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %35

24:                                               ; preds = %18
  %25 = load i32, i32* @EXPANDER_ADDR, align 4
  %26 = load i32, i32* @I2C_READ, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @i2c_rep_start(i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %35

32:                                               ; preds = %24
  %33 = call i64 (...) @i2c_readNak()
  %34 = load i64*, i64** %5, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %31, %23, %17
  %36 = call i32 (...) @i2c_stop()
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %35, %9
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i64 @i2c_start(i32) #1

declare dso_local i64 @i2c_write(i64) #1

declare dso_local i64 @i2c_rep_start(i32) #1

declare dso_local i64 @i2c_readNak(...) #1

declare dso_local i32 @i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
