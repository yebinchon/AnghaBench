; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_update_state.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32, i32 }
%struct.mvsw61xx_state = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SDET_POLARITY = common dso_local global i32 0, align 4
@MV_8021Q_VLAN_ONLY = common dso_local global i32 0, align 4
@MV_8021Q_MODE_DISABLE = common dso_local global i32 0, align 4
@VLANID = common dso_local global i32 0, align 4
@MV_PVID_MASK = common dso_local global i32 0, align 4
@CONTROL1 = common dso_local global i32 0, align 4
@MV_FDB_HI_MASK = common dso_local global i32 0, align 4
@MV_FDB_HI_SHIFT = common dso_local global i32 0, align 4
@MV_FDB_LO_SHIFT = common dso_local global i32 0, align 4
@VLANMAP = common dso_local global i32 0, align 4
@CONTROL2 = common dso_local global i32 0, align 4
@MV_8021Q_MODE_MASK = common dso_local global i32 0, align 4
@MV_8021Q_MODE_SHIFT = common dso_local global i32 0, align 4
@MV_MIRROR_RX_SRC_MASK = common dso_local global i32 0, align 4
@MV_MIRROR_TX_SRC_MASK = common dso_local global i32 0, align 4
@MONITOR_CTRL = common dso_local global i32 0, align 4
@MV_MIRROR_RX_DEST_MASK = common dso_local global i32 0, align 4
@MV_MIRROR_TX_DEST_MASK = common dso_local global i32 0, align 4
@MV_MIRROR_RX_SRC_SHIFT = common dso_local global i32 0, align 4
@MV_MIRROR_RX_DEST_SHIFT = common dso_local global i32 0, align 4
@MV_MIRROR_TX_SRC_SHIFT = common dso_local global i32 0, align 4
@MV_MIRROR_TX_DEST_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*)* @mvsw61xx_update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsw61xx_update_state(%struct.switch_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.mvsw61xx_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  %7 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %8 = call %struct.mvsw61xx_state* @get_state(%struct.switch_dev* %7)
  store %struct.mvsw61xx_state* %8, %struct.mvsw61xx_state** %4, align 8
  %9 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %10 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %351

16:                                               ; preds = %1
  %17 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %18 = load i32, i32* @SDET_POLARITY, align 4
  %19 = call i32 @MV_GLOBAL2REG(i32 %18)
  %20 = call i32 @sr16(%struct.switch_dev* %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %22 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @MV_8021Q_VLAN_ONLY, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %16
  %30 = load i32, i32* @MV_8021Q_VLAN_ONLY, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %36 = load i32, i32* @SDET_POLARITY, align 4
  %37 = call i32 @MV_GLOBAL2REG(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @sw16(%struct.switch_dev* %35, i32 %37, i32 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %62, %34
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %43 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %48 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* @MV_8021Q_MODE_DISABLE, align 4
  %55 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %56 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %54, i32* %61, align 4
  br label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %40

65:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %76, %65
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %69 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @mvsw61xx_vlan_port_config(%struct.switch_dev* %73, i32 %74)
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %66

79:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %203, %79
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %83 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %206

86:                                               ; preds = %80
  %87 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %88 = load i32, i32* @VLANID, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @MV_PORTREG(i32 %88, i32 %89)
  %91 = call i32 @sr16(%struct.switch_dev* %87, i32 %90)
  %92 = load i32, i32* @MV_PVID_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  store i32 %94, i32* %6, align 4
  %95 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %96 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %95, i32 0, i32 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %106 = load i32, i32* @VLANID, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @MV_PORTREG(i32 %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @sw16(%struct.switch_dev* %105, i32 %108, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = shl i32 1, %111
  %113 = xor i32 %112, -1
  %114 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %115 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %114, i32 0, i32 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %113
  store i32 %122, i32* %120, align 4
  %123 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %124 = load i32, i32* @CONTROL1, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @MV_PORTREG(i32 %124, i32 %125)
  %127 = call i32 @sr16(%struct.switch_dev* %123, i32 %126)
  %128 = load i32, i32* @MV_FDB_HI_MASK, align 4
  %129 = xor i32 %128, -1
  %130 = and i32 %127, %129
  store i32 %130, i32* %6, align 4
  %131 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %132 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %131, i32 0, i32 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MV_FDB_HI_SHIFT, align 4
  %140 = ashr i32 %138, %139
  %141 = load i32, i32* @MV_FDB_HI_MASK, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* %6, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %6, align 4
  %145 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %146 = load i32, i32* @CONTROL1, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @MV_PORTREG(i32 %146, i32 %147)
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @sw16(%struct.switch_dev* %145, i32 %148, i32 %149)
  %151 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %152 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %151, i32 0, i32 4
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 15
  %160 = load i32, i32* @MV_FDB_LO_SHIFT, align 4
  %161 = shl i32 %159, %160
  %162 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %163 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %162, i32 0, i32 4
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %161, %169
  store i32 %170, i32* %6, align 4
  %171 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %172 = load i32, i32* @VLANMAP, align 4
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @MV_PORTREG(i32 %172, i32 %173)
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @sw16(%struct.switch_dev* %171, i32 %174, i32 %175)
  %177 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %178 = load i32, i32* @CONTROL2, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @MV_PORTREG(i32 %178, i32 %179)
  %181 = call i32 @sr16(%struct.switch_dev* %177, i32 %180)
  %182 = load i32, i32* @MV_8021Q_MODE_MASK, align 4
  %183 = xor i32 %182, -1
  %184 = and i32 %181, %183
  store i32 %184, i32* %6, align 4
  %185 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %186 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %185, i32 0, i32 4
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @MV_8021Q_MODE_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = load i32, i32* %6, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %6, align 4
  %197 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %198 = load i32, i32* @CONTROL2, align 4
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @MV_PORTREG(i32 %198, i32 %199)
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @sw16(%struct.switch_dev* %197, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %86
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %5, align 4
  br label %80

206:                                              ; preds = %80
  %207 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %208 = call i32 @mvsw61xx_vtu_program(%struct.switch_dev* %207)
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %233, %206
  %210 = load i32, i32* %5, align 4
  %211 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %212 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %236

215:                                              ; preds = %209
  %216 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %217 = load i32, i32* @CONTROL2, align 4
  %218 = load i32, i32* %5, align 4
  %219 = call i32 @MV_PORTREG(i32 %217, i32 %218)
  %220 = call i32 @sr16(%struct.switch_dev* %216, i32 %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* @MV_MIRROR_RX_SRC_MASK, align 4
  %222 = load i32, i32* @MV_MIRROR_TX_SRC_MASK, align 4
  %223 = or i32 %221, %222
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %6, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %6, align 4
  %227 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %228 = load i32, i32* @CONTROL2, align 4
  %229 = load i32, i32* %5, align 4
  %230 = call i32 @MV_PORTREG(i32 %228, i32 %229)
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @sw16(%struct.switch_dev* %227, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %215
  %234 = load i32, i32* %5, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %5, align 4
  br label %209

236:                                              ; preds = %209
  %237 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %238 = load i32, i32* @MONITOR_CTRL, align 4
  %239 = call i32 @MV_GLOBALREG(i32 %238)
  %240 = call i32 @sr16(%struct.switch_dev* %237, i32 %239)
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* @MV_MIRROR_RX_DEST_MASK, align 4
  %242 = load i32, i32* @MV_MIRROR_TX_DEST_MASK, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* %6, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %6, align 4
  %246 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %247 = load i32, i32* @MONITOR_CTRL, align 4
  %248 = call i32 @MV_GLOBALREG(i32 %247)
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @sw16(%struct.switch_dev* %246, i32 %248, i32 %249)
  %251 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %252 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %300

255:                                              ; preds = %236
  %256 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %257 = load i32, i32* @CONTROL2, align 4
  %258 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %259 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @MV_PORTREG(i32 %257, i32 %260)
  %262 = call i32 @sr16(%struct.switch_dev* %256, i32 %261)
  %263 = load i32, i32* @MV_MIRROR_RX_SRC_MASK, align 4
  %264 = xor i32 %263, -1
  %265 = and i32 %262, %264
  store i32 %265, i32* %6, align 4
  %266 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %267 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @MV_MIRROR_RX_SRC_SHIFT, align 4
  %270 = shl i32 %268, %269
  %271 = load i32, i32* %6, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %6, align 4
  %273 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %274 = load i32, i32* @CONTROL2, align 4
  %275 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %276 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @MV_PORTREG(i32 %274, i32 %277)
  %279 = load i32, i32* %6, align 4
  %280 = call i32 @sw16(%struct.switch_dev* %273, i32 %278, i32 %279)
  %281 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %282 = load i32, i32* @MONITOR_CTRL, align 4
  %283 = call i32 @MV_GLOBALREG(i32 %282)
  %284 = call i32 @sr16(%struct.switch_dev* %281, i32 %283)
  %285 = load i32, i32* @MV_MIRROR_RX_DEST_MASK, align 4
  %286 = xor i32 %285, -1
  %287 = and i32 %284, %286
  store i32 %287, i32* %6, align 4
  %288 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %289 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @MV_MIRROR_RX_DEST_SHIFT, align 4
  %292 = shl i32 %290, %291
  %293 = load i32, i32* %6, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %6, align 4
  %295 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %296 = load i32, i32* @MONITOR_CTRL, align 4
  %297 = call i32 @MV_GLOBALREG(i32 %296)
  %298 = load i32, i32* %6, align 4
  %299 = call i32 @sw16(%struct.switch_dev* %295, i32 %297, i32 %298)
  br label %300

300:                                              ; preds = %255, %236
  %301 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %302 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %350

305:                                              ; preds = %300
  %306 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %307 = load i32, i32* @CONTROL2, align 4
  %308 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %309 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @MV_PORTREG(i32 %307, i32 %310)
  %312 = call i32 @sr16(%struct.switch_dev* %306, i32 %311)
  %313 = load i32, i32* @MV_MIRROR_TX_SRC_MASK, align 4
  %314 = xor i32 %313, -1
  %315 = and i32 %312, %314
  store i32 %315, i32* %6, align 4
  %316 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %317 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @MV_MIRROR_TX_SRC_SHIFT, align 4
  %320 = shl i32 %318, %319
  %321 = load i32, i32* %6, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %6, align 4
  %323 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %324 = load i32, i32* @CONTROL2, align 4
  %325 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %326 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @MV_PORTREG(i32 %324, i32 %327)
  %329 = load i32, i32* %6, align 4
  %330 = call i32 @sw16(%struct.switch_dev* %323, i32 %328, i32 %329)
  %331 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %332 = load i32, i32* @MONITOR_CTRL, align 4
  %333 = call i32 @MV_GLOBALREG(i32 %332)
  %334 = call i32 @sr16(%struct.switch_dev* %331, i32 %333)
  %335 = load i32, i32* @MV_MIRROR_TX_DEST_MASK, align 4
  %336 = xor i32 %335, -1
  %337 = and i32 %334, %336
  store i32 %337, i32* %6, align 4
  %338 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %4, align 8
  %339 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @MV_MIRROR_TX_DEST_SHIFT, align 4
  %342 = shl i32 %340, %341
  %343 = load i32, i32* %6, align 4
  %344 = or i32 %343, %342
  store i32 %344, i32* %6, align 4
  %345 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %346 = load i32, i32* @MONITOR_CTRL, align 4
  %347 = call i32 @MV_GLOBALREG(i32 %346)
  %348 = load i32, i32* %6, align 4
  %349 = call i32 @sw16(%struct.switch_dev* %345, i32 %347, i32 %348)
  br label %350

350:                                              ; preds = %305, %300
  store i32 0, i32* %2, align 4
  br label %351

351:                                              ; preds = %350, %13
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local %struct.mvsw61xx_state* @get_state(%struct.switch_dev*) #1

declare dso_local i32 @sr16(%struct.switch_dev*, i32) #1

declare dso_local i32 @MV_GLOBAL2REG(i32) #1

declare dso_local i32 @sw16(%struct.switch_dev*, i32, i32) #1

declare dso_local i32 @mvsw61xx_vlan_port_config(%struct.switch_dev*, i32) #1

declare dso_local i32 @MV_PORTREG(i32, i32) #1

declare dso_local i32 @mvsw61xx_vtu_program(%struct.switch_dev*) #1

declare dso_local i32 @MV_GLOBALREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
