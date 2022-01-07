; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_detect.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8367_RTL_NO_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to read chip number\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"8367R\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"8367M\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unknown chip number (%04x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@RTL8367_RTL_VER_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"unable to read chip version\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"RTL%s ver. %u chip found\0A\00", align 1
@RTL8367_RTL_VER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8367_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_detect(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366_smi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %9 = load i32, i32* @RTL8367_RTL_NO_REG, align 4
  %10 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %8, i32 %9, i32* %4)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %15 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @dev_err(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %23 [
    i32 128, label %21
    i32 129, label %22
  ]

21:                                               ; preds = %19
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %31

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %31

23:                                               ; preds = %19
  %24 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %25 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %22, %21
  %32 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %33 = load i32, i32* @RTL8367_RTL_VER_REG, align 4
  %34 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %32, i32 %33, i32* %5)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %39 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %31
  %44 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %45 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @RTL8367_RTL_VER_MASK, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @dev_info(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %47, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %37, %23, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
