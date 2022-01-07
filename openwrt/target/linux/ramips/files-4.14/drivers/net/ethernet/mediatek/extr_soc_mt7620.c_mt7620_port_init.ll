; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_mt7620.c_mt7620_port_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_mt7620.c_mt7620_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32*, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32*, %struct.device_node**, i32** }
%struct.TYPE_3__ = type { i64 }
%struct.device_node = type { i32 }
%struct.mt7620_gsw = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@PORT4_EPHY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: invalid port id %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: invalid port id\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"mediatek,fixed-link\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: invalid fixed link property\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"port %d - invalid phy mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@SYSC_REG_CFG1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid link speed: %d\0A\00", align 1
@PMCR_LINK = common dso_local global i32 0, align 4
@PMCR_BACKPRES = common dso_local global i32 0, align 4
@PMCR_BACKOFF = common dso_local global i32 0, align 4
@PMCR_RX_EN = common dso_local global i32 0, align 4
@PMCR_TX_EN = common dso_local global i32 0, align 4
@PMCR_FORCE = common dso_local global i32 0, align 4
@PMCR_MAC_MODE = common dso_local global i32 0, align 4
@PMCR_IPG = common dso_local global i32 0, align 4
@PMCR_TX_FC = common dso_local global i32 0, align 4
@PMCR_RX_FC = common dso_local global i32 0, align 4
@PMCR_DUPLEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"using fixed link parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fe_priv*, %struct.device_node*)* @mt7620_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7620_port_init(%struct.fe_priv* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mt7620_gsw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %20 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %21 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.mt7620_gsw*
  store %struct.mt7620_gsw* %25, %struct.mt7620_gsw** %5, align 8
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i8* @of_get_property(%struct.device_node* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %6, align 8
  store i32 12, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %29 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %30 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PORT4_EPHY, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 5, i32 4
  store i32 %35, i32* %14, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %2
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = icmp sgt i32 %47, 5
  br i1 %48, label %49, label %66

49:                                               ; preds = %44, %38, %2
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = getelementptr inbounds %struct.device_node, %struct.device_node* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  br label %65

60:                                               ; preds = %49
  %61 = load %struct.device_node*, %struct.device_node** %4, align 8
  %62 = getelementptr inbounds %struct.device_node, %struct.device_node* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %52
  br label %385

66:                                               ; preds = %44
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 14, i32* %11, align 4
  br label %73

73:                                               ; preds = %72, %66
  %74 = load %struct.device_node*, %struct.device_node** %4, align 8
  %75 = call i8* @of_get_property(%struct.device_node* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %78 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* %76, i32** %84, align 8
  %85 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %86 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %73
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ne i64 %97, 16
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load %struct.device_node*, %struct.device_node** %4, align 8
  %101 = getelementptr inbounds %struct.device_node, %struct.device_node* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %105 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  store i32* null, i32** %111, align 8
  br label %385

112:                                              ; preds = %95, %73
  %113 = load %struct.device_node*, %struct.device_node** %4, align 8
  %114 = call i32 @of_get_phy_mode(%struct.device_node* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  switch i32 %115, label %119 [
    i32 132, label %116
    i32 133, label %117
    i32 131, label %118
  ]

116:                                              ; preds = %112
  store i32 0, i32* %13, align 4
  br label %125

117:                                              ; preds = %112
  store i32 1, i32* %13, align 4
  br label %125

118:                                              ; preds = %112
  store i32 2, i32* %13, align 4
  br label %125

119:                                              ; preds = %112
  %120 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %121 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  br label %385

125:                                              ; preds = %118, %117, %116
  %126 = load %struct.device_node*, %struct.device_node** %4, align 8
  %127 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %128 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %129 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load %struct.device_node**, %struct.device_node*** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.device_node*, %struct.device_node** %132, i64 %134
  store %struct.device_node* %127, %struct.device_node** %135, align 8
  %136 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %137 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load %struct.device_node**, %struct.device_node*** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.device_node*, %struct.device_node** %140, i64 %142
  %144 = load %struct.device_node*, %struct.device_node** %143, align 8
  %145 = icmp ne %struct.device_node* %144, null
  br i1 %145, label %158, label %146

146:                                              ; preds = %125
  %147 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %148 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %146
  br label %385

158:                                              ; preds = %146, %125
  %159 = load i32, i32* @SYSC_REG_CFG1, align 4
  %160 = call i32 @rt_sysc_r32(i32 %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %11, align 4
  %162 = shl i32 3, %161
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %12, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %11, align 4
  %168 = shl i32 %166, %167
  %169 = load i32, i32* %12, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @SYSC_REG_CFG1, align 4
  %173 = call i32 @rt_sysc_w32(i32 %171, i32 %172)
  %174 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %175 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %174, i32 0, i32 1
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load i32**, i32*** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %324

184:                                              ; preds = %158
  %185 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %186 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %185, i32 0, i32 1
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  %189 = load i32**, i32*** %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** %15, align 8
  store i32 0, i32* %18, align 4
  %194 = load i32*, i32** %15, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %15, align 8
  %196 = call i8* @be32_to_cpup(i32* %194)
  %197 = ptrtoint i8* %196 to i32
  %198 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %199 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %198, i32 0, i32 1
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %197, i32* %205, align 4
  %206 = load i32*, i32** %15, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %15, align 8
  %208 = call i8* @be32_to_cpup(i32* %206)
  %209 = ptrtoint i8* %208 to i32
  store i32 %209, i32* %16, align 4
  %210 = load i32*, i32** %15, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %15, align 8
  %212 = call i8* @be32_to_cpup(i32* %210)
  %213 = ptrtoint i8* %212 to i32
  store i32 %213, i32* %17, align 4
  %214 = load i32*, i32** %15, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %15, align 8
  %216 = call i8* @be32_to_cpup(i32* %214)
  %217 = ptrtoint i8* %216 to i32
  %218 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %219 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %218, i32 0, i32 1
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %217, i32* %225, align 4
  %226 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %227 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %10, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 1, i32* %231, align 4
  %232 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %233 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %232, i32 0, i32 1
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  switch i32 %240, label %244 [
    i32 130, label %241
    i32 129, label %242
    i32 128, label %243
  ]

241:                                              ; preds = %184
  store i32 0, i32* %18, align 4
  br label %266

242:                                              ; preds = %184
  store i32 1, i32* %18, align 4
  br label %266

243:                                              ; preds = %184
  store i32 2, i32* %18, align 4
  br label %266

244:                                              ; preds = %184
  %245 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %246 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %249 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %248, i32 0, i32 1
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @dev_err(i32 %247, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %256)
  %258 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %259 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %258, i32 0, i32 1
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 3
  %262 = load i32**, i32*** %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %262, i64 %264
  store i32* null, i32** %265, align 8
  br label %385

266:                                              ; preds = %243, %242, %241
  %267 = load i32, i32* %18, align 4
  %268 = call i32 @PMCR_SPEED(i32 %267)
  store i32 %268, i32* %18, align 4
  %269 = load i32, i32* @PMCR_LINK, align 4
  %270 = load i32, i32* @PMCR_BACKPRES, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @PMCR_BACKOFF, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* @PMCR_RX_EN, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* @PMCR_TX_EN, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* @PMCR_FORCE, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @PMCR_MAC_MODE, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @PMCR_IPG, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* %18, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %18, align 4
  %286 = load i32, i32* %16, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %266
  %289 = load i32, i32* @PMCR_TX_FC, align 4
  %290 = load i32, i32* %18, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %18, align 4
  br label %292

292:                                              ; preds = %288, %266
  %293 = load i32, i32* %17, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = load i32, i32* @PMCR_RX_FC, align 4
  %297 = load i32, i32* %18, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %18, align 4
  br label %299

299:                                              ; preds = %295, %292
  %300 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %301 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %300, i32 0, i32 1
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %10, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %299
  %311 = load i32, i32* @PMCR_DUPLEX, align 4
  %312 = load i32, i32* %18, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %18, align 4
  br label %314

314:                                              ; preds = %310, %299
  %315 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %316 = load i32, i32* %18, align 4
  %317 = load i32, i32* %10, align 4
  %318 = call i32 @GSW_REG_PORT_PMCR(i32 %317)
  %319 = call i32 @mtk_switch_w32(%struct.mt7620_gsw* %315, i32 %316, i32 %318)
  %320 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %321 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @dev_info(i32 %322, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %385

324:                                              ; preds = %158
  %325 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %326 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %325, i32 0, i32 1
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 2
  %329 = load %struct.device_node**, %struct.device_node*** %328, align 8
  %330 = load i32, i32* %10, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.device_node*, %struct.device_node** %329, i64 %331
  %333 = load %struct.device_node*, %struct.device_node** %332, align 8
  %334 = call i8* @of_get_property(%struct.device_node* %333, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  %335 = bitcast i8* %334 to i32*
  store i32* %335, i32** %7, align 8
  %336 = load i32*, i32** %7, align 8
  %337 = icmp ne i32* %336, null
  br i1 %337, label %338, label %385

338:                                              ; preds = %324
  %339 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %340 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32*, i32** %7, align 8
  %343 = call i8* @be32_to_cpup(i32* %342)
  %344 = call i64 @mdiobus_get_phy(i32 %341, i8* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %385

346:                                              ; preds = %338
  %347 = load i32, i32* @PMCR_BACKPRES, align 4
  %348 = load i32, i32* @PMCR_BACKOFF, align 4
  %349 = or i32 %347, %348
  %350 = load i32, i32* @PMCR_RX_EN, align 4
  %351 = or i32 %349, %350
  %352 = load i32, i32* @PMCR_TX_EN, align 4
  %353 = or i32 %351, %352
  %354 = load i32, i32* @PMCR_MAC_MODE, align 4
  %355 = or i32 %353, %354
  %356 = load i32, i32* @PMCR_IPG, align 4
  %357 = or i32 %355, %356
  store i32 %357, i32* %19, align 4
  %358 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %359 = load i32, i32* %19, align 4
  %360 = load i32, i32* %10, align 4
  %361 = call i32 @GSW_REG_PORT_PMCR(i32 %360)
  %362 = call i32 @mtk_switch_w32(%struct.mt7620_gsw* %358, i32 %359, i32 %361)
  %363 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %364 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %365 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %364, i32 0, i32 1
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 2
  %368 = load %struct.device_node**, %struct.device_node*** %367, align 8
  %369 = load i32, i32* %10, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.device_node*, %struct.device_node** %368, i64 %370
  %372 = load %struct.device_node*, %struct.device_node** %371, align 8
  %373 = load i32, i32* %10, align 4
  %374 = call i32 @fe_connect_phy_node(%struct.fe_priv* %363, %struct.device_node* %372, i32 %373)
  %375 = load i32*, i32** %7, align 8
  %376 = call i8* @be32_to_cpup(i32* %375)
  %377 = call i32 @BIT(i8* %376)
  %378 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %379 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 8
  %382 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %383 = load i32, i32* %10, align 4
  %384 = call i32 @mt7620_auto_poll(%struct.mt7620_gsw* %382, i32 %383)
  br label %385

385:                                              ; preds = %65, %99, %119, %157, %244, %314, %346, %338, %324
  ret void
}

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @rt_sysc_r32(i32) #1

declare dso_local i32 @rt_sysc_w32(i32, i32) #1

declare dso_local i8* @be32_to_cpup(i32*) #1

declare dso_local i32 @PMCR_SPEED(i32) #1

declare dso_local i32 @mtk_switch_w32(%struct.mt7620_gsw*, i32, i32) #1

declare dso_local i32 @GSW_REG_PORT_PMCR(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @mdiobus_get_phy(i32, i8*) #1

declare dso_local i32 @fe_connect_phy_node(%struct.fe_priv*, %struct.device_node*, i32) #1

declare dso_local i32 @BIT(i8*) #1

declare dso_local i32 @mt7620_auto_poll(%struct.mt7620_gsw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
