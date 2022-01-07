; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_stop.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, i64, i64 }
%struct.ag71xx_platform_data = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ag71xx_phy_stop(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_platform_data*, align 8
  %4 = alloca i64, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %6 = call %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx* %5)
  store %struct.ag71xx_platform_data* %6, %struct.ag71xx_platform_data** %3, align 8
  %7 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %8 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %13 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @phy_stop(i64 %14)
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %3, align 8
  %18 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %3, align 8
  %23 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %28 = call i32 @ag71xx_ar7240_stop(%struct.ag71xx* %27)
  br label %29

29:                                               ; preds = %26, %21, %16
  br label %30

30:                                               ; preds = %29, %11
  %31 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %32 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %36 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %41 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %43 = call i32 @ag71xx_link_adjust(%struct.ag71xx* %42)
  br label %44

44:                                               ; preds = %39, %30
  %45 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %46 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %45, i32 0, i32 0
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @ag71xx_ar7240_stop(%struct.ag71xx*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ag71xx_link_adjust(%struct.ag71xx*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
