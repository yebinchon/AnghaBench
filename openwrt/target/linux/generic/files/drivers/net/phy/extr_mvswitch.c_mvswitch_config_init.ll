; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvswitch.c_mvswitch_config_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvswitch.c_mvswitch_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i8*, i8*, %struct.net_device* }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, %struct.mvswitch_priv* }
%struct.mvswitch_priv = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: Marvell 88E6060 PHY driver attached.\0A\00", align 1
@ADVERTISED_100baseT_Full = common dso_local global i8* null, align 8
@PHY_POLL = common dso_local global i32 0, align 4
@MV_PORTS = common dso_local global i32 0, align 4
@MV_WANPORT = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@ATU_CTRL = common dso_local global i32 0, align 4
@MV_ATUCTL_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: Timeout waiting for the switch to reset.\0A\00", align 1
@MV_ATUCTL_NO_LEARN = common dso_local global i32 0, align 4
@MV_ATUCTL_ATU_1K = common dso_local global i32 0, align 4
@MV_ATUCTL_AGETIME_MIN = common dso_local global i32 0, align 4
@MV_CPUPORT = common dso_local global i32 0, align 4
@MV_PORTCTRL_RXTR = common dso_local global i32 0, align 4
@MV_PORTCTRL_TXTR = common dso_local global i32 0, align 4
@MV_PORTCTRL_ENABLED = common dso_local global i32 0, align 4
@VLANMAP = common dso_local global i32 0, align 4
@ASSOC = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@MV_SWITCHCTL_MSIZE = common dso_local global i32 0, align 4
@MV_SWITCHCTL_DROP = common dso_local global i32 0, align 4
@mvswitch_mangle_rx = common dso_local global i32 0, align 4
@mvswitch_mangle_tx = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@IFF_NO_IP_ALIGN = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@MV_PORTCTRL_HEADER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @mvswitch_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvswitch_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.mvswitch_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = call %struct.mvswitch_priv* @to_mvsw(%struct.phy_device* %10)
  store %struct.mvswitch_priv* %11, %struct.mvswitch_priv** %4, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 3
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %233

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** @ADVERTISED_100baseT_Full, align 8
  %26 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @ADVERTISED_100baseT_Full, align 8
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 6
  store %struct.mvswitch_priv* %31, %struct.mvswitch_priv** %33, align 8
  %34 = load i32, i32* @PHY_POLL, align 4
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %56, %20
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MV_PORTS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %4, align 8
  %45 = getelementptr inbounds %struct.mvswitch_priv, %struct.mvswitch_priv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MV_WANPORT, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 2, i32 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %46, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %43
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %37

59:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %70, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @MV_PORTS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = load i32, i32* @CONTROL, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @MV_PORTREG(i32 %66, i32 %67)
  %69 = call i32 @w16(%struct.phy_device* %65, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %60

73:                                               ; preds = %60
  %74 = call i32 @msleep(i32 2)
  %75 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %76 = load i32, i32* @ATU_CTRL, align 4
  %77 = call i32 @MV_SWITCHREG(i32 %76)
  %78 = load i32, i32* @MV_ATUCTL_RESET, align 4
  %79 = call i32 @w16(%struct.phy_device* %75, i32 %77, i32 %78)
  %80 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %81 = load i32, i32* @ATU_CTRL, align 4
  %82 = call i32 @MV_SWITCHREG(i32 %81)
  %83 = load i32, i32* @MV_ATUCTL_RESET, align 4
  %84 = call i32 @mvswitch_wait_mask(%struct.phy_device* %80, i32 %82, i32 %83, i32 0)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %73
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %233

93:                                               ; preds = %73
  %94 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %95 = load i32, i32* @ATU_CTRL, align 4
  %96 = call i32 @MV_SWITCHREG(i32 %95)
  %97 = load i32, i32* @MV_ATUCTL_NO_LEARN, align 4
  %98 = load i32, i32* @MV_ATUCTL_ATU_1K, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @MV_ATUCTL_AGETIME_MIN, align 4
  %101 = call i32 @MV_ATUCTL_AGETIME(i32 %100)
  %102 = or i32 %99, %101
  %103 = call i32 @w16(%struct.phy_device* %94, i32 %96, i32 %102)
  %104 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %105 = load i32, i32* @CONTROL, align 4
  %106 = load i32, i32* @MV_CPUPORT, align 4
  %107 = call i32 @MV_PORTREG(i32 %105, i32 %106)
  %108 = load i32, i32* @MV_PORTCTRL_RXTR, align 4
  %109 = load i32, i32* @MV_PORTCTRL_TXTR, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @MV_PORTCTRL_ENABLED, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @w16(%struct.phy_device* %104, i32 %107, i32 %112)
  %114 = call i32 @msleep(i32 2)
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %182, %93
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @MV_PORTS, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %185

119:                                              ; preds = %115
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %149, %119
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %4, align 8
  %123 = getelementptr inbounds %struct.mvswitch_priv, %struct.mvswitch_priv* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @ARRAY_SIZE(i32* %124)
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %152

127:                                              ; preds = %120
  %128 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %4, align 8
  %129 = getelementptr inbounds %struct.mvswitch_priv, %struct.mvswitch_priv* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = shl i32 1, %135
  %137 = and i32 %134, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %127
  %140 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %4, align 8
  %141 = getelementptr inbounds %struct.mvswitch_priv, %struct.mvswitch_priv* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %139, %127
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %120

152:                                              ; preds = %120
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  br label %182

156:                                              ; preds = %152
  %157 = load i32, i32* @MV_CPUPORT, align 4
  %158 = shl i32 1, %157
  %159 = load i32, i32* %6, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = shl i32 1, %161
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %6, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %6, align 4
  %166 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %167 = load i32, i32* @VLANMAP, align 4
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @MV_PORTREG(i32 %167, i32 %168)
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @MV_PORTVLAN_PORTS(i32 %170)
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @MV_PORTVLAN_ID(i32 %172)
  %174 = or i32 %171, %173
  %175 = call i32 @w16(%struct.phy_device* %166, i32 %169, i32 %174)
  %176 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %177 = load i32, i32* @CONTROL, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @MV_PORTREG(i32 %177, i32 %178)
  %180 = load i32, i32* @MV_PORTCTRL_ENABLED, align 4
  %181 = call i32 @w16(%struct.phy_device* %176, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %156, %155
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %115

185:                                              ; preds = %115
  %186 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %187 = load i32, i32* @VLANMAP, align 4
  %188 = load i32, i32* @MV_CPUPORT, align 4
  %189 = call i32 @MV_PORTREG(i32 %187, i32 %188)
  %190 = load i32, i32* @MV_CPUPORT, align 4
  %191 = call i32 @MV_PORTVLAN_ID(i32 %190)
  %192 = call i32 @w16(%struct.phy_device* %186, i32 %189, i32 %191)
  store i32 0, i32* %7, align 4
  br label %193

193:                                              ; preds = %206, %185
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @MV_PORTS, align 4
  %196 = icmp sle i32 %194, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %193
  %198 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %199 = load i32, i32* @ASSOC, align 4
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @MV_PORTREG(i32 %199, i32 %200)
  %202 = load i32, i32* %7, align 4
  %203 = shl i32 1, %202
  %204 = call i32 @MV_PORTASSOC_PORTS(i32 %203)
  %205 = call i32 @w16(%struct.phy_device* %198, i32 %201, i32 %204)
  br label %206

206:                                              ; preds = %197
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %193

209:                                              ; preds = %193
  %210 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %211 = load i32, i32* @CTRL, align 4
  %212 = call i32 @MV_SWITCHREG(i32 %211)
  %213 = load i32, i32* @MV_SWITCHCTL_MSIZE, align 4
  %214 = load i32, i32* @MV_SWITCHCTL_DROP, align 4
  %215 = or i32 %213, %214
  %216 = call i32 @w16(%struct.phy_device* %210, i32 %212, i32 %215)
  %217 = load i32, i32* @mvswitch_mangle_rx, align 4
  %218 = load %struct.net_device*, %struct.net_device** %5, align 8
  %219 = getelementptr inbounds %struct.net_device, %struct.net_device* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* @mvswitch_mangle_tx, align 4
  %221 = load %struct.net_device*, %struct.net_device** %5, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = load %struct.net_device*, %struct.net_device** %5, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %4, align 8
  %227 = getelementptr inbounds %struct.mvswitch_priv, %struct.mvswitch_priv* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %229 = load %struct.net_device*, %struct.net_device** %5, align 8
  %230 = getelementptr inbounds %struct.net_device, %struct.net_device* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %209, %87, %17
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.mvswitch_priv* @to_mvsw(%struct.phy_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @w16(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @MV_PORTREG(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @MV_SWITCHREG(i32) #1

declare dso_local i32 @mvswitch_wait_mask(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @MV_ATUCTL_AGETIME(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @MV_PORTVLAN_PORTS(i32) #1

declare dso_local i32 @MV_PORTVLAN_ID(i32) #1

declare dso_local i32 @MV_PORTASSOC_PORTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
