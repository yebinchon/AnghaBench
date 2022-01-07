; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_sw_detect.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_sw_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }
%struct.chip_rev = type { i32, i8* }

@CHIP_REV = common dso_local global i32 0, align 4
@CHIP_NAME_M = common dso_local global i32 0, align 4
@CHIP_NAME_S = common dso_local global i32 0, align 4
@MT7531 = common dso_local global i32 0, align 4
@TOP_SIG_SR = common dso_local global i32 0, align 4
@CHIP_REV_M = common dso_local global i32 0, align 4
@PAD_DUAL_SGMII_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"MT7531AE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"MT7531BE\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*, %struct.chip_rev*)* @mt7531_sw_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7531_sw_detect(%struct.gsw_mt753x* %0, %struct.chip_rev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsw_mt753x*, align 8
  %5 = alloca %struct.chip_rev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %4, align 8
  store %struct.chip_rev* %1, %struct.chip_rev** %5, align 8
  %8 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %9 = load i32, i32* @CHIP_REV, align 4
  %10 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CHIP_NAME_M, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @CHIP_NAME_S, align 4
  %15 = ashr i32 %13, %14
  %16 = load i32, i32* @MT7531, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.chip_rev*, %struct.chip_rev** %5, align 8
  %20 = icmp ne %struct.chip_rev* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %23 = load i32, i32* @TOP_SIG_SR, align 4
  %24 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @CHIP_REV_M, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.chip_rev*, %struct.chip_rev** %5, align 8
  %29 = getelementptr inbounds %struct.chip_rev, %struct.chip_rev* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PAD_DUAL_SGMII_EN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  %36 = load %struct.chip_rev*, %struct.chip_rev** %5, align 8
  %37 = getelementptr inbounds %struct.chip_rev, %struct.chip_rev* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %21, %18
  store i32 0, i32* %3, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %38
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
