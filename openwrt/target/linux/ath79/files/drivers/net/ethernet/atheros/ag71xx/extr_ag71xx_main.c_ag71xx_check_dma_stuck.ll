; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_check_dma_stuck.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_check_dma_stuck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32 }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@AG71XX_REG_RX_SM = common dso_local global i32 0, align 4
@AG71XX_REG_TX_SM = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_check_dma_stuck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_check_dma_stuck(%struct.ag71xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  %8 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %9 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_2__* @netdev_get_tx_queue(i32 %10, i32 0)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @jiffies, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @HZ, align 4
  %17 = sdiv i32 %16, 10
  %18 = sext i32 %17 to i64
  %19 = add i64 %15, %18
  %20 = call i32 @time_before(i32 %14, i64 %19)
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

24:                                               ; preds = %1
  %25 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %26 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_carrier_ok(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %69

31:                                               ; preds = %24
  %32 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %33 = load i32, i32* @AG71XX_REG_RX_SM, align 4
  %34 = call i32 @ag71xx_rr(%struct.ag71xx* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 7
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 4
  %41 = and i32 %40, 7
  %42 = icmp eq i32 %41, 6
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %69

44:                                               ; preds = %38, %31
  %45 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %46 = load i32, i32* @AG71XX_REG_TX_SM, align 4
  %47 = call i32 @ag71xx_rr(%struct.ag71xx* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %49 = load i32, i32* @AG71XX_REG_FIFO_DEPTH, align 4
  %50 = call i32 @ag71xx_rr(%struct.ag71xx* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 4
  %53 = and i32 %52, 7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 4
  %62 = and i32 %61, 7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %69

68:                                               ; preds = %64, %59, %55, %44
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %67, %43, %30, %23
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_2__* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @time_before(i32, i64) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
