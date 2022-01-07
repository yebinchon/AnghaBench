; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_hw_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32, i64 }

@AR934X_NFC_REG_TIME_SEQ = common dso_local global i32 0, align 4
@AR934X_NFC_TIME_SEQ_DEFAULT = common dso_local global i32 0, align 4
@AR934X_NFC_REG_TIMINGS_ASYN = common dso_local global i32 0, align 4
@AR934X_NFC_TIMINGS_ASYN_DEFAULT = common dso_local global i32 0, align 4
@AR934X_NFC_REG_TIMINGS_SYN = common dso_local global i32 0, align 4
@AR934X_NFC_TIMINGS_SYN_DEFAULT = common dso_local global i32 0, align 4
@AR934X_NFC_REG_MEM_CTRL = common dso_local global i32 0, align 4
@AR934X_NFC_REG_DMA_ADDR_OFFS = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_CUSTOM_SIZE_EN = common dso_local global i32 0, align 4
@AR934X_NFC_REG_CTRL = common dso_local global i32 0, align 4
@AR934X_NFC_REG_GEN_SEQ_CTRL = common dso_local global i32 0, align 4
@AR934X_NFC_GENSEQ_SMALL_PAGE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar934x_nfc*)* @ar934x_nfc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_hw_init(%struct.ar934x_nfc* %0) #0 {
  %2 = alloca %struct.ar934x_nfc*, align 8
  store %struct.ar934x_nfc* %0, %struct.ar934x_nfc** %2, align 8
  %3 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %4 = call i32 @ar934x_nfc_hw_reset_assert(%struct.ar934x_nfc* %3)
  %5 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %6 = call i32 @ar934x_nfc_hw_reset_deassert(%struct.ar934x_nfc* %5)
  %7 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %8 = load i32, i32* @AR934X_NFC_REG_TIME_SEQ, align 4
  %9 = load i32, i32* @AR934X_NFC_TIME_SEQ_DEFAULT, align 4
  %10 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %7, i32 %8, i32 %9)
  %11 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %12 = load i32, i32* @AR934X_NFC_REG_TIMINGS_ASYN, align 4
  %13 = load i32, i32* @AR934X_NFC_TIMINGS_ASYN_DEFAULT, align 4
  %14 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %11, i32 %12, i32 %13)
  %15 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %16 = load i32, i32* @AR934X_NFC_REG_TIMINGS_SYN, align 4
  %17 = load i32, i32* @AR934X_NFC_TIMINGS_SYN_DEFAULT, align 4
  %18 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %15, i32 %16, i32 %17)
  %19 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %20 = load i32, i32* @AR934X_NFC_REG_MEM_CTRL, align 4
  %21 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %19, i32 %20, i32 65280)
  %22 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %23 = load i32, i32* @AR934X_NFC_REG_DMA_ADDR_OFFS, align 4
  %24 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %22, i32 %23, i32 0)
  %25 = load i32, i32* @AR934X_NFC_CTRL_CUSTOM_SIZE_EN, align 4
  %26 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %27 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %29 = load i32, i32* @AR934X_NFC_REG_CTRL, align 4
  %30 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %31 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %28, i32 %29, i32 %32)
  %34 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %35 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %40 = load i32, i32* @AR934X_NFC_REG_GEN_SEQ_CTRL, align 4
  %41 = load i32, i32* @AR934X_NFC_GENSEQ_SMALL_PAGE_READ, align 4
  %42 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %1
  ret i32 0
}

declare dso_local i32 @ar934x_nfc_hw_reset_assert(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_hw_reset_deassert(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_wr(%struct.ar934x_nfc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
