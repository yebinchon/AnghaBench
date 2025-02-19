; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_atu_flush_port.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_atu_flush_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8216_REG_ATU_FUNC0 = common dso_local global i32 0, align 4
@AR8216_ATU_ACTIVE = common dso_local global i32 0, align 4
@AR8216_ATU_PORT_NUM_S = common dso_local global i32 0, align 4
@AR8216_ATU_OP_FLUSH_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*, i32)* @ar8216_atu_flush_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8216_atu_flush_port(%struct.ar8xxx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %8 = load i32, i32* @AR8216_REG_ATU_FUNC0, align 4
  %9 = load i32, i32* @AR8216_ATU_ACTIVE, align 4
  %10 = call i32 @ar8216_wait_bit(%struct.ar8xxx_priv* %7, i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AR8216_ATU_PORT_NUM_S, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* @AR8216_ATU_OP_FLUSH_PORT, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @AR8216_ATU_ACTIVE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %23 = load i32, i32* @AR8216_REG_ATU_FUNC0, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %13, %2
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @ar8216_wait_bit(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
