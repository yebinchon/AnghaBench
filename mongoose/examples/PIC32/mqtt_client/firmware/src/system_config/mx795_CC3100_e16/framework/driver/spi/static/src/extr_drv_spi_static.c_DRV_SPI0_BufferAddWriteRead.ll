; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static.c_DRV_SPI0_BufferAddWriteRead.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static.c_DRV_SPI0_BufferAddWriteRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_ID_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DRV_SPI0_BufferAddWriteRead(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %55, %3
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @SPI_ID_1, align 4
  %12 = call i32 @PLIB_SPI_TransmitBufferIsFull(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* @SPI_ID_1, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PLIB_SPI_BufferWrite(i32 %19, i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %8, align 8
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %18, %14, %10
  br label %29

29:                                               ; preds = %40, %28
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %39, %33
  %35 = load i32, i32* @SPI_ID_1, align 4
  %36 = call i32 @PLIB_SPI_ReceiverBufferIsFull(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %34

40:                                               ; preds = %34
  %41 = load i32, i32* @SPI_ID_1, align 4
  %42 = call i32 @PLIB_SPI_BufferRead(i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  store i32 1, i32* %7, align 4
  br label %29

49:                                               ; preds = %29
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %49
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %10, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %8, align 8
  ret i64 %59
}

declare dso_local i32 @PLIB_SPI_TransmitBufferIsFull(i32) #1

declare dso_local i32 @PLIB_SPI_BufferWrite(i32, i32) #1

declare dso_local i32 @PLIB_SPI_ReceiverBufferIsFull(i32) #1

declare dso_local i32 @PLIB_SPI_BufferRead(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
