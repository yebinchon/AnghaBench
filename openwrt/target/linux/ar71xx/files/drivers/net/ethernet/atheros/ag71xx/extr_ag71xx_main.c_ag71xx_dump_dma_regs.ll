; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_dump_dma_regs.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_dump_dma_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"%s: dma_tx_ctrl=%08x, dma_tx_desc=%08x, dma_tx_status=%08x\0A\00", align 1
@AG71XX_REG_TX_CTRL = common dso_local global i32 0, align 4
@AG71XX_REG_TX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_TX_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"%s: dma_rx_ctrl=%08x, dma_rx_desc=%08x, dma_rx_status=%08x\0A\00", align 1
@AG71XX_REG_RX_CTRL = common dso_local global i32 0, align 4
@AG71XX_REG_RX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_RX_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_dump_dma_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_dump_dma_regs(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %3 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %4 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %9 = load i32, i32* @AG71XX_REG_TX_CTRL, align 4
  %10 = call i32 @ag71xx_rr(%struct.ag71xx* %8, i32 %9)
  %11 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %12 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %13 = call i32 @ag71xx_rr(%struct.ag71xx* %11, i32 %12)
  %14 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %15 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %16 = call i32 @ag71xx_rr(%struct.ag71xx* %14, i32 %15)
  %17 = call i32 @DBG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13, i32 %16)
  %18 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %19 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %24 = load i32, i32* @AG71XX_REG_RX_CTRL, align 4
  %25 = call i32 @ag71xx_rr(%struct.ag71xx* %23, i32 %24)
  %26 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %27 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %28 = call i32 @ag71xx_rr(%struct.ag71xx* %26, i32 %27)
  %29 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %30 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %31 = call i32 @ag71xx_rr(%struct.ag71xx* %29, i32 %30)
  %32 = call i32 @DBG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
