; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_phy_disconnect.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_fe_phy_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i64* }
%struct.TYPE_4__ = type { i64*, i32, i64* }
%struct.TYPE_3__ = type { i32 (%struct.fe_priv*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fe_priv*)* @fe_phy_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_phy_disconnect(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %98, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %101

8:                                                ; preds = %5
  %9 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %10 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %8
  %20 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %21 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %27 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %26, i32 0, i32 3
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  %32 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %33 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.fe_priv*, i32)*, i32 (%struct.fe_priv*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.fe_priv*, i32)* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %19
  %39 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %40 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.fe_priv*, i32)*, i32 (%struct.fe_priv*, i32)** %42, align 8
  %44 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 %43(%struct.fe_priv* %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %19
  %48 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %49 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %97

54:                                               ; preds = %8
  %55 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %56 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %54
  %66 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %67 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @phy_disconnect(i64 %74)
  br label %96

76:                                               ; preds = %54
  %77 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %78 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %83 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i64 @mdiobus_get_phy(i64 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %90 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @mdiobus_get_phy(i64 %91, i32 %92)
  %94 = call i32 @phy_detach(i64 %93)
  br label %95

95:                                               ; preds = %88, %81, %76
  br label %96

96:                                               ; preds = %95, %65
  br label %97

97:                                               ; preds = %96, %47
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %5

101:                                              ; preds = %5
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i64 @mdiobus_get_phy(i64, i32) #1

declare dso_local i32 @phy_detach(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
