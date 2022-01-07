; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c__build_action_map.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c__build_action_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@DIDBAM_HWDEFAULTS = common dso_local global i64 0, align 8
@DI_OK = common dso_local global i32 0, align 4
@DIDFT_PSHBUTTON = common dso_local global i64 0, align 8
@DIDFT_BUTTON = common dso_local global i64 0, align 8
@DIDFT_RELAXIS = common dso_local global i64 0, align 8
@DIDFT_AXIS = common dso_local global i64 0, align 8
@DIAH_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@DIDBAM_PRESERVE = common dso_local global i64 0, align 8
@DIAH_UNMAPPED = common dso_local global i32 0, align 4
@DI_NOEFFECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_build_action_map(i32 %0, %struct.TYPE_11__* %1, i32* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.TYPE_12__* @impl_from_IDirectInputDevice8W(i32 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %14, align 8
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %15, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %32 = load i32, i32* @MAX_PATH, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %19, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %20, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @DIDBAM_HWDEFAULTS, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %6
  %41 = load i32*, i32** %10, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @GetUserNameW(i32* %31, i64* %17)
  br label %49

45:                                               ; preds = %40
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* @MAX_PATH, align 4
  %48 = call i32 @lstrcpynW(i32* %31, i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %43
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = call i64 @load_mapping_settings(%struct.TYPE_12__* %50, %struct.TYPE_11__* %51, i32* %31)
  store i64 %52, i64* %19, align 8
  br label %53

53:                                               ; preds = %49, %6
  %54 = load i64, i64* %19, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %131

56:                                               ; preds = %53
  store i32 0, i32* %18, align 4
  br label %57

57:                                               ; preds = %126, %56
  %58 = load i32, i32* %18, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %129

63:                                               ; preds = %57
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %18, align 4
  %73 = mul nsw i32 %72, 2
  %74 = shl i32 %71, %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %18, align 4
  %84 = mul nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = sub i64 32, %85
  %87 = trunc i64 %86 to i32
  %88 = ashr i32 %82, %87
  %89 = or i32 %74, %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %18, align 4
  %103 = mul nsw i32 %102, 2
  %104 = add nsw i32 %103, 5
  %105 = shl i32 %101, %104
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %18, align 4
  %115 = mul nsw i32 %114, 2
  %116 = add nsw i32 %115, 5
  %117 = sext i32 %116 to i64
  %118 = sub i64 32, %117
  %119 = trunc i64 %118 to i32
  %120 = ashr i32 %113, %119
  %121 = or i32 %105, %120
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %63
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %18, align 4
  br label %57

129:                                              ; preds = %57
  %130 = load i32, i32* @DI_OK, align 4
  store i32 %130, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %329

131:                                              ; preds = %53
  store i32 0, i32* %18, align 4
  br label %132

132:                                              ; preds = %240, %131
  %133 = load i32, i32* %18, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %243

138:                                              ; preds = %132
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %12, align 8
  %149 = and i64 %147, %148
  %150 = load i64, i64* %12, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %216

152:                                              ; preds = %138
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = call i64 @semantic_to_obj_id(%struct.TYPE_12__* %153, i64 %162)
  store i64 %163, i64* %22, align 8
  %164 = load i64, i64* %22, align 8
  %165 = call i64 @DIDFT_GETTYPE(i64 %164)
  store i64 %165, i64* %23, align 8
  %166 = load i64, i64* %22, align 8
  %167 = call i64 @DIDFT_GETINSTANCE(i64 %166)
  store i64 %167, i64* %24, align 8
  %168 = load i64, i64* %23, align 8
  %169 = load i64, i64* @DIDFT_PSHBUTTON, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %152
  %172 = load i64, i64* @DIDFT_BUTTON, align 8
  store i64 %172, i64* %23, align 8
  br label %173

173:                                              ; preds = %171, %152
  %174 = load i64, i64* %23, align 8
  %175 = load i64, i64* @DIDFT_RELAXIS, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = load i64, i64* @DIDFT_AXIS, align 8
  store i64 %178, i64* %23, align 8
  br label %179

179:                                              ; preds = %177, %173
  %180 = load i32, i32* %13, align 4
  %181 = load i64, i64* %24, align 8
  %182 = load i64, i64* %23, align 8
  %183 = call i32* @dataformat_to_odf_by_type(i32 %180, i64 %181, i64 %182)
  store i32* %183, i32** %25, align 8
  %184 = load i32*, i32** %25, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %215

186:                                              ; preds = %179
  %187 = load i64, i64* %22, align 8
  %188 = trunc i64 %187 to i32
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  store i32 %188, i32* %195, align 4
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  store i32 %198, i32* %205, align 4
  %206 = load i32, i32* @DIAH_DEFAULT, align 4
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  store i32 %206, i32* %213, align 4
  %214 = load i64, i64* @TRUE, align 8
  store i64 %214, i64* %20, align 8
  br label %215

215:                                              ; preds = %186, %179
  br label %239

216:                                              ; preds = %138
  %217 = load i64, i64* %11, align 8
  %218 = load i64, i64* @DIDBAM_PRESERVE, align 8
  %219 = and i64 %217, %218
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %238, label %221

221:                                              ; preds = %216
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = load i32, i32* %18, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 3
  %229 = call i32 @memset(i32* %228, i32 0, i32 4)
  %230 = load i32, i32* @DIAH_UNMAPPED, align 4
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = load i32, i32* %18, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 2
  store i32 %230, i32* %237, align 4
  br label %238

238:                                              ; preds = %221, %216
  br label %239

239:                                              ; preds = %238, %215
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %18, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %18, align 4
  br label %132

243:                                              ; preds = %132
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  store i32 0, i32* %245, align 4
  store i32 0, i32* %18, align 4
  br label %246

246:                                              ; preds = %315, %243
  %247 = load i32, i32* %18, align 4
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %318

252:                                              ; preds = %246
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %254, align 8
  %256 = load i32, i32* %18, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %18, align 4
  %262 = mul nsw i32 %261, 2
  %263 = shl i32 %260, %262
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %265, align 8
  %267 = load i32, i32* %18, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %18, align 4
  %273 = mul nsw i32 %272, 2
  %274 = sext i32 %273 to i64
  %275 = sub i64 32, %274
  %276 = trunc i64 %275 to i32
  %277 = ashr i32 %271, %276
  %278 = or i32 %263, %277
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = xor i32 %281, %278
  store i32 %282, i32* %280, align 4
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = load i32, i32* %18, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %18, align 4
  %292 = mul nsw i32 %291, 2
  %293 = add nsw i32 %292, 5
  %294 = shl i32 %290, %293
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  %298 = load i32, i32* %18, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %18, align 4
  %304 = mul nsw i32 %303, 2
  %305 = add nsw i32 %304, 5
  %306 = sext i32 %305 to i64
  %307 = sub i64 32, %306
  %308 = trunc i64 %307 to i32
  %309 = ashr i32 %302, %308
  %310 = or i32 %294, %309
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = xor i32 %313, %310
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %252
  %316 = load i32, i32* %18, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %18, align 4
  br label %246

318:                                              ; preds = %246
  %319 = load i64, i64* %20, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %318
  %322 = load i32, i32* @DI_NOEFFECT, align 4
  store i32 %322, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %329

323:                                              ; preds = %318
  %324 = load i32, i32* %8, align 4
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %326 = load i32*, i32** %10, align 8
  %327 = load i64, i64* %11, align 8
  %328 = call i32 @IDirectInputDevice8WImpl_BuildActionMap(i32 %324, %struct.TYPE_11__* %325, i32* %326, i64 %327)
  store i32 %328, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %329

329:                                              ; preds = %323, %321, %129
  %330 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %330)
  %331 = load i32, i32* %7, align 4
  ret i32 %331
}

declare dso_local %struct.TYPE_12__* @impl_from_IDirectInputDevice8W(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetUserNameW(i32*, i64*) #1

declare dso_local i32 @lstrcpynW(i32*, i32*, i32) #1

declare dso_local i64 @load_mapping_settings(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i64 @semantic_to_obj_id(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @DIDFT_GETTYPE(i64) #1

declare dso_local i64 @DIDFT_GETINSTANCE(i64) #1

declare dso_local i32* @dataformat_to_odf_by_type(i32, i64, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IDirectInputDevice8WImpl_BuildActionMap(i32, %struct.TYPE_11__*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
