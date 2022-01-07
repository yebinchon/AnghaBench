; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_destroy_rings.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_destroy_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw = type { i32, %struct._tx_ring, %struct._rx_ring }
%struct._tx_ring = type { %struct.sk_buff**, %struct.tx_desc* }
%struct.sk_buff = type { i32 }
%struct.tx_desc = type { i32 }
%struct._rx_ring = type { i8**, %struct.rx_desc* }
%struct.rx_desc = type { i32 }

@RX_DESCS = common dso_local global i32 0, align 4
@RX_SEGMENT_MRU = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_DESCS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sw*)* @destroy_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_rings(%struct.sw* %0) #0 {
  %2 = alloca %struct.sw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._rx_ring*, align 8
  %5 = alloca %struct.rx_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._tx_ring*, align 8
  %8 = alloca %struct.tx_desc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sw* %0, %struct.sw** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %46, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RX_DESCS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load %struct.sw*, %struct.sw** %2, align 8
  %16 = getelementptr inbounds %struct.sw, %struct.sw* %15, i32 0, i32 2
  store %struct._rx_ring* %16, %struct._rx_ring** %4, align 8
  %17 = load %struct._rx_ring*, %struct._rx_ring** %4, align 8
  %18 = getelementptr inbounds %struct._rx_ring, %struct._rx_ring* %17, i32 0, i32 1
  %19 = load %struct.rx_desc*, %struct.rx_desc** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %19, i64 %21
  store %struct.rx_desc* %22, %struct.rx_desc** %5, align 8
  %23 = load %struct.sw*, %struct.sw** %2, align 8
  %24 = getelementptr inbounds %struct.sw, %struct.sw* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct._rx_ring, %struct._rx_ring* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %14
  br label %46

34:                                               ; preds = %14
  %35 = load %struct.sw*, %struct.sw** %2, align 8
  %36 = getelementptr inbounds %struct.sw, %struct.sw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %39 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RX_SEGMENT_MRU, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_unmap_single(i32 %37, i32 %40, i32 %41, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @skb_free_frag(i8* %44)
  br label %46

46:                                               ; preds = %34, %33
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %10

49:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %88, %49
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @TX_DESCS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %50
  %55 = load %struct.sw*, %struct.sw** %2, align 8
  %56 = getelementptr inbounds %struct.sw, %struct.sw* %55, i32 0, i32 1
  store %struct._tx_ring* %56, %struct._tx_ring** %7, align 8
  %57 = load %struct._tx_ring*, %struct._tx_ring** %7, align 8
  %58 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %57, i32 0, i32 1
  %59 = load %struct.tx_desc*, %struct.tx_desc** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %59, i64 %61
  store %struct.tx_desc* %62, %struct.tx_desc** %8, align 8
  %63 = load %struct.sw*, %struct.sw** %2, align 8
  %64 = getelementptr inbounds %struct.sw, %struct.sw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct._tx_ring, %struct._tx_ring* %64, i32 0, i32 0
  %66 = load %struct.sk_buff**, %struct.sk_buff*** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %66, i64 %68
  %70 = load %struct.sk_buff*, %struct.sk_buff** %69, align 8
  store %struct.sk_buff* %70, %struct.sk_buff** %9, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %54
  br label %88

74:                                               ; preds = %54
  %75 = load %struct.sw*, %struct.sw** %2, align 8
  %76 = getelementptr inbounds %struct.sw, %struct.sw* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.tx_desc*, %struct.tx_desc** %8, align 8
  %79 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DMA_TO_DEVICE, align 4
  %85 = call i32 @dma_unmap_single(i32 %77, i32 %80, i32 %83, i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = call i32 @dev_kfree_skb(%struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %74, %73
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %50

91:                                               ; preds = %50
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_free_frag(i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
