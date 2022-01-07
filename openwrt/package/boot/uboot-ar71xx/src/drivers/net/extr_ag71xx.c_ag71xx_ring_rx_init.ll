; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_ring_rx_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/drivers/net/extr_ag71xx.c_ag71xx_ring_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.ag71xx_ring }
%struct.ag71xx_ring = type { i32, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@AG71XX_RX_RING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ag71xx: RX desc at %p, next is %08x\0A\00", align 1
@NetRxPackets = common dso_local global i64* null, align 8
@DESC_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_ring_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_ring_rx_init(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %6 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %5, i32 0, i32 0
  store %struct.ag71xx_ring* %6, %struct.ag71xx_ring** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %55, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AG71XX_RX_RING_SIZE, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %7
  %12 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %13 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %16 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add i32 %18, 1
  %20 = load i32, i32* @AG71XX_RX_RING_SIZE, align 4
  %21 = urem i32 %19, %20
  %22 = mul i32 %17, %21
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %14, %23
  %25 = call i64 @virt_to_phys(i64 %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %28 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i8* %26, i8** %35, align 8
  %36 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %37 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %45 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %43, i8* %53)
  br label %55

55:                                               ; preds = %11
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %7

58:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %90, %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @AG71XX_RX_RING_SIZE, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %59
  %64 = load i64*, i64** @NetRxPackets, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @virt_to_phys(i64 %68)
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %72 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i8* %70, i8** %79, align 8
  %80 = load i32, i32* @DESC_EMPTY, align 4
  %81 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %82 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %80, i32* %89, align 8
  br label %90

90:                                               ; preds = %63
  %91 = load i32, i32* %4, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %59

93:                                               ; preds = %59
  %94 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %95 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  ret i32 0
}

declare dso_local i64 @virt_to_phys(i64) #1

declare dso_local i32 @DBG(i8*, %struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
