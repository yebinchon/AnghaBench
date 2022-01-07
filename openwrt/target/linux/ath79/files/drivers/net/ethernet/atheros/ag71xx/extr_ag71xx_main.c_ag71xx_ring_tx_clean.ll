; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_tx_clean.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_tx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.net_device*, %struct.ag71xx_ring }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ag71xx_ring = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.ag71xx_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_ring_tx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_ring_tx_clean(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ag71xx_desc*, align 8
  %9 = alloca i64, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %10 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %11 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %10, i32 0, i32 1
  store %struct.ag71xx_ring* %11, %struct.ag71xx_ring** %3, align 8
  %12 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %13 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %16 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BIT(i32 %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %78, %1
  %21 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %22 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %25 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %89

28:                                               ; preds = %20
  %29 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %30 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %31, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  %35 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %35, i64 %36)
  store %struct.ag71xx_desc* %37, %struct.ag71xx_desc** %8, align 8
  %38 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %8, align 8
  %39 = call i32 @ag71xx_desc_empty(%struct.ag71xx_desc* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %28
  %42 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %8, align 8
  %43 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %28
  %50 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %51 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %49
  %59 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %60 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  %70 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %71 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @dev_kfree_skb_any(i32* %76)
  br label %78

78:                                               ; preds = %58, %49
  %79 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %80 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  %85 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %86 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %20

89:                                               ; preds = %20
  %90 = call i32 (...) @wmb()
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @netdev_completed_queue(%struct.net_device* %91, i64 %92, i64 %93)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i64) #1

declare dso_local i32 @ag71xx_desc_empty(%struct.ag71xx_desc*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
