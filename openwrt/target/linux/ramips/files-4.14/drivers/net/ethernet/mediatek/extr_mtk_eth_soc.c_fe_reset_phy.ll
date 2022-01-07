; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_reset_phy.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_reset_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"phy-reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error acquiring reset gpio pins: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"phy-reset-duration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fe_priv*)* @fe_reset_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_reset_phy(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_desc*, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  store i32 30, i32* %4, align 4
  %6 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %7 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %10 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.TYPE_3__* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9)
  store %struct.gpio_desc* %10, %struct.gpio_desc** %5, align 8
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %12 = icmp ne %struct.gpio_desc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %54

14:                                               ; preds = %1
  %15 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %16 = call i64 @IS_ERR(%struct.gpio_desc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %20 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %23 = call i32 @PTR_ERR(%struct.gpio_desc* %22)
  %24 = call i32 @dev_err(%struct.TYPE_3__* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %54

25:                                               ; preds = %14
  %26 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %27 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @of_property_read_u32(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 1000
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 30, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %34, %25
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 20
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @msleep(i32 %42)
  br label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 %45, 1000
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 %47, 1000
  %49 = add nsw i32 %48, 1000
  %50 = call i32 @usleep_range(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %44, %41
  %52 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %53 = call i32 @gpiod_set_value(%struct.gpio_desc* %52, i32 0)
  br label %54

54:                                               ; preds = %51, %18, %13
  ret void
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpiod_set_value(%struct.gpio_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
