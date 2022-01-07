; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/meira/extr_TWIlib.c_TWIReadData.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/meira/extr_TWIlib.c_TWIReadData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RXMAXBUFLEN = common dso_local global i64 0, align 8
@RXBuffIndex = common dso_local global i64 0, align 8
@RXBuffLen = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TWIReadData(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [1 x i64], align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @RXMAXBUFLEN, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  store i64 0, i64* @RXBuffIndex, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* @RXBuffLen, align 8
  %14 = load i64, i64* %5, align 8
  %15 = shl i64 %14, 1
  %16 = or i64 %15, 1
  %17 = getelementptr inbounds [1 x i64], [1 x i64]* %8, i64 0, i64 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds [1 x i64], [1 x i64]* %8, i64 0, i64 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @TWITransmitData(i64* %18, i32 1, i64 %19, i32 0)
  br label %22

21:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %23

22:                                               ; preds = %12
  store i64 1, i64* %4, align 8
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i64, i64* %4, align 8
  ret i64 %24
}

declare dso_local i32 @TWITransmitData(i64*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
