; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_mii_write.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx_mdio = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"mii_write: addr=%04x, reg=%04x, value=%04x\0A\00", align 1
@AG71XX_REG_MII_ADDR = common dso_local global i32 0, align 4
@MII_ADDR_SHIFT = common dso_local global i32 0, align 4
@AG71XX_REG_MII_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ag71xx_mdio_mii_write(%struct.ag71xx_mdio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ag71xx_mdio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ag71xx_mdio* %0, %struct.ag71xx_mdio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i32 %11)
  %13 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %5, align 8
  %14 = load i32, i32* @AG71XX_REG_MII_ADDR, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 255
  %17 = load i32, i32* @MII_ADDR_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 255
  %21 = or i32 %18, %20
  %22 = call i32 @ag71xx_mdio_wr(%struct.ag71xx_mdio* %13, i32 %14, i32 %21)
  %23 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %5, align 8
  %24 = load i32, i32* @AG71XX_REG_MII_CTRL, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ag71xx_mdio_wr(%struct.ag71xx_mdio* %23, i32 %24, i32 %25)
  %27 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %5, align 8
  %28 = call i32 @ag71xx_mdio_wait_busy(%struct.ag71xx_mdio* %27)
  ret void
}

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @ag71xx_mdio_wr(%struct.ag71xx_mdio*, i32, i32) #1

declare dso_local i32 @ag71xx_mdio_wait_busy(%struct.ag71xx_mdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
