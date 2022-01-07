; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_ptm_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_ptm_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@g_net_dev = common dso_local global %struct.net_device** null, align 8
@.str = private unnamed_addr constant [24 x i8] c"ndev = %d (wrong value)\00", align 1
@MBOX_IGU1_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ptm_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptm_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.net_device**, %struct.net_device*** @g_net_dev, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.net_device** %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load %struct.net_device**, %struct.net_device*** @g_net_dev, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %10, i64 %12
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = icmp ne %struct.net_device* %14, %15
  br label %17

17:                                               ; preds = %9, %4
  %18 = phi i1 [ false, %4 ], [ %16, %9 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.net_device**, %struct.net_device*** @g_net_dev, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.net_device** %28)
  %30 = icmp slt i32 %27, %29
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @ASSERT(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 16
  %38 = shl i32 1, %37
  %39 = load i32, i32* @MBOX_IGU1_IER, align 4
  %40 = call i32 @IFX_REG_W32_MASK(i32 %38, i32 0, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @netif_wake_queue(%struct.net_device* %41)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.net_device**) #1

declare dso_local i32 @ASSERT(i32, i8*, i32) #1

declare dso_local i32 @IFX_REG_W32_MASK(i32, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
