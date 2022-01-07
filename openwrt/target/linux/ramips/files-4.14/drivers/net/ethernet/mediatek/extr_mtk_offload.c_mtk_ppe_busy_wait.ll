; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_ppe_busy_wait.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_ppe_busy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@MTK_REG_PPE_GLO_CFG = common dso_local global i32 0, align 4
@MTK_PPE_GLO_CFG_BUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"ppe: table busy timeout - resetting\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*)* @mtk_ppe_busy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ppe_busy_wait(%struct.mtk_eth* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %1, %24
  %8 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %9 = load i32, i32* @MTK_REG_PPE_GLO_CFG, align 4
  %10 = call i32 @mtk_r32(%struct.mtk_eth* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MTK_PPE_GLO_CFG_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %37

16:                                               ; preds = %7
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @HZ, align 8
  %20 = add i64 %18, %19
  %21 = call i64 @time_after(i64 %17, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %26

24:                                               ; preds = %16
  %25 = call i32 @usleep_range(i32 10, i32 20)
  br label %7

26:                                               ; preds = %23
  %27 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %32 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @reset_control_reset(i32 %33)
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %26, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @mtk_r32(%struct.mtk_eth*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @reset_control_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
