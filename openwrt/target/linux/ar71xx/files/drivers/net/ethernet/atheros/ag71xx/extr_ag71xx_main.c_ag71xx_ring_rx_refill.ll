; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_rx_refill.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_ring_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_3__*, %struct.ag71xx_ring }
%struct.TYPE_3__ = type { i32 }
%struct.ag71xx_ring = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ag71xx_desc = type { i32 }

@napi_alloc_frag = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: %u rx descriptors refilled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_ring_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_ring_rx_refill(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ag71xx_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %9 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %10 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %9, i32 0, i32 1
  store %struct.ag71xx_ring* %10, %struct.ag71xx_ring** %3, align 8
  %11 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %12 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @BIT(i32 %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %17 = call i32 @ag71xx_buffer_offset(%struct.ag71xx* %16)
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %65, %1
  %19 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %20 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %23 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %21, %25
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %18
  %29 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %30 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %34, i32 %35)
  store %struct.ag71xx_desc* %36, %struct.ag71xx_desc** %7, align 8
  %37 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %38 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %28
  %47 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %48 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %49 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @napi_alloc_frag, align 4
  %56 = call i32 @ag71xx_fill_rx_buf(%struct.ag71xx* %47, %struct.TYPE_4__* %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %70

59:                                               ; preds = %46, %28
  %60 = load i32, i32* @DESC_EMPTY, align 4
  %61 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %7, align 8
  %62 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %59
  %66 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %67 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %18

70:                                               ; preds = %58, %18
  %71 = call i32 (...) @wmb()
  %72 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %73 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ag71xx_buffer_offset(%struct.ag71xx*) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @ag71xx_fill_rx_buf(%struct.ag71xx*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
