; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_connect_phy_node.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_connect_phy_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i64*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.phy_device**, i32** }
%struct.phy_device = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: invalid phy id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"incorrect phy-mode %d\0A\00", align 1
@fe_phy_link_adjust = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"could not connect to PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PHY_GBIT_FEATURES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"connected port %d to PHY at %s [uid=%08x, driver=%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fe_connect_phy_node(%struct.fe_priv* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fe_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.phy_device*, align 8
  %10 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = call i32* @of_get_property(%struct.device_node* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  %19 = icmp sge i32 %18, 32
  br i1 %19, label %20, label %27

20:                                               ; preds = %15, %3
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = getelementptr inbounds %struct.device_node, %struct.device_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %118

27:                                               ; preds = %15
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = call i32 @of_get_phy_mode(%struct.device_node* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %34 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %39 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %118

48:                                               ; preds = %27
  %49 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %50 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.device_node*, %struct.device_node** %6, align 8
  %53 = load i32, i32* @fe_phy_link_adjust, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call %struct.phy_device* @of_phy_connect(i32 %51, %struct.device_node* %52, i32 %53, i32 0, i32 %54)
  store %struct.phy_device* %55, %struct.phy_device** %9, align 8
  %56 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %57 = icmp ne %struct.phy_device* %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %48
  %59 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %60 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %64 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  store i32* null, i32** %70, align 8
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %118

73:                                               ; preds = %48
  %74 = load i32, i32* @PHY_GBIT_FEATURES, align 4
  %75 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %76 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %80 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %83 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %87 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %91 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @dev_name(i32* %92)
  %94 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %95 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %98 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_info(i32 %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %93, i32 %96, i32 %101)
  %103 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %104 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %105 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.phy_device**, %struct.phy_device*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %108, i64 %110
  store %struct.phy_device* %103, %struct.phy_device** %111, align 8
  %112 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %113 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 0, i64* %117, align 8
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %73, %58, %32, %20
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.phy_device* @of_phy_connect(i32, %struct.device_node*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
