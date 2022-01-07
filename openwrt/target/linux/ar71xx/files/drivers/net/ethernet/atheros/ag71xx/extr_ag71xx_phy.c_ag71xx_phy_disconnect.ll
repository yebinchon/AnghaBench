; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_disconnect.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i64 }
%struct.ag71xx_platform_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ag71xx_phy_disconnect(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_platform_data*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %4 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %5 = call %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx* %4)
  store %struct.ag71xx_platform_data* %5, %struct.ag71xx_platform_data** %3, align 8
  %6 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %3, align 8
  %7 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %12 = call i32 @ag71xx_ar7240_cleanup(%struct.ag71xx* %11)
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %15 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %20 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @phy_disconnect(i64 %21)
  br label %23

23:                                               ; preds = %18, %13
  br label %24

24:                                               ; preds = %23, %10
  ret void
}

declare dso_local %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_ar7240_cleanup(%struct.ag71xx*) #1

declare dso_local i32 @phy_disconnect(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
