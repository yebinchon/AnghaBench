; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_dump_regs.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"%s: mac_cfg1=%08x, mac_cfg2=%08x, ipg=%08x, hdx=%08x, mfl=%08x\0A\00", align 1
@AG71XX_REG_MAC_CFG1 = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_CFG2 = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_IPG = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_HDX = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_MFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: mac_ifctl=%08x, mac_addr1=%08x, mac_addr2=%08x\0A\00", align 1
@AG71XX_REG_MAC_IFCTL = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_ADDR1 = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_ADDR2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"%s: fifo_cfg0=%08x, fifo_cfg1=%08x, fifo_cfg2=%08x\0A\00", align 1
@AG71XX_REG_FIFO_CFG0 = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG1 = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: fifo_cfg3=%08x, fifo_cfg4=%08x, fifo_cfg5=%08x\0A\00", align 1
@AG71XX_REG_FIFO_CFG3 = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG4 = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_dump_regs(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %3 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %4 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %9 = load i32, i32* @AG71XX_REG_MAC_CFG1, align 4
  %10 = call i32 @ag71xx_rr(%struct.ag71xx* %8, i32 %9)
  %11 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %12 = load i32, i32* @AG71XX_REG_MAC_CFG2, align 4
  %13 = call i32 @ag71xx_rr(%struct.ag71xx* %11, i32 %12)
  %14 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %15 = load i32, i32* @AG71XX_REG_MAC_IPG, align 4
  %16 = call i32 @ag71xx_rr(%struct.ag71xx* %14, i32 %15)
  %17 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %18 = load i32, i32* @AG71XX_REG_MAC_HDX, align 4
  %19 = call i32 @ag71xx_rr(%struct.ag71xx* %17, i32 %18)
  %20 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %21 = load i32, i32* @AG71XX_REG_MAC_MFL, align 4
  %22 = call i32 @ag71xx_rr(%struct.ag71xx* %20, i32 %21)
  %23 = call i32 (i8*, i32, i32, i32, i32, ...) @DBG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %25 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %30 = load i32, i32* @AG71XX_REG_MAC_IFCTL, align 4
  %31 = call i32 @ag71xx_rr(%struct.ag71xx* %29, i32 %30)
  %32 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %33 = load i32, i32* @AG71XX_REG_MAC_ADDR1, align 4
  %34 = call i32 @ag71xx_rr(%struct.ag71xx* %32, i32 %33)
  %35 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %36 = load i32, i32* @AG71XX_REG_MAC_ADDR2, align 4
  %37 = call i32 @ag71xx_rr(%struct.ag71xx* %35, i32 %36)
  %38 = call i32 (i8*, i32, i32, i32, i32, ...) @DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %40 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %45 = load i32, i32* @AG71XX_REG_FIFO_CFG0, align 4
  %46 = call i32 @ag71xx_rr(%struct.ag71xx* %44, i32 %45)
  %47 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %48 = load i32, i32* @AG71XX_REG_FIFO_CFG1, align 4
  %49 = call i32 @ag71xx_rr(%struct.ag71xx* %47, i32 %48)
  %50 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %51 = load i32, i32* @AG71XX_REG_FIFO_CFG2, align 4
  %52 = call i32 @ag71xx_rr(%struct.ag71xx* %50, i32 %51)
  %53 = call i32 (i8*, i32, i32, i32, i32, ...) @DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %55 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %60 = load i32, i32* @AG71XX_REG_FIFO_CFG3, align 4
  %61 = call i32 @ag71xx_rr(%struct.ag71xx* %59, i32 %60)
  %62 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %63 = load i32, i32* @AG71XX_REG_FIFO_CFG4, align 4
  %64 = call i32 @ag71xx_rr(%struct.ag71xx* %62, i32 %63)
  %65 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %66 = load i32, i32* @AG71XX_REG_FIFO_CFG5, align 4
  %67 = call i32 @ag71xx_rr(%struct.ag71xx* %65, i32 %66)
  %68 = call i32 (i8*, i32, i32, i32, i32, ...) @DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %61, i32 %64, i32 %67)
  ret void
}

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
