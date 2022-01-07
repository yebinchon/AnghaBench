; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c__mvsw61xx_reset.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c__mvsw61xx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32, i32 }
%struct.mvsw61xx_state = type { i64, i32, i32, i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@CONTROL = common dso_local global i32 0, align 4
@MV_PORTCTRL_FORWARDING = common dso_local global i64 0, align 8
@MV_CONTROL_RESET = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@PHYCTL = common dso_local global i32 0, align 4
@MV_PHYCTL_FC_MASK = common dso_local global i64 0, align 8
@MV_PHYCTL_FC_DISABLE = common dso_local global i64 0, align 8
@ASSOC = common dso_local global i32 0, align 4
@MII_MV_SPEC_CTRL = common dso_local global i32 0, align 4
@MV_SPEC_MDI_CROSS_AUTO = common dso_local global i32 0, align 4
@MV_SPEC_ENERGY_DETECT = common dso_local global i32 0, align 4
@MV_SPEC_DOWNSHIFT_COUNTER = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@MV_IDENT_VALUE_6176 = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@MV_PORT_STATUS_CMODE_MASK = common dso_local global i64 0, align 8
@MV_PORT_STATUS_CMODE_100BASE_X = common dso_local global i64 0, align 8
@MV_PORT_STATUS_CMODE_1000BASE_X = common dso_local global i64 0, align 8
@MV_PORT_STATUS_CMODE_SGMII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32)* @_mvsw61xx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mvsw61xx_reset(%struct.switch_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvsw61xx_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %12 = call %struct.mvsw61xx_state* @get_state(%struct.switch_dev* %11)
  store %struct.mvsw61xx_state* %12, %struct.mvsw61xx_state** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %34, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %16 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %21 = load i32, i32* @CONTROL, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @MV_PORTREG(i32 %21, i32 %22)
  %24 = call i64 @sr16(%struct.switch_dev* %20, i32 %23)
  %25 = load i64, i64* @MV_PORTCTRL_FORWARDING, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  store i64 %27, i64* %8, align 8
  %28 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %29 = load i32, i32* @CONTROL, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @MV_PORTREG(i32 %29, i32 %30)
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @sw16(%struct.switch_dev* %28, i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %39 = load i32, i32* @CONTROL, align 4
  %40 = call i32 @MV_GLOBALREG(i32 %39)
  %41 = call i64 @sr16(%struct.switch_dev* %38, i32 %40)
  %42 = load i64, i64* @MV_CONTROL_RESET, align 8
  %43 = or i64 %41, %42
  store i64 %43, i64* %8, align 8
  %44 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %45 = load i32, i32* @CONTROL, align 4
  %46 = call i32 @MV_GLOBALREG(i32 %45)
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @sw16(%struct.switch_dev* %44, i32 %46, i64 %47)
  %49 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %50 = load i32, i32* @CONTROL, align 4
  %51 = call i32 @MV_GLOBALREG(i32 %50)
  %52 = load i64, i64* @MV_CONTROL_RESET, align 8
  %53 = call i64 @mvsw61xx_wait_mask_s(%struct.switch_dev* %49, i32 %51, i64 %52, i32 0)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %37
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %268

58:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %182, %58
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %62 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %185

65:                                               ; preds = %59
  %66 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %67 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %66, i32 0, i32 7
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %74 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %73, i32 0, i32 7
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %81 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %80, i32 0, i32 7
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %88 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %87, i32 0, i32 7
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %95 = load i32, i32* @PHYCTL, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @MV_PORTREG(i32 %95, i32 %96)
  %98 = call i64 @sr16(%struct.switch_dev* %94, i32 %97)
  %99 = load i64, i64* @MV_PHYCTL_FC_MASK, align 8
  %100 = xor i64 %99, -1
  %101 = and i64 %98, %100
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* @MV_PHYCTL_FC_DISABLE, align 8
  %103 = load i64, i64* %8, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %8, align 8
  %105 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %106 = load i32, i32* @PHYCTL, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @MV_PORTREG(i32 %106, i32 %107)
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @sw16(%struct.switch_dev* %105, i32 %108, i64 %109)
  %111 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %112 = load i32, i32* @ASSOC, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @MV_PORTREG(i32 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = shl i32 1, %115
  %117 = sext i32 %116 to i64
  %118 = call i32 @sw16(%struct.switch_dev* %111, i32 %114, i64 %117)
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %65
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 5
  br i1 %123, label %124, label %145

124:                                              ; preds = %121
  %125 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @MII_MV_SPEC_CTRL, align 4
  %128 = load i32, i32* @MV_SPEC_MDI_CROSS_AUTO, align 4
  %129 = load i32, i32* @MV_SPEC_ENERGY_DETECT, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @MV_SPEC_DOWNSHIFT_COUNTER, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @mvsw61xx_mdio_write(%struct.switch_dev* %125, i32 %126, i32 %127, i32 %132)
  %134 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @MII_BMCR, align 4
  %137 = load i32, i32* @BMCR_RESET, align 4
  %138 = load i32, i32* @BMCR_ANENABLE, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @BMCR_FULLDPLX, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @BMCR_SPEED1000, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @mvsw61xx_mdio_write(%struct.switch_dev* %134, i32 %135, i32 %136, i32 %143)
  br label %145

145:                                              ; preds = %124, %121, %65
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %181

148:                                              ; preds = %145
  %149 = load i32, i32* %7, align 4
  %150 = icmp sge i32 %149, 5
  br i1 %150, label %151, label %181

151:                                              ; preds = %148
  %152 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %153 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MV_IDENT_VALUE_6176, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %181

157:                                              ; preds = %151
  %158 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %159 = load i32, i32* @STATUS, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @MV_PORTREG(i32 %159, i32 %160)
  %162 = call i64 @sr16(%struct.switch_dev* %158, i32 %161)
  store i64 %162, i64* %9, align 8
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* @MV_PORT_STATUS_CMODE_MASK, align 8
  %165 = and i64 %163, %164
  store i64 %165, i64* %10, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* @MV_PORT_STATUS_CMODE_100BASE_X, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %177, label %169

169:                                              ; preds = %157
  %170 = load i64, i64* %10, align 8
  %171 = load i64, i64* @MV_PORT_STATUS_CMODE_1000BASE_X, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load i64, i64* %10, align 8
  %175 = load i64, i64* @MV_PORT_STATUS_CMODE_SGMII, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173, %169, %157
  %178 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %179 = call i32 @mvsw61xx_enable_serdes(%struct.switch_dev* %178)
  br label %180

180:                                              ; preds = %177, %173
  br label %181

181:                                              ; preds = %180, %151, %148, %145
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %59

185:                                              ; preds = %59
  store i32 0, i32* %7, align 4
  br label %186

186:                                              ; preds = %228, %185
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %189 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %231

192:                                              ; preds = %186
  %193 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %194 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %193, i32 0, i32 6
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  store i32 0, i32* %199, align 8
  %200 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %201 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %200, i32 0, i32 6
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 4
  store i64 0, i64* %206, align 8
  %207 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %208 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %207, i32 0, i32 6
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 3
  store i64 0, i64* %213, align 8
  %214 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %215 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %214, i32 0, i32 6
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  store i64 0, i64* %220, align 8
  %221 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %222 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %221, i32 0, i32 6
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  store i64 0, i64* %227, align 8
  br label %228

228:                                              ; preds = %192
  %229 = load i32, i32* %7, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %7, align 4
  br label %186

231:                                              ; preds = %186
  %232 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %233 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %232, i32 0, i32 5
  store i64 0, i64* %233, align 8
  %234 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %235 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %234, i32 0, i32 1
  store i32 0, i32* %235, align 8
  %236 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %237 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %236, i32 0, i32 2
  store i32 0, i32* %237, align 4
  %238 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %239 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %238, i32 0, i32 4
  store i64 0, i64* %239, align 8
  %240 = load %struct.mvsw61xx_state*, %struct.mvsw61xx_state** %6, align 8
  %241 = getelementptr inbounds %struct.mvsw61xx_state, %struct.mvsw61xx_state* %240, i32 0, i32 3
  store i64 0, i64* %241, align 8
  %242 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %243 = call i32 @mvsw61xx_update_state(%struct.switch_dev* %242)
  store i32 0, i32* %7, align 4
  br label %244

244:                                              ; preds = %264, %231
  %245 = load i32, i32* %7, align 4
  %246 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %247 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %267

250:                                              ; preds = %244
  %251 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %252 = load i32, i32* @CONTROL, align 4
  %253 = load i32, i32* %7, align 4
  %254 = call i32 @MV_PORTREG(i32 %252, i32 %253)
  %255 = call i64 @sr16(%struct.switch_dev* %251, i32 %254)
  %256 = load i64, i64* @MV_PORTCTRL_FORWARDING, align 8
  %257 = or i64 %255, %256
  store i64 %257, i64* %8, align 8
  %258 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %259 = load i32, i32* @CONTROL, align 4
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @MV_PORTREG(i32 %259, i32 %260)
  %262 = load i64, i64* %8, align 8
  %263 = call i32 @sw16(%struct.switch_dev* %258, i32 %261, i64 %262)
  br label %264

264:                                              ; preds = %250
  %265 = load i32, i32* %7, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %7, align 4
  br label %244

267:                                              ; preds = %244
  store i32 0, i32* %3, align 4
  br label %268

268:                                              ; preds = %267, %55
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local %struct.mvsw61xx_state* @get_state(%struct.switch_dev*) #1

declare dso_local i64 @sr16(%struct.switch_dev*, i32) #1

declare dso_local i32 @MV_PORTREG(i32, i32) #1

declare dso_local i32 @sw16(%struct.switch_dev*, i32, i64) #1

declare dso_local i32 @MV_GLOBALREG(i32) #1

declare dso_local i64 @mvsw61xx_wait_mask_s(%struct.switch_dev*, i32, i64, i32) #1

declare dso_local i32 @mvsw61xx_mdio_write(%struct.switch_dev*, i32, i32, i32) #1

declare dso_local i32 @mvsw61xx_enable_serdes(%struct.switch_dev*) #1

declare dso_local i32 @mvsw61xx_update_state(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
