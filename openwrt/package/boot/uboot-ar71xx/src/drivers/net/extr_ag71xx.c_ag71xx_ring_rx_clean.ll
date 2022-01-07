; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_ring_rx_clean.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_ring_rx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.ag71xx_ring }
%struct.ag71xx_ring = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@AG71XX_RX_RING_SIZE = common dso_local global i32 0, align 4
@NetRxPackets = common dso_local global i64* null, align 8
@PKTSIZE_ALIGN = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_ring_rx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_ring_rx_clean(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %6 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %5, i32 0, i32 0
  store %struct.ag71xx_ring* %6, %struct.ag71xx_ring** %3, align 8
  %7 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %8 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %56

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %50, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AG71XX_RX_RING_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = load i64*, i64** @NetRxPackets, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @virt_to_phys(i64 %22)
  %24 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %25 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i64 %23, i64* %32, align 8
  %33 = load i64*, i64** @NetRxPackets, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @PKTSIZE_ALIGN, align 4
  %39 = call i32 @flush_cache(i64 %37, i32 %38)
  %40 = load i32, i32* @DESC_EMPTY, align 4
  %41 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %42 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %40, i32* %49, align 8
  br label %50

50:                                               ; preds = %17
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %13

53:                                               ; preds = %13
  %54 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %55 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %11
  ret void
}

declare dso_local i64 @virt_to_phys(i64) #1

declare dso_local i32 @flush_cache(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
