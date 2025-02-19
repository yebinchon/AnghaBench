; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_hw_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8216_REG_CTRL = common dso_local global i32 0, align 4
@AR8216_CTRL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*)* @ar8216_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8216_hw_init(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar8xxx_priv*, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  %4 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %5 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %11 = load i32, i32* @AR8216_REG_CTRL, align 4
  %12 = load i32, i32* @AR8216_CTRL_RESET, align 4
  %13 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %10, i32 %11, i32 %12)
  %14 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %15 = load i32, i32* @AR8216_REG_CTRL, align 4
  %16 = load i32, i32* @AR8216_CTRL_RESET, align 4
  %17 = call i32 @ar8xxx_reg_wait(%struct.ar8xxx_priv* %14, i32 %15, i32 %16, i32 0, i32 1000)
  %18 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %19 = call i32 @ar8xxx_phy_init(%struct.ar8xxx_priv* %18)
  %20 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %9, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @ar8xxx_reg_wait(%struct.ar8xxx_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @ar8xxx_phy_init(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
