; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_rx_clean.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_rx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.TYPE_3__*, %struct.ag71xx_ring }
%struct.TYPE_3__ = type { i32 }
%struct.ag71xx_ring = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_ring_rx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_ring_rx_clean(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %6 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %7 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %6, i32 0, i32 2
  store %struct.ag71xx_ring* %7, %struct.ag71xx_ring** %3, align 8
  %8 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %9 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @BIT(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %13 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %63

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %60, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %24 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %22
  %33 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %34 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %38 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %46 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %49 = call i32 @dma_unmap_single(i32* %36, i32 %44, i32 %47, i32 %48)
  %50 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %51 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @skb_free_frag(i64 %57)
  br label %59

59:                                               ; preds = %32, %22
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %18

63:                                               ; preds = %16, %18
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_free_frag(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
