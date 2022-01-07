; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c___ar8216_init_port.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c___ar8216_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8216_PORT_CTRL_LEARN = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_STATE_S = common dso_local global i32 0, align 4
@AR8216_PORT_CPU = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_LINK_UP = common dso_local global i32 0, align 4
@AR8216_PORT_SPEED_1000M = common dso_local global i32 0, align 4
@AR8216_PORT_SPEED_100M = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_TXMAC = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_RXMAC = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_RXFLOW = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_TXFLOW = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_DUPLEX = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_LINK_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32, i32, i32)* @__ar8216_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ar8216_init_port(%struct.ar8xxx_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ar8xxx_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @AR8216_REG_PORT_CTRL(i32 %10)
  %12 = load i32, i32* @AR8216_PORT_CTRL_LEARN, align 4
  %13 = load i32, i32* @AR8216_PORT_CTRL_STATE_S, align 4
  %14 = shl i32 4, %13
  %15 = or i32 %12, %14
  %16 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %9, i32 %11, i32 %15)
  %17 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @AR8216_REG_PORT_VLAN(i32 %18)
  %20 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %17, i32 %19, i32 0)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @AR8216_PORT_CPU, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %4
  %25 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @AR8216_REG_PORT_STATUS(i32 %26)
  %28 = load i32, i32* @AR8216_PORT_STATUS_LINK_UP, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @AR8216_PORT_SPEED_1000M, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @AR8216_PORT_SPEED_100M, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = or i32 %28, %36
  %38 = load i32, i32* @AR8216_PORT_STATUS_TXMAC, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @AR8216_PORT_STATUS_RXMAC, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @AR8216_PORT_STATUS_RXFLOW, align 4
  br label %47

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = or i32 %41, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @AR8216_PORT_STATUS_TXFLOW, align 4
  br label %55

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = or i32 %49, %56
  %58 = load i32, i32* @AR8216_PORT_STATUS_DUPLEX, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %25, i32 %27, i32 %59)
  br label %67

61:                                               ; preds = %4
  %62 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @AR8216_REG_PORT_STATUS(i32 %63)
  %65 = load i32, i32* @AR8216_PORT_STATUS_LINK_AUTO, align 4
  %66 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %62, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %55
  ret void
}

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @AR8216_REG_PORT_CTRL(i32) #1

declare dso_local i32 @AR8216_REG_PORT_VLAN(i32) #1

declare dso_local i32 @AR8216_REG_PORT_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
