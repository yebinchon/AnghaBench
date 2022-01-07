; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_read_oob.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { i32 }
%struct.ar934x_nfc = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"read_oob: page:%d\0A\00", align 1
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32)* @ar934x_nfc_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_read_oob(%struct.mtd_info* %0, %struct.nand_chip* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ar934x_nfc*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info* %10)
  store %struct.ar934x_nfc* %11, %struct.ar934x_nfc** %8, align 8
  %12 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @nfc_dbg(%struct.ar934x_nfc* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %16 = load i32, i32* @NAND_CMD_READ0, align 4
  %17 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ar934x_nfc_send_read(%struct.ar934x_nfc* %15, i32 %16, i32 %19, i32 %20, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %3
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %8, align 8
  %34 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32 %32, i32 %35, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %29, %27
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info*) #1

declare dso_local i32 @nfc_dbg(%struct.ar934x_nfc*, i8*, i32) #1

declare dso_local i32 @ar934x_nfc_send_read(%struct.ar934x_nfc*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
