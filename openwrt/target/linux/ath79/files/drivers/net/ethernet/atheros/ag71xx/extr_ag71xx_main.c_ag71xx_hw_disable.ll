; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hw_disable.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hw_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_hw_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_hw_disable(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %3 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %4 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @netif_stop_queue(i32 %5)
  %7 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %8 = call i32 @ag71xx_hw_stop(%struct.ag71xx* %7)
  %9 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %10 = call i32 @ag71xx_dma_reset(%struct.ag71xx* %9)
  %11 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %12 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %11, i32 0, i32 1
  %13 = call i32 @napi_disable(i32* %12)
  %14 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %15 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %14, i32 0, i32 0
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %18 = call i32 @ag71xx_rings_cleanup(%struct.ag71xx* %17)
  ret void
}

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @ag71xx_hw_stop(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_dma_reset(%struct.ag71xx*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ag71xx_rings_cleanup(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
