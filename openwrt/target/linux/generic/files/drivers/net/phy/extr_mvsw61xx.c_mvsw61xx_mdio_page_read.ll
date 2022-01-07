; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_mdio_page_read.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_mdio_page_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }

@MII_MV_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, i32, i32)* @mvsw61xx_mdio_page_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsw61xx_mdio_page_read(%struct.switch_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MII_MV_PAGE, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @mvsw61xx_mdio_write(%struct.switch_dev* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mvsw61xx_mdio_read(%struct.switch_dev* %15, i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MII_MV_PAGE, align 4
  %22 = call i32 @mvsw61xx_mdio_write(%struct.switch_dev* %19, i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local i32 @mvsw61xx_mdio_write(%struct.switch_dev*, i32, i32, i32) #1

declare dso_local i32 @mvsw61xx_mdio_read(%struct.switch_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
