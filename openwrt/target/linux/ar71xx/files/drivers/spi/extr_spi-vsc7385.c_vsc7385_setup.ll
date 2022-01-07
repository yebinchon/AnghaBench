; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-vsc7385.c_vsc7385_setup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/spi/extr_spi-vsc7385.c_vsc7385_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc7385 = type { %struct.vsc7385_platform_data* }
%struct.vsc7385_platform_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@VSC73XX_BLOCK_SYSTEM = common dso_local global i32 0, align 4
@VSC73XX_ICPU_CLOCK_DELAY = common dso_local global i32 0, align 4
@VSC7385_CLOCK_DELAY = common dso_local global i32 0, align 4
@VSC7385_CLOCK_DELAY_MASK = common dso_local global i32 0, align 4
@VSC73XX_BLOCK_MAC = common dso_local global i32 0, align 4
@VSC73XX_SUBBLOCK_PORT_MAC = common dso_local global i32 0, align 4
@VSC73XX_ADVPORTM = common dso_local global i32 0, align 4
@VSC7385_ADVPORTM_INIT = common dso_local global i32 0, align 4
@VSC7385_ADVPORTM_MASK = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG = common dso_local global i32 0, align 4
@VSC7385_MAC_CFG_RESET = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_INIT = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_BIT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsc7385*)* @vsc7385_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc7385_setup(%struct.vsc7385* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsc7385*, align 8
  %4 = alloca %struct.vsc7385_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vsc7385* %0, %struct.vsc7385** %3, align 8
  %7 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %8 = getelementptr inbounds %struct.vsc7385, %struct.vsc7385* %7, i32 0, i32 0
  %9 = load %struct.vsc7385_platform_data*, %struct.vsc7385_platform_data** %8, align 8
  store %struct.vsc7385_platform_data* %9, %struct.vsc7385_platform_data** %4, align 8
  %10 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %11 = load i32, i32* @VSC73XX_BLOCK_SYSTEM, align 4
  %12 = load i32, i32* @VSC73XX_ICPU_CLOCK_DELAY, align 4
  %13 = load i32, i32* @VSC7385_CLOCK_DELAY, align 4
  %14 = load i32, i32* @VSC7385_CLOCK_DELAY_MASK, align 4
  %15 = load i32, i32* @VSC7385_CLOCK_DELAY, align 4
  %16 = call i32 @vsc7385_write_verify(%struct.vsc7385* %10, i32 %11, i32 0, i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %78

20:                                               ; preds = %1
  %21 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %22 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %23 = load i32, i32* @VSC73XX_SUBBLOCK_PORT_MAC, align 4
  %24 = load i32, i32* @VSC73XX_ADVPORTM, align 4
  %25 = load i32, i32* @VSC7385_ADVPORTM_INIT, align 4
  %26 = load i32, i32* @VSC7385_ADVPORTM_MASK, align 4
  %27 = load i32, i32* @VSC7385_ADVPORTM_INIT, align 4
  %28 = call i32 @vsc7385_write_verify(%struct.vsc7385* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %78

32:                                               ; preds = %20
  %33 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %34 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %35 = load i32, i32* @VSC73XX_SUBBLOCK_PORT_MAC, align 4
  %36 = load i32, i32* @VSC73XX_MAC_CFG, align 4
  %37 = load i32, i32* @VSC7385_MAC_CFG_RESET, align 4
  %38 = call i32 @vsc7385_write(%struct.vsc7385* %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %78

42:                                               ; preds = %32
  %43 = load i32, i32* @VSC73XX_MAC_CFG_INIT, align 4
  store i32 %43, i32* %5, align 4
  %44 = load %struct.vsc7385_platform_data*, %struct.vsc7385_platform_data** %4, align 8
  %45 = getelementptr inbounds %struct.vsc7385_platform_data, %struct.vsc7385_platform_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @VSC73XX_MAC_CFG_TX_IPG(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.vsc7385_platform_data*, %struct.vsc7385_platform_data** %4, align 8
  %52 = getelementptr inbounds %struct.vsc7385_platform_data, %struct.vsc7385_platform_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @VSC73XX_MAC_CFG_CLK_SEL(i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.vsc7385_platform_data*, %struct.vsc7385_platform_data** %4, align 8
  %59 = getelementptr inbounds %struct.vsc7385_platform_data, %struct.vsc7385_platform_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %42
  %64 = load i32, i32* @VSC73XX_MAC_CFG_BIT2, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %42
  %68 = load %struct.vsc7385*, %struct.vsc7385** %3, align 8
  %69 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %70 = load i32, i32* @VSC73XX_SUBBLOCK_PORT_MAC, align 4
  %71 = load i32, i32* @VSC73XX_MAC_CFG, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @vsc7385_write(%struct.vsc7385* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %78

77:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %80

78:                                               ; preds = %76, %41, %31, %19
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @vsc7385_write_verify(%struct.vsc7385*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vsc7385_write(%struct.vsc7385*, i32, i32, i32, i32) #1

declare dso_local i32 @VSC73XX_MAC_CFG_TX_IPG(i32) #1

declare dso_local i32 @VSC73XX_MAC_CFG_CLK_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
