; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/model01/extr_matrix.c_i2c_read_hand.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/model01/extr_matrix.c_i2c_read_hand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_TIMEOUT = common dso_local global i32 0, align 4
@I2C_STATUS_SUCCESS = common dso_local global i64 0, align 8
@TWI_REPLY_KEYDATA = common dso_local global i64 0, align 8
@ROWS_PER_HAND = common dso_local global i32 0, align 4
@rows = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i2c_read_hand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read_hand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [5 x i64], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @I2C_ADDR(i32 %8)
  %10 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0
  %11 = load i32, i32* @I2C_TIMEOUT, align 4
  %12 = call i64 @i2c_receive(i32 %9, i64* %10, i32 40, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @I2C_STATUS_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %38

17:                                               ; preds = %1
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0
  %19 = load i64, i64* %18, align 16
  %20 = load i64, i64* @TWI_REPLY_KEYDATA, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 2, i32* %2, align 4
  br label %38

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @ROWS_PER_HAND, align 4
  br label %29

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %6, align 4
  %31 = load i64*, i64** @rows, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64* %34, i64** %7, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1
  %37 = call i32 @memcpy(i64* %35, i64* %36, i32 4)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %29, %22, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @i2c_receive(i32, i64*, i32, i32) #1

declare dso_local i32 @I2C_ADDR(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
