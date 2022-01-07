; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_setup_port.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar7240sw = type { i32*, i64*, i32, i64, %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@AR7240_PORT_CTRL_STATE_FORWARD = common dso_local global i32 0, align 4
@AR7240_PORT_CTRL_LEARN = common dso_local global i32 0, align 4
@AR7240_PORT_CTRL_SINGLE_VLAN = common dso_local global i32 0, align 4
@AR7240_PORT_CPU = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_TXFLOW = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_RXFLOW = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_TXMAC = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_RXMAC = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_DUPLEX = common dso_local global i32 0, align 4
@AR7240_PORT_STATUS_LINK_AUTO = common dso_local global i32 0, align 4
@AR7240_PORT_VLAN_MODE_SECURE = common dso_local global i32 0, align 4
@AR7240_PORT_VLAN_MODE_PORT_ONLY = common dso_local global i32 0, align 4
@AR7240_PORT_CTRL_VLAN_MODE_ADD = common dso_local global i32 0, align 4
@AR7240_PORT_CTRL_VLAN_MODE_S = common dso_local global i32 0, align 4
@AR7240_PORT_CTRL_VLAN_MODE_STRIP = common dso_local global i32 0, align 4
@AR7240_PORT_CTRL_VLAN_MODE_KEEP = common dso_local global i32 0, align 4
@AR7240_PORT_CTRL_MIRROR_RX = common dso_local global i32 0, align 4
@AR7240_PORT_CTRL_MIRROR_TX = common dso_local global i32 0, align 4
@AR934X_PORT_VLAN1_DEFAULT_CVID_S = common dso_local global i32 0, align 4
@AR934X_PORT_VLAN2_PORT_VID_MEM_S = common dso_local global i32 0, align 4
@AR934X_PORT_VLAN2_8021Q_MODE_S = common dso_local global i32 0, align 4
@AR7240_PORT_VLAN_MODE_S = common dso_local global i32 0, align 4
@AR7240_PORT_VLAN_DEST_PORTS_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar7240sw*, i32, i32)* @ar7240sw_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar7240sw_setup_port(%struct.ar7240sw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar7240sw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ar7240sw* %0, %struct.ar7240sw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ar7240sw*, %struct.ar7240sw** %4, align 8
  %15 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %14, i32 0, i32 4
  %16 = load %struct.mii_bus*, %struct.mii_bus** %15, align 8
  store %struct.mii_bus* %16, %struct.mii_bus** %7, align 8
  %17 = load i32, i32* @AR7240_PORT_CTRL_STATE_FORWARD, align 4
  %18 = load i32, i32* @AR7240_PORT_CTRL_LEARN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @AR7240_PORT_CTRL_SINGLE_VLAN, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @AR7240_PORT_CPU, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %3
  %26 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @AR7240_REG_PORT_STATUS(i32 %27)
  %29 = load i32, i32* @AR7240_PORT_STATUS_SPEED_1000, align 4
  %30 = load i32, i32* @AR7240_PORT_STATUS_TXFLOW, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @AR7240_PORT_STATUS_RXFLOW, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @AR7240_PORT_STATUS_TXMAC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @AR7240_PORT_STATUS_RXMAC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AR7240_PORT_STATUS_DUPLEX, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %26, i32 %28, i32 %39)
  br label %47

41:                                               ; preds = %3
  %42 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @AR7240_REG_PORT_STATUS(i32 %43)
  %45 = load i32, i32* @AR7240_PORT_STATUS_LINK_AUTO, align 4
  %46 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %42, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %25
  %48 = load %struct.ar7240sw*, %struct.ar7240sw** %4, align 8
  %49 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.ar7240sw*, %struct.ar7240sw** %4, align 8
  %54 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.ar7240sw*, %struct.ar7240sw** %4, align 8
  %57 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %55, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @AR7240_PORT_VLAN_MODE_SECURE, align 4
  store i32 %65, i32* %10, align 4
  br label %69

66:                                               ; preds = %47
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @AR7240_PORT_VLAN_MODE_PORT_ONLY, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %52
  %70 = load %struct.ar7240sw*, %struct.ar7240sw** %4, align 8
  %71 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = load %struct.ar7240sw*, %struct.ar7240sw** %4, align 8
  %76 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32, i32* @AR7240_PORT_CTRL_VLAN_MODE_ADD, align 4
  %84 = load i32, i32* @AR7240_PORT_CTRL_VLAN_MODE_S, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %94

88:                                               ; preds = %74
  %89 = load i32, i32* @AR7240_PORT_CTRL_VLAN_MODE_STRIP, align 4
  %90 = load i32, i32* @AR7240_PORT_CTRL_VLAN_MODE_S, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %88, %82
  br label %101

95:                                               ; preds = %69
  %96 = load i32, i32* @AR7240_PORT_CTRL_VLAN_MODE_KEEP, align 4
  %97 = load i32, i32* @AR7240_PORT_CTRL_VLAN_MODE_S, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %95, %94
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @AR7240_PORT_CPU, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.ar7240sw*, %struct.ar7240sw** %4, align 8
  %110 = load i32, i32* @AR7240_PORT_CPU, align 4
  %111 = call i32 @ar7240sw_port_mask_but(%struct.ar7240sw* %109, i32 %110)
  store i32 %111, i32* %6, align 4
  br label %116

112:                                              ; preds = %104
  %113 = load %struct.ar7240sw*, %struct.ar7240sw** %4, align 8
  %114 = load i32, i32* @AR7240_PORT_CPU, align 4
  %115 = call i32 @ar7240sw_port_mask(%struct.ar7240sw* %113, i32 %114)
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %101
  %118 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @AR7240_REG_PORT_CTRL(i32 %119)
  %121 = call i32 @ar7240sw_reg_read(%struct.mii_bus* %118, i32 %120)
  %122 = load i32, i32* @AR7240_PORT_CTRL_MIRROR_RX, align 4
  %123 = load i32, i32* @AR7240_PORT_CTRL_MIRROR_TX, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = load %struct.ar7240sw*, %struct.ar7240sw** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @ar7240sw_port_mask_but(%struct.ar7240sw* %128, i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %6, align 4
  %133 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @AR7240_REG_PORT_CTRL(i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %133, i32 %135, i32 %136)
  %138 = load %struct.ar7240sw*, %struct.ar7240sw** %4, align 8
  %139 = call i64 @sw_is_ar934x(%struct.ar7240sw* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %117
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @AR934X_PORT_VLAN1_DEFAULT_CVID_S, align 4
  %144 = shl i32 %142, %143
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @AR934X_PORT_VLAN2_PORT_VID_MEM_S, align 4
  %147 = shl i32 %145, %146
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @AR934X_PORT_VLAN2_8021Q_MODE_S, align 4
  %150 = shl i32 %148, %149
  %151 = or i32 %147, %150
  store i32 %151, i32* %12, align 4
  %152 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @AR934X_REG_PORT_VLAN1(i32 %153)
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %152, i32 %154, i32 %155)
  %157 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @AR934X_REG_PORT_VLAN2(i32 %158)
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %157, i32 %159, i32 %160)
  br label %177

162:                                              ; preds = %117
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @AR7240_PORT_VLAN_MODE_S, align 4
  %166 = shl i32 %164, %165
  %167 = or i32 %163, %166
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @AR7240_PORT_VLAN_DEST_PORTS_S, align 4
  %170 = shl i32 %168, %169
  %171 = or i32 %167, %170
  store i32 %171, i32* %13, align 4
  %172 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @AR7240_REG_PORT_VLAN(i32 %173)
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %172, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %162, %141
  ret void
}

declare dso_local i32 @ar7240sw_reg_write(%struct.mii_bus*, i32, i32) #1

declare dso_local i32 @AR7240_REG_PORT_STATUS(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ar7240sw_port_mask_but(%struct.ar7240sw*, i32) #1

declare dso_local i32 @ar7240sw_port_mask(%struct.ar7240sw*, i32) #1

declare dso_local i32 @ar7240sw_reg_read(%struct.mii_bus*, i32) #1

declare dso_local i32 @AR7240_REG_PORT_CTRL(i32) #1

declare dso_local i64 @sw_is_ar934x(%struct.ar7240sw*) #1

declare dso_local i32 @AR934X_REG_PORT_VLAN1(i32) #1

declare dso_local i32 @AR934X_REG_PORT_VLAN2(i32) #1

declare dso_local i32 @AR7240_REG_PORT_VLAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
