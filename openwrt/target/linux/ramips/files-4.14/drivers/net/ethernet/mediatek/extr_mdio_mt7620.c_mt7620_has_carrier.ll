; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c_mt7620_has_carrier.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c_mt7620_has_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mt7620_gsw = type { i32 }

@GSW_PORT6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7620_has_carrier(%struct.fe_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca %struct.mt7620_gsw*, align 8
  %5 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %3, align 8
  %6 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %7 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.mt7620_gsw*
  store %struct.mt7620_gsw* %11, %struct.mt7620_gsw** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GSW_PORT6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @GSW_REG_PORT_STATUS(i32 %18)
  %20 = call i32 @mtk_switch_r32(%struct.mt7620_gsw* %17, i32 %19)
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %29

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %12

28:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @mtk_switch_r32(%struct.mt7620_gsw*, i32) #1

declare dso_local i32 @GSW_REG_PORT_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
