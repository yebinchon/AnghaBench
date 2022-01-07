; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_hw_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32, i64 }
%struct.ar934x_nfc_platform_data = type { i32 (i32)* }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar934x_nfc*)* @ar934x_nfc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar934x_nfc_hw_init(%struct.ar934x_nfc* %0) #0 {
  %2 = alloca %struct.ar934x_nfc*, align 8
  %3 = alloca %struct.ar934x_nfc_platform_data*, align 8
  store %struct.ar934x_nfc* %0, %struct.ar934x_nfc** %2, align 8
  %4 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %5 = call %struct.ar934x_nfc_platform_data* @ar934x_nfc_get_platform_data(%struct.ar934x_nfc* %4)
  store %struct.ar934x_nfc_platform_data* %5, %struct.ar934x_nfc_platform_data** %3, align 8
  %6 = load %struct.ar934x_nfc_platform_data*, %struct.ar934x_nfc_platform_data** %3, align 8
  %7 = getelementptr inbounds %struct.ar934x_nfc_platform_data, %struct.ar934x_nfc_platform_data* %6, i32 0, i32 0
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = icmp ne i32 (i32)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.ar934x_nfc_platform_data*, %struct.ar934x_nfc_platform_data** %3, align 8
  %12 = getelementptr inbounds %struct.ar934x_nfc_platform_data, %struct.ar934x_nfc_platform_data* %11, i32 0, i32 0
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = call i32 %13(i32 1)
  %15 = load %struct.ar934x_nfc_platform_data*, %struct.ar934x_nfc_platform_data** %3, align 8
  %16 = getelementptr inbounds %struct.ar934x_nfc_platform_data, %struct.ar934x_nfc_platform_data* %15, i32 0, i32 0
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = call i32 %17(i32 0)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %21 = load i32, i32* @AR934X_NFC_REG_TIME_SEQ, align 4
  %22 = load i32, i32* @AR934X_NFC_TIME_SEQ_DEFAULT, align 4
  %23 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %20, i32 %21, i32 %22)
  %24 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %25 = load i32, i32* @AR934X_NFC_REG_TIMINGS_ASYN, align 4
  %26 = load i32, i32* @AR934X_NFC_TIMINGS_ASYN_DEFAULT, align 4
  %27 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %24, i32 %25, i32 %26)
  %28 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %29 = load i32, i32* @AR934X_NFC_REG_TIMINGS_SYN, align 4
  %30 = load i32, i32* @AR934X_NFC_TIMINGS_SYN_DEFAULT, align 4
  %31 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %28, i32 %29, i32 %30)
  %32 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %33 = load i32, i32* @AR934X_NFC_REG_MEM_CTRL, align 4
  %34 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %32, i32 %33, i32 65280)
  %35 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %36 = load i32, i32* @AR934X_NFC_REG_DMA_ADDR_OFFS, align 4
  %37 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %35, i32 %36, i32 0)
  %38 = load i32, i32* @AR934X_NFC_CTRL_CUSTOM_SIZE_EN, align 4
  %39 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %40 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %42 = load i32, i32* @AR934X_NFC_REG_CTRL, align 4
  %43 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %44 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %41, i32 %42, i32 %45)
  %47 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %48 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %19
  %52 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %53 = load i32, i32* @AR934X_NFC_REG_GEN_SEQ_CTRL, align 4
  %54 = load i32, i32* @AR934X_NFC_GENSEQ_SMALL_PAGE_READ, align 4
  %55 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %19
  ret void
}

declare dso_local %struct.ar934x_nfc_platform_data* @ar934x_nfc_get_platform_data(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_wr(%struct.ar934x_nfc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
