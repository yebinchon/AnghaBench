; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ath79_mii_ctrl_set_speed.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ath79_mii_ctrl_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, i32 }

@AR71XX_MII_CTRL_SPEED_10 = common dso_local global i32 0, align 4
@AR71XX_MII_CTRL_SPEED_100 = common dso_local global i32 0, align 4
@AR71XX_MII_CTRL_SPEED_1000 = common dso_local global i32 0, align 4
@AR71XX_MII_CTRL_SPEED_MASK = common dso_local global i32 0, align 4
@AR71XX_MII_CTRL_SPEED_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ath79_mii_ctrl_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath79_mii_ctrl_set_speed(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %6 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %12 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 130, label %14
    i32 129, label %16
    i32 128, label %18
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* @AR71XX_MII_CTRL_SPEED_10, align 4
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %10
  %17 = load i32, i32* @AR71XX_MII_CTRL_SPEED_100, align 4
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @AR71XX_MII_CTRL_SPEED_1000, align 4
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %10
  %21 = call i32 (...) @BUG()
  br label %22

22:                                               ; preds = %20, %18, %16, %14
  %23 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %24 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__raw_readl(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @AR71XX_MII_CTRL_SPEED_MASK, align 4
  %28 = load i32, i32* @AR71XX_MII_CTRL_SPEED_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @AR71XX_MII_CTRL_SPEED_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %40 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__raw_writel(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %22, %9
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
