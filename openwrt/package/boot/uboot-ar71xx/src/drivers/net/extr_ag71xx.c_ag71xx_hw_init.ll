; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_hw_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RESET_MODULE_GE0_MAC = common dso_local global i32 0, align 4
@RESET_MODULE_GE0_PHY = common dso_local global i32 0, align 4
@RESET_MODULE_GE1_MAC = common dso_local global i32 0, align 4
@RESET_MODULE_GE1_PHY = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_CFG1 = common dso_local global i32 0, align 4
@MAC_CFG1_SR = common dso_local global i32 0, align 4
@AR91XX_RESET_REG_RESET_MODULE = common dso_local global i32 0, align 4
@MAC_CFG1_RXE = common dso_local global i32 0, align 4
@MAC_CFG1_TXE = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_CFG2 = common dso_local global i32 0, align 4
@MAC_CFG2_PAD_CRC_EN = common dso_local global i32 0, align 4
@MAC_CFG2_LEN_CHECK = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG0 = common dso_local global i32 0, align 4
@FIFO_CFG0_INIT = common dso_local global i32 0, align 4
@AG71XX_REG_MII_CFG = common dso_local global i32 0, align 4
@MII_CFG_CLK_DIV_20 = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG4 = common dso_local global i32 0, align 4
@FIFO_CFG4_INIT = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG1 = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG2 = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG5 = common dso_local global i32 0, align 4
@FIFO_CFG5_INIT = common dso_local global i32 0, align 4
@AG71XX_REG_TX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_RX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_hw_init(%struct.ag71xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %9 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @RESET_MODULE_GE0_MAC, align 4
  %14 = load i32, i32* @RESET_MODULE_GE0_PHY, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  store i32 19, i32* %7, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @RESET_MODULE_GE1_MAC, align 4
  %18 = load i32, i32* @RESET_MODULE_GE1_PHY, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  store i32 17, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %22 = load i32, i32* @AG71XX_REG_MAC_CFG1, align 4
  %23 = load i32, i32* @MAC_CFG1_SR, align 4
  %24 = call i32 @ag71xx_sb(%struct.ag71xx* %21, i32 %22, i32 %23)
  %25 = call i32 @udelay(i32 20)
  %26 = load i32, i32* @AR91XX_RESET_REG_RESET_MODULE, align 4
  %27 = call i32 @ar71xx_reset_rr(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @AR91XX_RESET_REG_RESET_MODULE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ar71xx_reset_wr(i32 %28, i32 %31)
  %33 = call i32 @udelay(i32 100000)
  %34 = load i32, i32* @AR91XX_RESET_REG_RESET_MODULE, align 4
  %35 = call i32 @ar71xx_reset_rr(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @AR91XX_RESET_REG_RESET_MODULE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @ar71xx_reset_wr(i32 %36, i32 %40)
  %42 = call i32 @udelay(i32 100000)
  %43 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %44 = load i32, i32* @AG71XX_REG_MAC_CFG1, align 4
  %45 = load i32, i32* @MAC_CFG1_RXE, align 4
  %46 = load i32, i32* @MAC_CFG1_TXE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @ag71xx_wr(%struct.ag71xx* %43, i32 %44, i32 %47)
  %49 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %50 = load i32, i32* @AG71XX_REG_MAC_CFG2, align 4
  %51 = load i32, i32* @MAC_CFG2_PAD_CRC_EN, align 4
  %52 = load i32, i32* @MAC_CFG2_LEN_CHECK, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @ag71xx_sb(%struct.ag71xx* %49, i32 %50, i32 %53)
  %55 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %56 = load i32, i32* @AG71XX_REG_FIFO_CFG0, align 4
  %57 = load i32, i32* @FIFO_CFG0_INIT, align 4
  %58 = call i32 @ag71xx_wr(%struct.ag71xx* %55, i32 %56, i32 %57)
  %59 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %60 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %61 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ag71xx_mii_ctrl_set_if(%struct.ag71xx* %59, i32 %62)
  %64 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %65 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %66 = load i32, i32* @MII_CFG_CLK_DIV_20, align 4
  %67 = call i32 @ag71xx_wr(%struct.ag71xx* %64, i32 %65, i32 %66)
  %68 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %69 = load i32, i32* @AG71XX_REG_FIFO_CFG4, align 4
  %70 = load i32, i32* @FIFO_CFG4_INIT, align 4
  %71 = call i32 @ag71xx_sb(%struct.ag71xx* %68, i32 %69, i32 %70)
  %72 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %73 = load i32, i32* @AG71XX_REG_FIFO_CFG1, align 4
  %74 = call i32 @ag71xx_wr(%struct.ag71xx* %72, i32 %73, i32 268369920)
  %75 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %76 = load i32, i32* @AG71XX_REG_FIFO_CFG2, align 4
  %77 = call i32 @ag71xx_wr(%struct.ag71xx* %75, i32 %76, i32 8191)
  %78 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %79 = load i32, i32* @AG71XX_REG_FIFO_CFG5, align 4
  %80 = load i32, i32* @FIFO_CFG5_INIT, align 4
  %81 = call i32 @ag71xx_wr(%struct.ag71xx* %78, i32 %79, i32 %80)
  %82 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %83 = call i32 @ag71xx_dma_reset(%struct.ag71xx* %82)
  %84 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %85 = call i32 @ag71xx_rings_init(%struct.ag71xx* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %115

89:                                               ; preds = %20
  %90 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %91 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %92 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %93 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @virt_to_phys(i32 %95)
  %97 = trunc i64 %96 to i32
  %98 = call i32 @ag71xx_wr(%struct.ag71xx* %90, i32 %91, i32 %97)
  %99 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %100 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %101 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %102 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @virt_to_phys(i32 %104)
  %106 = trunc i64 %105 to i32
  %107 = call i32 @ag71xx_wr(%struct.ag71xx* %99, i32 %100, i32 %106)
  %108 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %109 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %110 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ag71xx_hw_set_macaddr(%struct.ag71xx* %108, i32 %113)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %89, %88
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @ag71xx_sb(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ar71xx_reset_rr(i32) #1

declare dso_local i32 @ar71xx_reset_wr(i32, i32) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_mii_ctrl_set_if(%struct.ag71xx*, i32) #1

declare dso_local i32 @ag71xx_dma_reset(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_rings_init(%struct.ag71xx*) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @ag71xx_hw_set_macaddr(%struct.ag71xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
