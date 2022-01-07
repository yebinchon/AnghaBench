; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_writeReg.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_writeReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i2c_writeReg(i32 %0, i32 %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i64, i64* %10, align 8
  %15 = call i64 @i2c_start(i32 %13, i64 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @i2c_write(i32 %19, i64 %20)
  store i64 %21, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %22

22:                                               ; preds = %38, %18
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* %11, align 8
  %28 = icmp sge i64 %27, 0
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %41

31:                                               ; preds = %29
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @i2c_write(i32 %35, i64 %36)
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %12, align 8
  br label %22

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %5
  %43 = call i32 (...) @i2c_stop()
  %44 = load i64, i64* %11, align 8
  ret i64 %44
}

declare dso_local i64 @i2c_start(i32, i64) #1

declare dso_local i64 @i2c_write(i32, i64) #1

declare dso_local i32 @i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
