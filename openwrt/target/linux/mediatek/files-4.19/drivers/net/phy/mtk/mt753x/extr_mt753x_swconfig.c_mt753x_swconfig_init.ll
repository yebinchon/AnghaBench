; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_swconfig.c_mt753x_swconfig_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_swconfig.c_mt753x_swconfig_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { %struct.TYPE_2__*, i32, i32, %struct.switch_dev }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.switch_dev = type { i32, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"mediatek,cpuport\00", align 1
@MT753X_DFL_CPU_PORT = common dso_local global i32 0, align 4
@MT753X_NUM_PORTS = common dso_local global i32 0, align 4
@MT753X_NUM_VLANS = common dso_local global i32 0, align 4
@mt753x_swdev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to register switch %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt753x_swconfig_init(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsw_mt753x*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %3, align 8
  %7 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %8 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %14 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %13, i32 0, i32 1
  %15 = call i64 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @MT753X_DFL_CPU_PORT, align 4
  %19 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %20 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %23 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %22, i32 0, i32 3
  store %struct.switch_dev* %23, %struct.switch_dev** %5, align 8
  %24 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %25 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %28 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %30 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %33 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %35 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %38 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @MT753X_NUM_PORTS, align 4
  %40 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %41 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @MT753X_NUM_VLANS, align 4
  %43 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %44 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %46 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %45, i32 0, i32 1
  store i32* @mt753x_swdev_ops, i32** %46, align 8
  %47 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %48 = call i32 @register_switch(%struct.switch_dev* %47, i32* null)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %21
  %52 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %53 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %56 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_notice(%struct.TYPE_2__* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %63

60:                                               ; preds = %21
  %61 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %62 = call i32 @mt753x_apply_config(%struct.switch_dev* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %51
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @register_switch(%struct.switch_dev*, i32*) #1

declare dso_local i32 @dev_notice(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @mt753x_apply_config(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
