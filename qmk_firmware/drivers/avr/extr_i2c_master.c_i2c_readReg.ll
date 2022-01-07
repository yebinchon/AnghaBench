; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_readReg.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/avr/extr_i2c_master.c_i2c_readReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i2c_readReg(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i64 @i2c_start(i32 %13, i32 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %75

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @i2c_write(i32 %20, i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %75

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, 1
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @i2c_start(i32 %28, i32 %29)
  store i64 %30, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %54, %26
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* %11, align 8
  %38 = icmp sge i64 %37, 0
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i1 [ false, %31 ], [ %38, %36 ]
  br i1 %40, label %41, label %57

41:                                               ; preds = %39
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @i2c_read_ack(i32 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i64, i64* %11, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %41
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %31

57:                                               ; preds = %39
  %58 = load i64, i64* %11, align 8
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @i2c_read_nack(i32 %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i64, i64* %11, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %60
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %74, %25, %18
  %76 = call i32 (...) @i2c_stop()
  %77 = load i64, i64* %11, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* %11, align 8
  br label %83

81:                                               ; preds = %75
  %82 = load i64, i64* @I2C_STATUS_SUCCESS, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i64 [ %80, %79 ], [ %82, %81 ]
  ret i64 %84
}

declare dso_local i64 @i2c_start(i32, i32) #1

declare dso_local i64 @i2c_write(i32, i32) #1

declare dso_local i64 @i2c_read_ack(i32) #1

declare dso_local i64 @i2c_read_nack(i32) #1

declare dso_local i32 @i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
