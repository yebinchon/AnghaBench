; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_phy_connect.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32, i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8**, i64* }
%struct.phy_device = type { i64 }

@FE_PHY_FLAG_PORT = common dso_local global i32 0, align 4
@FE_PHY_FLAG_ATTACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fe_priv*)* @fe_phy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_phy_connect(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %82, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %85

8:                                                ; preds = %5
  %9 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %10 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %8
  %20 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %21 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %26 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %35 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @FE_PHY_FLAG_PORT, align 4
  %37 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %38 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %24, %19
  br label %81

40:                                               ; preds = %8
  %41 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %42 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %40
  %46 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %47 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i8* @mdiobus_get_phy(i64 %48, i32 %49)
  %51 = bitcast i8* %50 to %struct.phy_device*
  store %struct.phy_device* %51, %struct.phy_device** %4, align 8
  %52 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %53 = icmp ne %struct.phy_device* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %45
  br label %82

60:                                               ; preds = %54
  %61 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %62 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %63 = call i32 @phy_init(%struct.fe_priv* %61, %struct.phy_device* %62)
  %64 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %65 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %79, label %68

68:                                               ; preds = %60
  %69 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %70 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = call i8* @mdiobus_get_phy(i64 %71, i32 %72)
  %74 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %75 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @FE_PHY_FLAG_ATTACH, align 4
  %77 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %78 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %68, %60
  br label %80

80:                                               ; preds = %79, %40
  br label %81

81:                                               ; preds = %80, %39
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %5

85:                                               ; preds = %5
  ret i32 0
}

declare dso_local i8* @mdiobus_get_phy(i64, i32) #1

declare dso_local i32 @phy_init(%struct.fe_priv*, %struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
