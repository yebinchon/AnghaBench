; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_write_oob.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { i32 }
%struct.ar934x_nfc = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"write_oob: page:%d\0A\00", align 1
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32)* @ar934x_nfc_write_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_write_oob(%struct.mtd_info* %0, %struct.nand_chip* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar934x_nfc*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = call %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info* %8)
  store %struct.ar934x_nfc* %9, %struct.ar934x_nfc** %7, align 8
  %10 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @nfc_dbg(%struct.ar934x_nfc* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %14 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32 %15, i32 %18, i32 %21)
  %23 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %7, align 8
  %24 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %25 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ar934x_nfc_send_write(%struct.ar934x_nfc* %23, i32 %24, i32 %27, i32 %28, i32 %31)
  ret i32 %32
}

declare dso_local %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info*) #1

declare dso_local i32 @nfc_dbg(%struct.ar934x_nfc*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ar934x_nfc_send_write(%struct.ar934x_nfc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
