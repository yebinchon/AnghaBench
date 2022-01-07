; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/left/extr_matrix.c_i2c_transaction.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/left/extr_matrix.c_i2c_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_WRITE = common dso_local global i32 0, align 4
@I2C_READ = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i32 0, align 4
@matrix = common dso_local global i32* null, align 8
@MATRIX_COLS_SCANNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_transaction(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 1
  %12 = load i32, i32* @I2C_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @i2c_start(i32 %13, i32 10)
  store i32 %14, i32* %8, align 4
  %15 = call i32 @i2c_write(i32 1, i32 10)
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 1
  %18 = load i32, i32* @I2C_READ, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @i2c_start(i32 %19, i32 5)
  %21 = call i32 @i2c_read_ack(i32 10)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 85
  br i1 %23, label %24, label %75

24:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MATRIX_ROWS, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** @matrix, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %31
  store i32 %37, i32* %35, align 4
  %38 = call i32 @i2c_read_ack(i32 10)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MATRIX_COLS_SCANNED, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = shl i32 %39, %42
  %44 = load i32*, i32** @matrix, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %25

53:                                               ; preds = %25
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** @matrix, align 8
  %56 = load i32, i32* @MATRIX_ROWS, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %54
  store i32 %61, i32* %59, align 4
  %62 = call i32 @i2c_read_nack(i32 10)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MATRIX_COLS_SCANNED, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  %67 = shl i32 %63, %66
  %68 = load i32*, i32** @matrix, align 8
  %69 = load i32, i32* @MATRIX_ROWS, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %67
  store i32 %74, i32* %72, align 4
  br label %77

75:                                               ; preds = %3
  %76 = call i32 (...) @i2c_stop()
  store i32 1, i32* %4, align 4
  br label %79

77:                                               ; preds = %53
  %78 = call i32 (...) @i2c_stop()
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @i2c_start(i32, i32) #1

declare dso_local i32 @i2c_write(i32, i32) #1

declare dso_local i32 @i2c_read_ack(i32) #1

declare dso_local i32 @i2c_read_nack(i32) #1

declare dso_local i32 @i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
