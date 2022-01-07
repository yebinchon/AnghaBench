; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_read_port_link.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_read_port_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 (i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ar8xxx_priv*, i32)*, i32 (%struct.ar8xxx_priv*, i32)* }
%struct.switch_port_link = type { i32, i32, i32, i32, i32, i32, i32 }

@AR8216_PORT_STATUS_LINK_AUTO = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_LINK_UP = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_DUPLEX = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_TXFLOW = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_RXFLOW = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_SPEED = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_SPEED_S = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_10 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_100 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_1000 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32, %struct.switch_port_link*)* @ar8216_read_port_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8216_read_port_link(%struct.ar8xxx_priv* %0, i32 %1, %struct.switch_port_link* %2) #0 {
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switch_port_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.switch_port_link* %2, %struct.switch_port_link** %6, align 8
  %10 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %11 = call i32 @memset(%struct.switch_port_link* %10, i8 signext 0, i32 28)
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ar8xxx_priv*, i32)*, i32 (%struct.ar8xxx_priv*, i32)** %15, align 8
  %17 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 %16(%struct.ar8xxx_priv* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @AR8216_PORT_STATUS_LINK_AUTO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %28 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %30 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @AR8216_PORT_STATUS_LINK_UP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %42 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %68

43:                                               ; preds = %3
  %44 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %45 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %47 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %46, i32 0, i32 0
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = icmp ne i32 (i32)* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %52 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %51, i32 0, i32 0
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 %53(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %65 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %50
  br label %67

67:                                               ; preds = %66, %43
  br label %68

68:                                               ; preds = %67, %33
  %69 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %70 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %152

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @AR8216_PORT_STATUS_DUPLEX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %83 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @AR8216_PORT_STATUS_TXFLOW, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %92 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @AR8216_PORT_STATUS_RXFLOW, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %101 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %103 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %74
  %107 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %108 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  %112 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %113 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32 (%struct.ar8xxx_priv*, i32)*, i32 (%struct.ar8xxx_priv*, i32)** %115, align 8
  %117 = icmp ne i32 (%struct.ar8xxx_priv*, i32)* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %111
  %119 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %120 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32 (%struct.ar8xxx_priv*, i32)*, i32 (%struct.ar8xxx_priv*, i32)** %122, align 8
  %124 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 %123(%struct.ar8xxx_priv* %124, i32 %125)
  %127 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %128 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %118, %111, %106, %74
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @AR8216_PORT_STATUS_SPEED, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @AR8216_PORT_STATUS_SPEED_S, align 4
  %134 = ashr i32 %132, %133
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  switch i32 %135, label %148 [
    i32 128, label %136
    i32 129, label %140
    i32 130, label %144
  ]

136:                                              ; preds = %129
  %137 = load i32, i32* @SWITCH_PORT_SPEED_10, align 4
  %138 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %139 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  br label %152

140:                                              ; preds = %129
  %141 = load i32, i32* @SWITCH_PORT_SPEED_100, align 4
  %142 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %143 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  br label %152

144:                                              ; preds = %129
  %145 = load i32, i32* @SWITCH_PORT_SPEED_1000, align 4
  %146 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %147 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  br label %152

148:                                              ; preds = %129
  %149 = load i32, i32* @SWITCH_PORT_SPEED_UNKNOWN, align 4
  %150 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %151 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %73, %148, %144, %140, %136
  ret void
}

declare dso_local i32 @memset(%struct.switch_port_link*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
