; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7620.c_mtk_gsw_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7620.c_mtk_gsw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.fe_priv = type { %struct.TYPE_4__*, %struct.TYPE_5__*, %struct.device_node* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.mt7620_gsw* }
%struct.mt7620_gsw = type { i64 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@mediatek_gsw_match = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@gsw_interrupt_mt7620 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"gsw\00", align 1
@PORT_IRQ_ST_CHG = common dso_local global i32 0, align 4
@GSW_REG_IMR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_gsw_init(%struct.fe_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.mt7620_gsw*, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %3, align 8
  %7 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %8 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %7, i32 0, i32 2
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %10)
  store %struct.platform_device* %11, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = icmp ne %struct.platform_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mediatek_gsw_match, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_device_is_compatible(%struct.device_node* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %60

27:                                               ; preds = %17
  %28 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %29 = call %struct.mt7620_gsw* @platform_get_drvdata(%struct.platform_device* %28)
  store %struct.mt7620_gsw* %29, %struct.mt7620_gsw** %6, align 8
  %30 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %31 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %32 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.mt7620_gsw* %30, %struct.mt7620_gsw** %34, align 8
  %35 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %36 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %37 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mt7620_mdio_mode(i32 %40)
  %42 = call i32 @mt7620_hw_init(%struct.mt7620_gsw* %35, i32 %41)
  %43 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %44 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %27
  %48 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %49 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @gsw_interrupt_mt7620, align 4
  %52 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %53 = call i32 @request_irq(i64 %50, i32 %51, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.fe_priv* %52)
  %54 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %55 = load i32, i32* @PORT_IRQ_ST_CHG, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @GSW_REG_IMR, align 4
  %58 = call i32 @mtk_switch_w32(%struct.mt7620_gsw* %54, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %47, %27
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %24, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i32) #1

declare dso_local %struct.mt7620_gsw* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mt7620_hw_init(%struct.mt7620_gsw*, i32) #1

declare dso_local i32 @mt7620_mdio_mode(i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.fe_priv*) #1

declare dso_local i32 @mtk_switch_w32(%struct.mt7620_gsw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
