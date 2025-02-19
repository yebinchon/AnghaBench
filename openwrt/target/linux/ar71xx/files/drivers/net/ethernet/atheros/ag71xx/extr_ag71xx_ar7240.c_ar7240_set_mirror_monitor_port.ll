; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_set_mirror_monitor_port.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_set_mirror_monitor_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ar7240sw = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR7240_REG_CPU_PORT = common dso_local global i32 0, align 4
@AR7240_MIRROR_PORT_M = common dso_local global i32 0, align 4
@AR7240_MIRROR_PORT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @ar7240_set_mirror_monitor_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar7240_set_mirror_monitor_port(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.ar7240sw*, align 8
  %9 = alloca %struct.mii_bus*, align 8
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %12 = call %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev* %11)
  store %struct.ar7240sw* %12, %struct.ar7240sw** %8, align 8
  %13 = load %struct.ar7240sw*, %struct.ar7240sw** %8, align 8
  %14 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %13, i32 0, i32 0
  %15 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  store %struct.mii_bus* %15, %struct.mii_bus** %9, align 8
  %16 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %17 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sgt i32 %20, 15
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %3
  %26 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %27 = load i32, i32* @AR7240_REG_CPU_PORT, align 4
  %28 = load i32, i32* @AR7240_MIRROR_PORT_M, align 4
  %29 = load i32, i32* @AR7240_MIRROR_PORT_S, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @AR7240_MIRROR_PORT_S, align 4
  %33 = shl i32 %31, %32
  %34 = call i32 @ar7240sw_reg_rmw(%struct.mii_bus* %26, i32 %27, i32 %30, i32 %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %25, %22
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev*) #1

declare dso_local i32 @ar7240sw_reg_rmw(%struct.mii_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
