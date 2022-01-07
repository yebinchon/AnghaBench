; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c___ar8216_setup_port.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c___ar8216_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32*, i64*, i32, i64 }

@AR8216_OUT_ADD_VLAN = common dso_local global i32 0, align 4
@AR8216_OUT_STRIP_VLAN = common dso_local global i32 0, align 4
@AR8216_IN_SECURE = common dso_local global i32 0, align 4
@AR8216_OUT_KEEP = common dso_local global i32 0, align 4
@AR8216_IN_PORT_ONLY = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_HEADER = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_LEARN = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_VLAN_MODE = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_SINGLE_VLAN = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_STATE = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_LEARN_LOCK = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_VLAN_MODE_S = common dso_local global i32 0, align 4
@AR8216_PORT_STATE_FORWARD = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_STATE_S = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_DEST_PORTS = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_MODE = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_DEFAULT_ID = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_DEST_PORTS_S = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_MODE_S = common dso_local global i32 0, align 4
@AR8216_PORT_VLAN_DEFAULT_ID_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32, i32, i32)* @__ar8216_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ar8216_setup_port(%struct.ar8xxx_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ar8xxx_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %4
  %18 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %20, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  %38 = load i32, i32* @AR8216_OUT_ADD_VLAN, align 4
  store i32 %38, i32* %10, align 4
  br label %41

39:                                               ; preds = %17
  %40 = load i32, i32* @AR8216_OUT_STRIP_VLAN, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* @AR8216_IN_SECURE, align 4
  store i32 %42, i32* %11, align 4
  br label %47

43:                                               ; preds = %4
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @AR8216_OUT_KEEP, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @AR8216_IN_PORT_ONLY, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @AR8216_PORT_CTRL_HEADER, align 4
  br label %53

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  store i32 %54, i32* %9, align 4
  %55 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @AR8216_REG_PORT_CTRL(i32 %56)
  %58 = load i32, i32* @AR8216_PORT_CTRL_LEARN, align 4
  %59 = load i32, i32* @AR8216_PORT_CTRL_VLAN_MODE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @AR8216_PORT_CTRL_SINGLE_VLAN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @AR8216_PORT_CTRL_STATE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @AR8216_PORT_CTRL_HEADER, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @AR8216_PORT_CTRL_LEARN_LOCK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @AR8216_PORT_CTRL_LEARN, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @AR8216_PORT_CTRL_VLAN_MODE_S, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %71, %74
  %76 = load i32, i32* @AR8216_PORT_STATE_FORWARD, align 4
  %77 = load i32, i32* @AR8216_PORT_CTRL_STATE_S, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %75, %78
  %80 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %55, i32 %57, i32 %68, i32 %79)
  %81 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @AR8216_REG_PORT_VLAN(i32 %82)
  %84 = load i32, i32* @AR8216_PORT_VLAN_DEST_PORTS, align 4
  %85 = load i32, i32* @AR8216_PORT_VLAN_MODE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @AR8216_PORT_VLAN_DEFAULT_ID, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @AR8216_PORT_VLAN_DEST_PORTS_S, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @AR8216_PORT_VLAN_MODE_S, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %91, %94
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @AR8216_PORT_VLAN_DEFAULT_ID_S, align 4
  %98 = shl i32 %96, %97
  %99 = or i32 %95, %98
  %100 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %81, i32 %83, i32 %88, i32 %99)
  ret void
}

declare dso_local i32 @ar8xxx_rmw(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @AR8216_REG_PORT_CTRL(i32) #1

declare dso_local i32 @AR8216_REG_PORT_VLAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
