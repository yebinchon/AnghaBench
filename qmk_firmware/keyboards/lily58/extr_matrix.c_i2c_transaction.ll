; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/lily58/extr_matrix.c_i2c_transaction.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/lily58/extr_matrix.c_i2c_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isLeftHand = common dso_local global i64 0, align 8
@ROWS_PER_HAND = common dso_local global i32 0, align 4
@SLAVE_I2C_ADDRESS = common dso_local global i64 0, align 8
@I2C_WRITE = common dso_local global i64 0, align 8
@I2C_READ = common dso_local global i64 0, align 8
@I2C_ACK = common dso_local global i32 0, align 4
@matrix = common dso_local global i32* null, align 8
@I2C_NACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_transaction() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @isLeftHand, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @ROWS_PER_HAND, align 4
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ]
  store i32 %11, i32* %2, align 4
  %12 = load i64, i64* @SLAVE_I2C_ADDRESS, align 8
  %13 = load i64, i64* @I2C_WRITE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @i2c_master_start(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %64

19:                                               ; preds = %10
  %20 = call i32 @i2c_master_write(i32 0)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %64

24:                                               ; preds = %19
  %25 = load i64, i64* @SLAVE_I2C_ADDRESS, align 8
  %26 = load i64, i64* @I2C_READ, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @i2c_master_start(i64 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %64

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ROWS_PER_HAND, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i32, i32* @I2C_ACK, align 4
  %43 = call i32 @i2c_master_read(i32 %42)
  %44 = load i32*, i32** @matrix, align 8
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %36

53:                                               ; preds = %36
  %54 = load i32, i32* @I2C_NACK, align 4
  %55 = call i32 @i2c_master_read(i32 %54)
  %56 = load i32*, i32** @matrix, align 8
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = call i32 (...) @i2c_master_stop()
  br label %67

63:                                               ; preds = %32
  br label %64

64:                                               ; preds = %63, %31, %23, %18
  %65 = call i32 (...) @i2c_reset_state()
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* %1, align 4
  br label %68

67:                                               ; preds = %53
  store i32 0, i32* %1, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @i2c_master_start(i64) #1

declare dso_local i32 @i2c_master_write(i32) #1

declare dso_local i32 @i2c_master_read(i32) #1

declare dso_local i32 @i2c_master_stop(...) #1

declare dso_local i32 @i2c_reset_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
