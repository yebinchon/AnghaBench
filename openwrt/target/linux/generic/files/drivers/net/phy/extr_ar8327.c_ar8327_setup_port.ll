; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_setup_port.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32*, i64*, i32*, i64 }

@AR8327_PORT_VLAN1_OUT_MODE_UNMOD = common dso_local global i32 0, align 4
@AR8216_IN_SECURE = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH = common dso_local global i32 0, align 4
@AR8216_IN_PORT_ONLY = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN0_DEF_SVID_S = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN0_DEF_CVID_S = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN0_DEF_SPRI_S = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN0_DEF_CPRI_S = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_PORT_VLAN_PROP = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_OUT_MODE_S = common dso_local global i32 0, align 4
@AR8327_PORT_VLAN1_VLAN_PRI_PROP = common dso_local global i32 0, align 4
@AR8327_PORT_LOOKUP_LEARN = common dso_local global i32 0, align 4
@AR8327_PORT_LOOKUP_IN_MODE_S = common dso_local global i32 0, align 4
@AR8216_PORT_STATE_FORWARD = common dso_local global i32 0, align 4
@AR8327_PORT_LOOKUP_STATE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32, i32)* @ar8327_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_setup_port(%struct.ar8xxx_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %14, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @AR8327_PORT_VLAN1_OUT_MODE_UNMOD, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @AR8216_IN_SECURE, align 4
  store i32 %30, i32* %9, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @AR8216_IN_PORT_ONLY, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @AR8327_PORT_VLAN0_DEF_SVID_S, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @AR8327_PORT_VLAN0_DEF_CVID_S, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %44 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %34
  %48 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %49 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %47
  %57 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %58 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @AR8327_PORT_VLAN0_DEF_SPRI_S, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @AR8327_PORT_VLAN0_DEF_CPRI_S, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %56, %47, %34
  %75 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @AR8327_REG_PORT_VLAN0(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %75, i32 %77, i32 %78)
  %80 = load i32, i32* @AR8327_PORT_VLAN1_PORT_VLAN_PROP, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @AR8327_PORT_VLAN1_OUT_MODE_S, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %87 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %74
  %91 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %92 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i32, i32* @AR8327_PORT_VLAN1_VLAN_PRI_PROP, align 4
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %99, %90, %74
  %104 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @AR8327_REG_PORT_VLAN1(i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %104, i32 %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @AR8327_PORT_LOOKUP_LEARN, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @AR8327_PORT_LOOKUP_IN_MODE_S, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* @AR8216_PORT_STATE_FORWARD, align 4
  %119 = load i32, i32* @AR8327_PORT_LOOKUP_STATE_S, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %7, align 4
  %123 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @AR8327_REG_PORT_LOOKUP(i32 %124)
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %123, i32 %125, i32 %126)
  ret void
}

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @AR8327_REG_PORT_VLAN0(i32) #1

declare dso_local i32 @AR8327_REG_PORT_VLAN1(i32) #1

declare dso_local i32 @AR8327_REG_PORT_LOOKUP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
