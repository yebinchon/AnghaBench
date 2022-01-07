; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_read_page_raw.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_read_page_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { i32* }
%struct.ar934x_nfc = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"read_page_raw: page:%d oob:%d\0A\00", align 1
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32, i32)* @ar934x_nfc_read_page_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_read_page_raw(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ar934x_nfc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %16 = call %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info* %15)
  store %struct.ar934x_nfc* %16, %struct.ar934x_nfc** %12, align 8
  %17 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @nfc_dbg(%struct.ar934x_nfc* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %26, %5
  %33 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %34 = load i32, i32* @NAND_CMD_READ0, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @ar934x_nfc_send_read(%struct.ar934x_nfc* %33, i32 %34, i32 0, i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %70

42:                                               ; preds = %32
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %45 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %48 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32* %43, i32* %46, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %42
  %54 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %12, align 8
  %58 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %61 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %66 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32* %56, i32* %64, i32 %67)
  br label %69

69:                                               ; preds = %53, %42
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %40
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.ar934x_nfc* @mtd_to_ar934x_nfc(%struct.mtd_info*) #1

declare dso_local i32 @nfc_dbg(%struct.ar934x_nfc*, i8*, i32, i32) #1

declare dso_local i32 @ar934x_nfc_send_read(%struct.ar934x_nfc*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
