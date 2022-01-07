; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_read_status.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32*, i64, i32 }

@NAND_CMD_STATUS = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_CMD0_S = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_SEQ_S = common dso_local global i32 0, align 4
@AR934X_NFC_REG_INT_STATUS = common dso_local global i32 0, align 4
@AR934X_NFC_REG_CTRL = common dso_local global i32 0, align 4
@AR934X_NFC_REG_READ_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"read status, cmd:%08x status:%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar934x_nfc*)* @ar934x_nfc_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar934x_nfc_read_status(%struct.ar934x_nfc* %0) #0 {
  %2 = alloca %struct.ar934x_nfc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ar934x_nfc* %0, %struct.ar934x_nfc** %2, align 8
  %5 = load i32, i32* @NAND_CMD_STATUS, align 4
  %6 = load i32, i32* @AR934X_NFC_CMD_CMD0_S, align 4
  %7 = shl i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @AR934X_NFC_CMD_SEQ_S, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %12 = load i32, i32* @AR934X_NFC_REG_INT_STATUS, align 4
  %13 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %11, i32 %12, i32 0)
  %14 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %15 = load i32, i32* @AR934X_NFC_REG_CTRL, align 4
  %16 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %17 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %14, i32 %15, i32 %18)
  %20 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ar934x_nfc_write_cmd_reg(%struct.ar934x_nfc* %20, i32 %21)
  %23 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %24 = call i32 @ar934x_nfc_wait_dev_ready(%struct.ar934x_nfc* %23)
  %25 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %26 = load i32, i32* @AR934X_NFC_REG_READ_STATUS, align 4
  %27 = call i32 @ar934x_nfc_rr(%struct.ar934x_nfc* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 255
  %32 = call i32 @nfc_dbg(%struct.ar934x_nfc* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %34 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %40 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %38, i32* %42, align 4
  br label %49

43:                                               ; preds = %1
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %2, align 8
  %46 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %37
  ret void
}

declare dso_local i32 @ar934x_nfc_wr(%struct.ar934x_nfc*, i32, i32) #1

declare dso_local i32 @ar934x_nfc_write_cmd_reg(%struct.ar934x_nfc*, i32) #1

declare dso_local i32 @ar934x_nfc_wait_dev_ready(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_rr(%struct.ar934x_nfc*, i32) #1

declare dso_local i32 @nfc_dbg(%struct.ar934x_nfc*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
