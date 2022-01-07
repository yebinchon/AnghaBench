; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_set_gpio_pinmux.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_set_gpio_pinmux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@gpio_int_pins = common dso_local global i32* null, align 8
@gpio_int_funcs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"mediatek,mdio_master_pinmux\00", align 1
@gpio_mdc_pins = common dso_local global i32* null, align 8
@gpio_mdc_funcs = common dso_local global i32* null, align 8
@gpio_mdio_pins = common dso_local global i32* null, align 8
@gpio_mdio_funcs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*)* @mt7531_set_gpio_pinmux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7531_set_gpio_pinmux(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %6 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %11 = load i32*, i32** @gpio_int_pins, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @gpio_int_funcs, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pinmux_set_mux_7531(%struct.gsw_mt753x* %10, i32 %13, i32 %16)
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %3)
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp sle i32 %23, 2
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %3, align 4
  %28 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %29 = load i32*, i32** @gpio_mdc_pins, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @gpio_mdc_funcs, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pinmux_set_mux_7531(%struct.gsw_mt753x* %28, i32 %33, i32 %38)
  %40 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %41 = load i32*, i32** @gpio_mdio_pins, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** @gpio_mdio_funcs, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pinmux_set_mux_7531(%struct.gsw_mt753x* %40, i32 %45, i32 %50)
  br label %52

52:                                               ; preds = %25, %22, %1
  ret i32 0
}

declare dso_local i32 @pinmux_set_mux_7531(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
