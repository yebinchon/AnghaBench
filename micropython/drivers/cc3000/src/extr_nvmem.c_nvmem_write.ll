; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_nvmem.c_nvmem_write.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_nvmem.c_nvmem_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@EFAIL = common dso_local global i32 0, align 4
@tSLInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SPI_HEADER_SIZE = common dso_local global i32 0, align 4
@HCI_DATA_CMD_HEADER_SIZE = common dso_local global i32 0, align 4
@NVMEM_WRITE_PARAMS_LEN = common dso_local global i32 0, align 4
@HCI_CMND_NVMEM_WRITE = common dso_local global i32 0, align 4
@HCI_EVNT_NVMEM_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmem_write(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @EFAIL, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* @SPI_HEADER_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* @HCI_DATA_CMD_HEADER_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32* @UINT32_TO_STREAM(i32* %21, i32 %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32* @UINT32_TO_STREAM(i32* %24, i32 12)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32* @UINT32_TO_STREAM(i32* %26, i32 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32* @UINT32_TO_STREAM(i32* %29, i32 %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* @SPI_HEADER_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* @HCI_DATA_CMD_HEADER_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* @NVMEM_WRITE_PARAMS_LEN, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @memcpy(i32* %41, i32* %42, i32 %43)
  %45 = load i32, i32* @HCI_CMND_NVMEM_WRITE, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* @NVMEM_WRITE_PARAMS_LEN, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @hci_data_command_send(i32 %45, i32* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @HCI_EVNT_NVMEM_WRITE, align 4
  %51 = call i32 @SimpleLinkWaitEvent(i32 %50, i32* %9)
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32* @UINT32_TO_STREAM(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hci_data_command_send(i32, i32*, i32, i32) #1

declare dso_local i32 @SimpleLinkWaitEvent(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
