; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_mapping.c_DRV_SPI_BufferAddWriteRead.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_mapping.c_DRV_SPI_BufferAddWriteRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRV_SPI_BUFFER_HANDLE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI_BufferAddWriteRead(i32 %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 255
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %15, align 8
  switch i64 %20, label %29 [
    i64 128, label %21
  ]

21:                                               ; preds = %7
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i8*, i8** %14, align 8
  %28 = call i32 @DRV_SPI0_BufferAddWriteReadNew(i8* %22, i64 %23, i8* %24, i64 %25, i32 %26, i8* %27)
  store i32 %28, i32* %16, align 4
  br label %31

29:                                               ; preds = %7
  %30 = load i32, i32* @DRV_SPI_BUFFER_HANDLE_INVALID, align 4
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %29, %21
  %32 = load i32, i32* %16, align 4
  ret i32 %32
}

declare dso_local i32 @DRV_SPI0_BufferAddWriteReadNew(i8*, i64, i8*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
