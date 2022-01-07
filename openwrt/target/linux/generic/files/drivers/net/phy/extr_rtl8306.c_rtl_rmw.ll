; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_rmw.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.rtl_priv = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, i32, i32, i32, i32)* @rtl_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_rmw(%struct.switch_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.switch_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtl_priv*, align 8
  %14 = alloca %struct.mii_bus*, align 8
  %15 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %17 = call %struct.rtl_priv* @to_rtl(%struct.switch_dev* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %13, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 0
  %20 = load %struct.mii_bus*, %struct.mii_bus** %19, align 8
  store %struct.mii_bus* %20, %struct.mii_bus** %14, align 8
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @rtl_set_page(%struct.rtl_priv* %21, i32 %22)
  %24 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  %25 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %24, i32 0, i32 0
  %26 = load i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)** %25, align 8
  %27 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 %26(%struct.mii_bus* %27, i32 %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %11, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %15, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %15, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %15, align 4
  %38 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  %39 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %38, i32 0, i32 1
  %40 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %39, align 8
  %41 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 %40(%struct.mii_bus* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  %47 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %46, i32 0, i32 0
  %48 = load i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)** %47, align 8
  %49 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 %48(%struct.mii_bus* %49, i32 %50, i32 %51)
  ret i32 %52
}

declare dso_local %struct.rtl_priv* @to_rtl(%struct.switch_dev*) #1

declare dso_local i32 @rtl_set_page(%struct.rtl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
