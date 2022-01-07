; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8236_setup_port.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8236_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32*, i64*, i32, i64 }

@AR8216_OUT_ADD_VLAN = common dso_local global i32 0, align 4
@AR8216_OUT_STRIP_VLAN = common dso_local global i32 0, align 4
@AR8216_IN_SECURE = common dso_local global i32 0, align 4
@AR8216_OUT_KEEP = common dso_local global i32 0, align 4
@AR8216_IN_PORT_ONLY = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_LEARN = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_VLAN_MODE = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_SINGLE_VLAN = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_STATE = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_HEADER = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_LEARN_LOCK = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_VLAN_MODE_S = common dso_local global i32 0, align 4
@AR8216_PORT_STATE_FORWARD = common dso_local global i32 0, align 4
@AR8216_PORT_CTRL_STATE_S = common dso_local global i32 0, align 4
@AR8236_PORT_VLAN_DEFAULT_ID = common dso_local global i32 0, align 4
@AR8236_PORT_VLAN_DEFAULT_ID_S = common dso_local global i32 0, align 4
@AR8236_PORT_VLAN2_VLAN_MODE = common dso_local global i32 0, align 4
@AR8236_PORT_VLAN2_MEMBER = common dso_local global i32 0, align 4
@AR8236_PORT_VLAN2_VLAN_MODE_S = common dso_local global i32 0, align 4
@AR8236_PORT_VLAN2_MEMBER_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32, i32)* @ar8236_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8236_setup_port(%struct.ar8xxx_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  %15 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %19 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %17, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %28 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  %35 = load i32, i32* @AR8216_OUT_ADD_VLAN, align 4
  store i32 %35, i32* %7, align 4
  br label %38

36:                                               ; preds = %14
  %37 = load i32, i32* @AR8216_OUT_STRIP_VLAN, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* @AR8216_IN_SECURE, align 4
  store i32 %39, i32* %8, align 4
  br label %44

40:                                               ; preds = %3
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @AR8216_OUT_KEEP, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @AR8216_IN_PORT_ONLY, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %38
  %45 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @AR8216_REG_PORT_CTRL(i32 %46)
  %48 = load i32, i32* @AR8216_PORT_CTRL_LEARN, align 4
  %49 = load i32, i32* @AR8216_PORT_CTRL_VLAN_MODE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @AR8216_PORT_CTRL_SINGLE_VLAN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @AR8216_PORT_CTRL_STATE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @AR8216_PORT_CTRL_HEADER, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @AR8216_PORT_CTRL_LEARN_LOCK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @AR8216_PORT_CTRL_LEARN, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @AR8216_PORT_CTRL_VLAN_MODE_S, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %59, %62
  %64 = load i32, i32* @AR8216_PORT_STATE_FORWARD, align 4
  %65 = load i32, i32* @AR8216_PORT_CTRL_STATE_S, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %63, %66
  %68 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %45, i32 %47, i32 %58, i32 %67)
  %69 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @AR8236_REG_PORT_VLAN(i32 %70)
  %72 = load i32, i32* @AR8236_PORT_VLAN_DEFAULT_ID, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @AR8236_PORT_VLAN_DEFAULT_ID_S, align 4
  %75 = shl i32 %73, %74
  %76 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %69, i32 %71, i32 %72, i32 %75)
  %77 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @AR8236_REG_PORT_VLAN2(i32 %78)
  %80 = load i32, i32* @AR8236_PORT_VLAN2_VLAN_MODE, align 4
  %81 = load i32, i32* @AR8236_PORT_VLAN2_MEMBER, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @AR8236_PORT_VLAN2_VLAN_MODE_S, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @AR8236_PORT_VLAN2_MEMBER_S, align 4
  %88 = shl i32 %86, %87
  %89 = or i32 %85, %88
  %90 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %77, i32 %79, i32 %82, i32 %89)
  ret void
}

declare dso_local i32 @ar8xxx_rmw(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @AR8216_REG_PORT_CTRL(i32) #1

declare dso_local i32 @AR8236_REG_PORT_VLAN(i32) #1

declare dso_local i32 @AR8236_REG_PORT_VLAN2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
