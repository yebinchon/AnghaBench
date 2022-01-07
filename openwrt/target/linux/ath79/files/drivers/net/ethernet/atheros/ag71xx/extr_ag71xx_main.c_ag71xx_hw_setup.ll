; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hw_setup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@MAC_CFG1_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"flow-control\00", align 1
@MAC_CFG1_TFC = common dso_local global i32 0, align 4
@MAC_CFG1_RFC = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_CFG1 = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_CFG2 = common dso_local global i32 0, align 4
@MAC_CFG2_PAD_CRC_EN = common dso_local global i32 0, align 4
@MAC_CFG2_LEN_CHECK = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_MFL = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG0 = common dso_local global i32 0, align 4
@FIFO_CFG0_INIT = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG1 = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG2 = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG4 = common dso_local global i32 0, align 4
@FIFO_CFG4_INIT = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG5 = common dso_local global i32 0, align 4
@FIFO_CFG5_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_hw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_hw_setup(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %6 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %3, align 8
  %11 = load i32, i32* @MAC_CFG1_INIT, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = call i64 @of_property_read_bool(%struct.device_node* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @MAC_CFG1_TFC, align 4
  %17 = load i32, i32* @MAC_CFG1_RFC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %23 = load i32, i32* @AG71XX_REG_MAC_CFG1, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ag71xx_wr(%struct.ag71xx* %22, i32 %23, i32 %24)
  %26 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %27 = load i32, i32* @AG71XX_REG_MAC_CFG2, align 4
  %28 = load i32, i32* @MAC_CFG2_PAD_CRC_EN, align 4
  %29 = load i32, i32* @MAC_CFG2_LEN_CHECK, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ag71xx_sb(%struct.ag71xx* %26, i32 %27, i32 %30)
  %32 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %33 = load i32, i32* @AG71XX_REG_MAC_MFL, align 4
  %34 = call i32 @ag71xx_wr(%struct.ag71xx* %32, i32 %33, i32 0)
  %35 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %36 = load i32, i32* @AG71XX_REG_FIFO_CFG0, align 4
  %37 = load i32, i32* @FIFO_CFG0_INIT, align 4
  %38 = call i32 @ag71xx_wr(%struct.ag71xx* %35, i32 %36, i32 %37)
  %39 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %40 = load i32, i32* @AG71XX_REG_FIFO_CFG1, align 4
  %41 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %42 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ag71xx_wr(%struct.ag71xx* %39, i32 %40, i32 %45)
  %47 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %48 = load i32, i32* @AG71XX_REG_FIFO_CFG2, align 4
  %49 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %50 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ag71xx_wr(%struct.ag71xx* %47, i32 %48, i32 %53)
  %55 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %56 = load i32, i32* @AG71XX_REG_FIFO_CFG4, align 4
  %57 = load i32, i32* @FIFO_CFG4_INIT, align 4
  %58 = call i32 @ag71xx_wr(%struct.ag71xx* %55, i32 %56, i32 %57)
  %59 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %60 = load i32, i32* @AG71XX_REG_FIFO_CFG5, align 4
  %61 = load i32, i32* @FIFO_CFG5_INIT, align 4
  %62 = call i32 @ag71xx_wr(%struct.ag71xx* %59, i32 %60, i32 %61)
  ret void
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_sb(%struct.ag71xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
