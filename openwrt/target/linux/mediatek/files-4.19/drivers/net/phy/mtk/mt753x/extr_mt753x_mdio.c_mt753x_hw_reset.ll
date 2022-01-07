; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_hw_reset.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.reset_control = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mediatek,mcm\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mcm\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Missing reset ctrl of switch\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Missing reset pin of switch\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"mt753x-reset\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to request gpio %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*)* @mt753x_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt753x_hw_reset(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsw_mt753x*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.reset_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %3, align 8
  %8 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %9 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call i32 @of_property_read_bool(%struct.device_node* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %1
  %20 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %21 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = call %struct.reset_control* @devm_reset_control_get(%struct.TYPE_5__* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.reset_control* %23, %struct.reset_control** %5, align 8
  %24 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %25 = call i32 @IS_ERR(%struct.reset_control* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %27 = call i32 @IS_ERR(%struct.reset_control* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %31 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @dev_err(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %88

35:                                               ; preds = %19
  %36 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %37 = call i32 @reset_control_assert(%struct.reset_control* %36)
  %38 = call i32 @msleep(i32 30)
  %39 = load %struct.reset_control*, %struct.reset_control** %5, align 8
  %40 = call i32 @reset_control_deassert(%struct.reset_control* %39)
  %41 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %42 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  store i32 0, i32* %2, align 4
  br label %88

43:                                               ; preds = %1
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i32 @of_get_named_gpio(%struct.device_node* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %46 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %47 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %49 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %54 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @dev_err(%struct.TYPE_5__* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %88

58:                                               ; preds = %43
  %59 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %60 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %63 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @devm_gpio_request(%struct.TYPE_5__* %61, i32 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %58
  %69 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %70 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %73 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_info(%struct.TYPE_5__* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %88

77:                                               ; preds = %58
  %78 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %79 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @gpio_direction_output(i32 %80, i32 0)
  %82 = call i32 @msleep(i32 30)
  %83 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %84 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @gpio_set_value(i32 %85, i32 1)
  %87 = call i32 @msleep(i32 500)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %77, %68, %52, %35, %29
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @devm_gpio_request(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
