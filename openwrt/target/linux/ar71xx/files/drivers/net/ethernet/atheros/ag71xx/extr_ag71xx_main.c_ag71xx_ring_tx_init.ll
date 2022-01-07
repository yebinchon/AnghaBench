; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_tx_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.ag71xx_ring }
%struct.ag71xx_ring = type { i64, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.ag71xx_desc = type { i32, i64 }

@AG71XX_DESC_SIZE = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_ring_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_ring_tx_init(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ag71xx_desc*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %8 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %9 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %8, i32 0, i32 1
  store %struct.ag71xx_ring* %9, %struct.ag71xx_ring** %3, align 8
  %10 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %11 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @BIT(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %15 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @BIT(i32 %16)
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %50, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %24, i32 %25)
  store %struct.ag71xx_desc* %26, %struct.ag71xx_desc** %7, align 8
  %27 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %28 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = mul nsw i32 %30, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %29, %36
  %38 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %7, align 8
  %39 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @DESC_EMPTY, align 4
  %41 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %7, align 8
  %42 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %44 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %23
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %19

53:                                               ; preds = %19
  %54 = call i32 (...) @wmb()
  %55 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %56 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %58 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %60 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @netdev_reset_queue(i32 %61)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netdev_reset_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
