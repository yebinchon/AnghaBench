; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366s_detect.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366s.c_rtl8366s_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8366S_CHIP_ID_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unable to read chip id\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown chip id (%04x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RTL8366S_CHIP_VERSION_CTRL_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to read chip version\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"RTL%04x ver. %u chip found\0A\00", align 1
@RTL8366S_CHIP_VERSION_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8366s_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366s_detect(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366_smi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %8 = load i32, i32* @RTL8366S_CHIP_ID_REG, align 4
  %9 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %7, i32 %8, i32* %4)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %14 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @dev_err(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %21 [
    i32 128, label %20
  ]

20:                                               ; preds = %18
  br label %29

21:                                               ; preds = %18
  %22 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %23 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %50

29:                                               ; preds = %20
  %30 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %31 = load i32, i32* @RTL8366S_CHIP_VERSION_CTRL_REG, align 4
  %32 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %30, i32 %31, i32* %5)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %37 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %50

41:                                               ; preds = %29
  %42 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %43 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @RTL8366S_CHIP_VERSION_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @dev_info(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %41, %35, %21, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
