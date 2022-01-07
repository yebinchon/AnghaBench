; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_rx_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.ag71xx_ring }
%struct.ag71xx_ring = type { i64, i64, i32*, i64, i32 }
%struct.ag71xx_desc = type { i32, i64 }

@AG71XX_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ag71xx: RX desc at %p, next is %08x\0A\00", align 1
@netdev_alloc_frag = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_ring_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_ring_rx_init(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ag71xx_desc*, align 8
  %9 = alloca %struct.ag71xx_desc*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %10 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %11 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %10, i32 0, i32 1
  store %struct.ag71xx_ring* %11, %struct.ag71xx_ring** %3, align 8
  %12 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %13 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @BIT(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %17 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BIT(i32 %18)
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %47, %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %26, i32 %27)
  store %struct.ag71xx_desc* %28, %struct.ag71xx_desc** %8, align 8
  %29 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %30 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %34, %35
  %37 = mul i32 %32, %36
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %31, %38
  %40 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %8, align 8
  %41 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %8, align 8
  %43 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %8, align 8
  %44 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.ag71xx_desc* %42, i64 %45)
  br label %47

47:                                               ; preds = %25
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %21

50:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %51
  %56 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %56, i32 %57)
  store %struct.ag71xx_desc* %58, %struct.ag71xx_desc** %9, align 8
  %59 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %60 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %61 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %67 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @netdev_alloc_frag, align 4
  %70 = call i32 @ag71xx_fill_rx_buf(%struct.ag71xx* %59, i32* %65, i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %55
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %82

75:                                               ; preds = %55
  %76 = load i32, i32* @DESC_EMPTY, align 4
  %77 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %9, align 8
  %78 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %51

82:                                               ; preds = %72, %51
  %83 = call i32 (...) @wmb()
  %84 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %85 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %87 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @DBG(i8*, %struct.ag71xx_desc*, i64) #1

declare dso_local i32 @ag71xx_fill_rx_buf(%struct.ag71xx*, i32*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
