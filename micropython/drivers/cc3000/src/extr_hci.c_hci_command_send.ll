; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_hci.c_hci_command_send.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_hci.c_hci_command_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_HEADER_SIZE = common dso_local global i32 0, align 4
@HCI_TYPE_CMND = common dso_local global i64 0, align 8
@SIMPLE_LINK_HCI_CMND_HEADER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_command_send(i32 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i32, i32* @SPI_HEADER_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  store i64* %11, i64** %7, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* @HCI_TYPE_CMND, align 8
  %14 = call i32 @UINT8_TO_STREAM(i64* %12, i64 %13)
  %15 = load i64*, i64** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64* @UINT16_TO_STREAM(i64* %15, i32 %16)
  store i64* %17, i64** %7, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @UINT8_TO_STREAM(i64* %18, i64 %19)
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @SIMPLE_LINK_HCI_CMND_HEADER_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @SpiWrite(i64* %21, i64 %24)
  ret i32 0
}

declare dso_local i32 @UINT8_TO_STREAM(i64*, i64) #1

declare dso_local i64* @UINT16_TO_STREAM(i64*, i32) #1

declare dso_local i32 @SpiWrite(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
