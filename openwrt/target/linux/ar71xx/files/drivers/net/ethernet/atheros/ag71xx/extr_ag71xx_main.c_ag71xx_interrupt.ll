; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_interrupt.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ag71xx = type { i32 }

@AG71XX_REG_INT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@AG71XX_INT_ERR = common dso_local global i32 0, align 4
@AG71XX_INT_TX_BE = common dso_local global i32 0, align 4
@AG71XX_REG_TX_STATUS = common dso_local global i32 0, align 4
@TX_STATUS_BE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"TX BUS error\0A\00", align 1
@AG71XX_INT_RX_BE = common dso_local global i32 0, align 4
@AG71XX_REG_RX_STATUS = common dso_local global i32 0, align 4
@RX_STATUS_BE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"RX BUS error\0A\00", align 1
@AG71XX_INT_POLL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: enable polling mode\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ag71xx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ag71xx*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %11)
  store %struct.ag71xx* %12, %struct.ag71xx** %7, align 8
  %13 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %14 = load i32, i32* @AG71XX_REG_INT_STATUS, align 4
  %15 = call i32 @ag71xx_rr(%struct.ag71xx* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @ag71xx_dump_intr(%struct.ag71xx* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %82

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @AG71XX_INT_ERR, align 4
  %30 = and i32 %28, %29
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @AG71XX_INT_TX_BE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %40 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %41 = load i32, i32* @TX_STATUS_BE, align 4
  %42 = call i32 @ag71xx_wr(%struct.ag71xx* %39, i32 %40, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %38, %33
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @AG71XX_INT_RX_BE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %53 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %54 = load i32, i32* @RX_STATUS_BE, align 4
  %55 = call i32 @ag71xx_wr(%struct.ag71xx* %52, i32 %53, i32 %54)
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %51, %46
  br label %60

60:                                               ; preds = %59, %27
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @AG71XX_INT_POLL, align 4
  %63 = and i32 %61, %62
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %68 = load i32, i32* @AG71XX_INT_POLL, align 4
  %69 = call i32 @ag71xx_int_disable(%struct.ag71xx* %67, i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %75 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %74, i32 0, i32 0
  %76 = call i32 @napi_schedule(i32* %75)
  br label %77

77:                                               ; preds = %66, %60
  %78 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @ag71xx_debugfs_update_int_stats(%struct.ag71xx* %78, i32 %79)
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %25
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i32 @ag71xx_dump_intr(%struct.ag71xx*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ag71xx_int_disable(%struct.ag71xx*, i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @ag71xx_debugfs_update_int_stats(%struct.ag71xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
