; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_read.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.mii_bus* }
%struct.mii_bus = type { i32, i32 (%struct.mii_bus*, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_read(%struct.ar8xxx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %10, i32 0, i32 0
  %12 = load %struct.mii_bus*, %struct.mii_bus** %11, align 8
  store %struct.mii_bus* %12, %struct.mii_bus** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @split_addr(i32 %13, i32* %6, i32* %7, i32* %8)
  %15 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %16 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %19 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %18, i32 0, i32 1
  %20 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %19, align 8
  %21 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 %20(%struct.mii_bus* %21, i32 24, i32 0, i32 %22)
  %24 = call i32 (...) @wait_for_page_switch()
  %25 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = or i32 16, %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ar8xxx_mii_read32(%struct.ar8xxx_priv* %25, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %31 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @split_addr(i32, i32*, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wait_for_page_switch(...) #1

declare dso_local i32 @ar8xxx_mii_read32(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
