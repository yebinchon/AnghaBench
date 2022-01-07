; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_phy_poll_reset.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_phy_poll_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@AR7240_NUM_PHYS = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*)* @ar7240sw_phy_poll_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar7240sw_phy_poll_reset(%struct.mii_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %3, align 8
  store i32 20, i32* %4, align 4
  store i32 20, i32* %6, align 4
  br label %8

8:                                                ; preds = %44, %1
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 600
  br i1 %10, label %11, label %47

11:                                               ; preds = %8
  %12 = call i32 @msleep(i32 20)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %40, %11
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @AR7240_NUM_PHYS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MII_BMCR, align 4
  %21 = call i32 @ar7240sw_phy_read(%struct.mii_bus* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %50

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BMCR_RESET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %43

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AR7240_NUM_PHYS, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @usleep_range(i32 1000, i32 2000)
  store i32 0, i32* %2, align 4
  br label %50

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %13

43:                                               ; preds = %31, %13
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 20
  store i32 %46, i32* %6, align 4
  br label %8

47:                                               ; preds = %8
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %37, %24
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ar7240sw_phy_read(%struct.mii_bus*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
