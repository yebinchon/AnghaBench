; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rings_free.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rings_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_2__*, %struct.ag71xx_ring, %struct.ag71xx_ring }
%struct.TYPE_2__ = type { i32 }
%struct.ag71xx_ring = type { i32*, i32*, i32, i32 }

@AG71XX_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_rings_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_rings_free(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca %struct.ag71xx_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %6 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %7 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %6, i32 0, i32 2
  store %struct.ag71xx_ring* %7, %struct.ag71xx_ring** %3, align 8
  %8 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %9 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %8, i32 0, i32 1
  store %struct.ag71xx_ring* %9, %struct.ag71xx_ring** %4, align 8
  %10 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %11 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %15 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = add nsw i32 %13, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %20 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %25 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %32 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %35 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_free_coherent(i32* %27, i32 %30, i32* %33, i32 %36)
  br label %38

38:                                               ; preds = %23, %1
  %39 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %40 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %44 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %46 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %48 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %4, align 8
  %50 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
