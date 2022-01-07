; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_hci.c_hci_data_send.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_hci.c_hci_data_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_HEADER_SIZE = common dso_local global i64 0, align 8
@HCI_TYPE_DATA = common dso_local global i64 0, align 8
@SIMPLE_LINK_HCI_DATA_HEADER_SIZE = common dso_local global i64 0, align 8
@ESUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_data_send(i64 %0, i64* %1, i64 %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = load i64, i64* @SPI_HEADER_SIZE, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64* %16, i64** %13, align 8
  %17 = load i64*, i64** %13, align 8
  %18 = load i64, i64* @HCI_TYPE_DATA, align 8
  %19 = call i32 @UINT8_TO_STREAM(i64* %17, i64 %18)
  %20 = load i64*, i64** %13, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @UINT8_TO_STREAM(i64* %20, i64 %21)
  %23 = load i64*, i64** %13, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @UINT8_TO_STREAM(i64* %23, i64 %24)
  %26 = load i64*, i64** %13, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* %12, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i64* @UINT16_TO_STREAM(i64* %26, i64 %31)
  store i64* %32, i64** %13, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* @SIMPLE_LINK_HCI_DATA_HEADER_SIZE, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %12, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @SpiWrite(i64* %33, i64 %40)
  %42 = load i32, i32* @ESUCCESS, align 4
  ret i32 %42
}

declare dso_local i32 @UINT8_TO_STREAM(i64*, i64) #1

declare dso_local i64* @UINT16_TO_STREAM(i64*, i64) #1

declare dso_local i32 @SpiWrite(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
