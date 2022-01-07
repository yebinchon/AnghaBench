; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c_mt7620_handle_carrier.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c_mt7620_handle_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7620_handle_carrier(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  %3 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %4 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  %9 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %10 = call i64 @mt7620_has_carrier(%struct.fe_priv* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %14 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netif_carrier_on(i32 %15)
  br label %22

17:                                               ; preds = %8
  %18 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %19 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netif_carrier_off(i32 %20)
  br label %22

22:                                               ; preds = %7, %17, %12
  ret void
}

declare dso_local i64 @mt7620_has_carrier(%struct.fe_priv*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
