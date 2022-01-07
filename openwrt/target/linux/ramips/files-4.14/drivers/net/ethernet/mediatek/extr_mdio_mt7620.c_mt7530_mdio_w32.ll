; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c_mt7530_mdio_w32.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c_mt7530_mdio_w32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7620_gsw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7530_mdio_w32(%struct.mt7620_gsw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7620_gsw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7620_gsw* %0, %struct.mt7620_gsw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = ashr i32 %8, 6
  %10 = and i32 %9, 1023
  %11 = call i32 @_mt7620_mii_write(%struct.mt7620_gsw* %7, i32 31, i32 31, i32 %10)
  %12 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 2
  %15 = and i32 %14, 15
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 65535
  %18 = call i32 @_mt7620_mii_write(%struct.mt7620_gsw* %12, i32 31, i32 %15, i32 %17)
  %19 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 16
  %22 = call i32 @_mt7620_mii_write(%struct.mt7620_gsw* %19, i32 31, i32 16, i32 %21)
  ret void
}

declare dso_local i32 @_mt7620_mii_write(%struct.mt7620_gsw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
