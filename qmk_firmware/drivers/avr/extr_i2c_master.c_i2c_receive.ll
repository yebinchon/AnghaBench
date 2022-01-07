; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_receive.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_READ = common dso_local global i32 0, align 4
@I2C_STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i2c_receive(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @I2C_READ, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @i2c_start(i32 %13, i32 %14)
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %39, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* %9, align 8
  %23 = icmp sge i64 %22, 0
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i1 [ false, %16 ], [ %23, %21 ]
  br i1 %25, label %26, label %42

26:                                               ; preds = %24
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @i2c_read_ack(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %16

42:                                               ; preds = %24
  %43 = load i64, i64* %9, align 8
  %44 = icmp sge i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @i2c_read_nack(i32 %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %45
  br label %59

59:                                               ; preds = %58, %42
  %60 = call i32 (...) @i2c_stop()
  %61 = load i64, i64* %9, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* %9, align 8
  br label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @I2C_STATUS_SUCCESS, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i64 [ %64, %63 ], [ %66, %65 ]
  ret i64 %68
}

declare dso_local i64 @i2c_start(i32, i32) #1

declare dso_local i64 @i2c_read_ack(i32) #1

declare dso_local i64 @i2c_read_nack(i32) #1

declare dso_local i32 @i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
