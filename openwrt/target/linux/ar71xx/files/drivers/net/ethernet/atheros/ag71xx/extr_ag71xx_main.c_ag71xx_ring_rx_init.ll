; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_rx_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.ag71xx_ring }
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
  %8 = alloca i32, align 4
  %9 = alloca %struct.ag71xx_desc*, align 8
  %10 = alloca %struct.ag71xx_desc*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %11 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %12 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %11, i32 0, i32 0
  store %struct.ag71xx_ring* %12, %struct.ag71xx_ring** %3, align 8
  %13 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %14 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %18 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @BIT(i32 %19)
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %23 = call i32 @ag71xx_buffer_offset(%struct.ag71xx* %22)
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %50, %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %29, i32 %30)
  store %struct.ag71xx_desc* %31, %struct.ag71xx_desc** %9, align 8
  %32 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %33 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @AG71XX_DESC_SIZE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %37, %38
  %40 = mul i32 %35, %39
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %34, %41
  %43 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %9, align 8
  %44 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %9, align 8
  %46 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %9, align 8
  %47 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.ag71xx_desc* %45, i64 %48)
  br label %50

50:                                               ; preds = %28
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %24

53:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %80, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %59, i32 %60)
  store %struct.ag71xx_desc* %61, %struct.ag71xx_desc** %10, align 8
  %62 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %63 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %64 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @netdev_alloc_frag, align 4
  %71 = call i32 @ag71xx_fill_rx_buf(%struct.ag71xx* %62, i32* %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %58
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %83

76:                                               ; preds = %58
  %77 = load i32, i32* @DESC_EMPTY, align 4
  %78 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %79 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %54

83:                                               ; preds = %73, %54
  %84 = call i32 (...) @wmb()
  %85 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %86 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %88 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ag71xx_buffer_offset(%struct.ag71xx*) #1

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
