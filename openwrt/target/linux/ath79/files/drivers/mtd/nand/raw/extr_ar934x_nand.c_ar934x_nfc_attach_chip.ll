; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_attach_chip.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mtd_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ar934x_nfc = type { i32 }

@NAND_ECC_HW = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown ECC mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NAND_ECC_BCH = common dso_local global i32 0, align 4
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown software ECC algo %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @ar934x_nfc_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.ar934x_nfc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %4, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = call %struct.ar934x_nfc* @nand_get_controller_data(%struct.nand_chip* %10)
  store %struct.ar934x_nfc* %11, %struct.ar934x_nfc** %5, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %17 = call i32 @ar934x_nfc_init_tail(%struct.mtd_info* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %79

22:                                               ; preds = %1
  %23 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NAND_ECC_HW, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %31 = call i32 @ar934x_nfc_setup_hwecc(%struct.ar934x_nfc* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %79

36:                                               ; preds = %29
  br label %78

37:                                               ; preds = %22
  %38 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NAND_ECC_SOFT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %79

53:                                               ; preds = %37
  %54 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NAND_ECC_BCH, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %79

76:                                               ; preds = %60, %53
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %36
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %67, %44, %34, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.ar934x_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @ar934x_nfc_init_tail(%struct.mtd_info*) #1

declare dso_local i32 @ar934x_nfc_setup_hwecc(%struct.ar934x_nfc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
