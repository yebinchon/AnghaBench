; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_get_port_stats.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_get_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_stats = type { i32, i32 }
%struct.ar7240sw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@AR7240_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_stats*)* @ar7240_get_port_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar7240_get_port_stats(%struct.switch_dev* %0, i32 %1, %struct.switch_port_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_stats*, align 8
  %8 = alloca %struct.ar7240sw*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_stats* %2, %struct.switch_port_stats** %7, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %10 = call %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev* %9)
  store %struct.ar7240sw* %10, %struct.ar7240sw** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AR7240_NUM_PORTS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.ar7240sw*, %struct.ar7240sw** %8, align 8
  %19 = call i32 @ar7240sw_capture_stats(%struct.ar7240sw* %18)
  %20 = load %struct.ar7240sw*, %struct.ar7240sw** %8, align 8
  %21 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %20, i32 0, i32 0
  %22 = call i32 @read_lock(i32* %21)
  %23 = load %struct.ar7240sw*, %struct.ar7240sw** %8, align 8
  %24 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.switch_port_stats*, %struct.switch_port_stats** %7, align 8
  %32 = getelementptr inbounds %struct.switch_port_stats, %struct.switch_port_stats* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ar7240sw*, %struct.ar7240sw** %8, align 8
  %34 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.switch_port_stats*, %struct.switch_port_stats** %7, align 8
  %42 = getelementptr inbounds %struct.switch_port_stats, %struct.switch_port_stats* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ar7240sw*, %struct.ar7240sw** %8, align 8
  %44 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %43, i32 0, i32 0
  %45 = call i32 @read_unlock(i32* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %17, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev*) #1

declare dso_local i32 @ar7240sw_capture_stats(%struct.ar7240sw*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
