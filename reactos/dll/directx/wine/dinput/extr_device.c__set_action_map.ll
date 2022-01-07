; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c__set_action_map.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c__set_action_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_28__*, i32, i64 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i8*, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_20__, i32, i32 }
%struct.TYPE_25__ = type { i8*, %struct.TYPE_20__ }

@MAX_PATH = common dso_local global i32 0, align 4
@DIERR_ACQUIRED = common dso_local global i32 0, align 4
@DIDF_RELAXIS = common dso_local global i32 0, align 4
@IID_NULL = common dso_local global i32 0, align 4
@DIDSAM_FORCESAVE = common dso_local global i32 0, align 4
@DI_NOEFFECT = common dso_local global i32 0, align 4
@DIDFT_PSHBUTTON = common dso_local global i32 0, align 4
@DIDFT_BUTTON = common dso_local global i32 0, align 4
@DIDFT_RELAXIS = common dso_local global i32 0, align 4
@DIDFT_AXIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"obj %p, inst 0x%08x, type 0x%08x\0A\00", align 1
@DIPH_DEVICE = common dso_local global i8* null, align 8
@DIPROP_RANGE = common dso_local global i32 0, align 4
@DIPROP_BUFFERSIZE = common dso_local global i32 0, align 4
@DIDSAM_NOUSER = common dso_local global i32 0, align 4
@DIPROP_USERNAME = common dso_local global i32 0, align 4
@DI_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_set_action_map(i32 %0, %struct.TYPE_22__* %1, i8* %2, i32 %3, %struct.TYPE_23__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_29__, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_27__, align 8
  %16 = alloca %struct.TYPE_26__, align 8
  %17 = alloca %struct.TYPE_25__, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %11, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.TYPE_24__* @impl_from_IDirectInputDevice8W(i32 %34)
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %14, align 8
  %36 = load i32, i32* @MAX_PATH, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %18, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %19, align 8
  %40 = load i32, i32* @MAX_PATH, align 4
  store i32 %40, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %5
  %46 = load i32, i32* @DIERR_ACQUIRED, align 4
  store i32 %46, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %557

47:                                               ; preds = %5
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  store i32 32, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  store i32 12, i32* %49, align 4
  %50 = load i32, i32* @DIDF_RELAXIS, align 4
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 4
  store i32 %54, i32* %55, align 8
  store i32 0, i32* %22, align 4
  br label %56

56:                                               ; preds = %121, %47
  %57 = load i32, i32* %22, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %124

62:                                               ; preds = %56
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = load i32, i32* %22, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %22, align 4
  %72 = mul nsw i32 %71, 2
  %73 = shl i32 %70, %72
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 6
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  %77 = load i32, i32* %22, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %22, align 4
  %83 = mul nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = sub i64 32, %84
  %86 = trunc i64 %85 to i32
  %87 = ashr i32 %81, %86
  %88 = or i32 %73, %87
  %89 = load i32, i32* %21, align 4
  %90 = xor i32 %89, %88
  store i32 %90, i32* %21, align 4
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 6
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = load i32, i32* %22, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %22, align 4
  %100 = mul nsw i32 %99, 2
  %101 = add nsw i32 %100, 5
  %102 = shl i32 %98, %101
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = load i32, i32* %22, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %22, align 4
  %112 = mul nsw i32 %111, 2
  %113 = add nsw i32 %112, 5
  %114 = sext i32 %113 to i64
  %115 = sub i64 32, %114
  %116 = trunc i64 %115 to i32
  %117 = ashr i32 %110, %116
  %118 = or i32 %102, %117
  %119 = load i32, i32* %21, align 4
  %120 = xor i32 %119, %118
  store i32 %120, i32* %21, align 4
  br label %121

121:                                              ; preds = %62
  %122 = load i32, i32* %22, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %22, align 4
  br label %56

124:                                              ; preds = %56
  store i32 0, i32* %22, align 4
  br label %125

125:                                              ; preds = %185, %124
  %126 = load i32, i32* %22, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %188

131:                                              ; preds = %125
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 6
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = load i32, i32* %22, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 3
  %141 = call i64 @IsEqualGUID(i32* %133, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %181, label %143

143:                                              ; preds = %131
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 6
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %145, align 8
  %147 = load i32, i32* %22, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 3
  %151 = call i64 @IsEqualGUID(i32* @IID_NULL, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %184

153:                                              ; preds = %143
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 6
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  %157 = load i32, i32* %22, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %161, %164
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %181, label %170

170:                                              ; preds = %153
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 6
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = load i32, i32* %22, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, -16777216
  %180 = icmp eq i32 %179, -16777216
  br i1 %180, label %181, label %184

181:                                              ; preds = %170, %153, %131
  %182 = load i32, i32* %24, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %24, align 4
  br label %184

184:                                              ; preds = %181, %170, %143
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %22, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %22, align 4
  br label %125

188:                                              ; preds = %125
  %189 = load i32, i32* %24, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %21, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %191
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @DIDSAM_FORCESAVE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* @DI_NOEFFECT, align 4
  store i32 %203, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %557

204:                                              ; preds = %197, %191, %188
  %205 = load i32, i32* %21, align 4
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* %24, align 4
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = call i32 (...) @GetProcessHeap()
  %212 = load i32, i32* %24, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 12, %213
  %215 = trunc i64 %214 to i32
  %216 = call i8* @HeapAlloc(i32 %211, i32 0, i32 %215)
  %217 = bitcast i8* %216 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %217, %struct.TYPE_28__** %14, align 8
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %219 = ptrtoint %struct.TYPE_28__* %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 3
  store i64 %219, i64* %220, align 8
  %221 = load i32, i32* %24, align 4
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 2
  store i32 %221, i32* %222, align 8
  %223 = call i32 (...) @GetProcessHeap()
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %225, align 8
  %227 = call i32 @HeapFree(i32 %223, i32 0, %struct.TYPE_28__* %226)
  %228 = call i32 (...) @GetProcessHeap()
  %229 = load i32, i32* %24, align 4
  %230 = sext i32 %229 to i64
  %231 = mul i64 4, %230
  %232 = trunc i64 %231 to i32
  %233 = call i8* @HeapAlloc(i32 %228, i32 0, i32 %232)
  %234 = bitcast i8* %233 to %struct.TYPE_28__*
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 1
  store %struct.TYPE_28__* %234, %struct.TYPE_28__** %236, align 8
  store i32 0, i32* %22, align 4
  br label %237

237:                                              ; preds = %456, %204
  %238 = load i32, i32* %22, align 4
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %459

243:                                              ; preds = %237
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 6
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %247, align 8
  %249 = load i32, i32* %22, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 3
  %253 = call i64 @IsEqualGUID(i32* %245, i32* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %338

255:                                              ; preds = %243
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 6
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %257, align 8
  %259 = load i32, i32* %22, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @DIDFT_GETINSTANCE(i32 %263)
  store i32 %264, i32* %27, align 4
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 6
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %266, align 8
  %268 = load i32, i32* %22, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @DIDFT_GETTYPE(i32 %272)
  store i32 %273, i32* %28, align 4
  %274 = load i32, i32* %28, align 4
  %275 = load i32, i32* @DIDFT_PSHBUTTON, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %255
  %278 = load i32, i32* @DIDFT_BUTTON, align 4
  store i32 %278, i32* %28, align 4
  br label %279

279:                                              ; preds = %277, %255
  %280 = load i32, i32* %28, align 4
  %281 = load i32, i32* @DIDFT_RELAXIS, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %279
  %284 = load i32, i32* @DIDFT_AXIS, align 4
  store i32 %284, i32* %28, align 4
  br label %285

285:                                              ; preds = %283, %279
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %287 = load i32, i32* %27, align 4
  %288 = load i32, i32* %28, align 4
  %289 = call i64 @dataformat_to_odf_by_type(%struct.TYPE_23__* %286, i32 %287, i32 %288)
  store i64 %289, i64* %29, align 8
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %291 = load i32, i32* %23, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i64 %292
  %294 = load i64, i64* %29, align 8
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @memcpy(%struct.TYPE_28__* %293, i64 %294, i32 %297)
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 6
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %300, align 8
  %302 = load i32, i32* %22, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %308, align 8
  %310 = load i32, i32* %23, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %312, i32 0, i32 2
  store i32 %306, i32* %313, align 4
  %314 = load i32, i32* %25, align 4
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %316, align 8
  %318 = load i32, i32* %23, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 0
  store i32 %314, i32* %321, align 4
  %322 = load i32, i32* %25, align 4
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %324 = load i32, i32* %23, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %326, i32 0, i32 1
  store i32 %322, i32* %327, align 4
  %328 = load i32, i32* %28, align 4
  %329 = load i32, i32* @DIDFT_BUTTON, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i32 1, i32 4
  %334 = load i32, i32* %25, align 4
  %335 = add i32 %334, %333
  store i32 %335, i32* %25, align 4
  %336 = load i32, i32* %23, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %23, align 4
  br label %455

338:                                              ; preds = %243
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 6
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %340, align 8
  %342 = load i32, i32* %22, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = and i32 %346, %349
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = icmp eq i32 %350, %353
  br i1 %354, label %366, label %355

355:                                              ; preds = %338
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 6
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %357, align 8
  %359 = load i32, i32* %22, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = and i32 %363, -16777216
  %365 = icmp eq i32 %364, -16777216
  br i1 %365, label %366, label %454

366:                                              ; preds = %355, %338
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %368 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 6
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %369, align 8
  %371 = load i32, i32* %22, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @semantic_to_obj_id(%struct.TYPE_24__* %367, i32 %375)
  store i32 %376, i32* %30, align 4
  %377 = load i32, i32* %30, align 4
  %378 = call i32 @DIDFT_GETTYPE(i32 %377)
  store i32 %378, i32* %31, align 4
  %379 = load i32, i32* %30, align 4
  %380 = call i32 @DIDFT_GETINSTANCE(i32 %379)
  store i32 %380, i32* %32, align 4
  %381 = load i32, i32* %31, align 4
  %382 = load i32, i32* @DIDFT_PSHBUTTON, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %386

384:                                              ; preds = %366
  %385 = load i32, i32* @DIDFT_BUTTON, align 4
  store i32 %385, i32* %31, align 4
  br label %393

386:                                              ; preds = %366
  %387 = load i32, i32* %31, align 4
  %388 = load i32, i32* @DIDFT_RELAXIS, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %386
  %391 = load i32, i32* @DIDFT_AXIS, align 4
  store i32 %391, i32* %31, align 4
  br label %392

392:                                              ; preds = %390, %386
  br label %393

393:                                              ; preds = %392, %384
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %395 = load i32, i32* %32, align 4
  %396 = load i32, i32* %31, align 4
  %397 = call i64 @dataformat_to_odf_by_type(%struct.TYPE_23__* %394, i32 %395, i32 %396)
  store i64 %397, i64* %33, align 8
  %398 = load i64, i64* %33, align 8
  %399 = load i32, i32* %32, align 4
  %400 = load i32, i32* %31, align 4
  %401 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %398, i32 %399, i32 %400)
  %402 = load i64, i64* %33, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %453

404:                                              ; preds = %393
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %406 = load i32, i32* %23, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i64 %407
  %409 = load i64, i64* %33, align 8
  %410 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %411 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @memcpy(%struct.TYPE_28__* %408, i64 %409, i32 %412)
  %414 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %414, i32 0, i32 6
  %416 = load %struct.TYPE_21__*, %struct.TYPE_21__** %415, align 8
  %417 = load i32, i32* %22, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %423 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %422, i32 0, i32 1
  %424 = load %struct.TYPE_28__*, %struct.TYPE_28__** %423, align 8
  %425 = load i32, i32* %23, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %427, i32 0, i32 2
  store i32 %421, i32* %428, align 4
  %429 = load i32, i32* %25, align 4
  %430 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %431 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %430, i32 0, i32 1
  %432 = load %struct.TYPE_28__*, %struct.TYPE_28__** %431, align 8
  %433 = load i32, i32* %23, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %435, i32 0, i32 0
  store i32 %429, i32* %436, align 4
  %437 = load i32, i32* %25, align 4
  %438 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %439 = load i32, i32* %23, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %441, i32 0, i32 1
  store i32 %437, i32* %442, align 4
  %443 = load i32, i32* %31, align 4
  %444 = load i32, i32* @DIDFT_BUTTON, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  %447 = zext i1 %446 to i64
  %448 = select i1 %446, i32 1, i32 4
  %449 = load i32, i32* %25, align 4
  %450 = add i32 %449, %448
  store i32 %450, i32* %25, align 4
  %451 = load i32, i32* %23, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %23, align 4
  br label %453

453:                                              ; preds = %404, %393
  br label %454

454:                                              ; preds = %453, %355
  br label %455

455:                                              ; preds = %454, %285
  br label %456

456:                                              ; preds = %455
  %457 = load i32, i32* %22, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %22, align 4
  br label %237

459:                                              ; preds = %237
  %460 = load i32, i32* %23, align 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %467

462:                                              ; preds = %459
  %463 = call i32 (...) @GetProcessHeap()
  %464 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %465 = call i32 @HeapFree(i32 %463, i32 0, %struct.TYPE_28__* %464)
  %466 = load i32, i32* @DI_NOEFFECT, align 4
  store i32 %466, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %557

467:                                              ; preds = %459
  %468 = load i32, i32* %23, align 4
  %469 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 2
  store i32 %468, i32* %469, align 8
  %470 = load i32, i32* %7, align 4
  %471 = call i32 @IDirectInputDevice8_SetDataFormat(i32 %470, %struct.TYPE_29__* %13)
  %472 = call i32 (...) @GetProcessHeap()
  %473 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %474 = call i32 @HeapFree(i32 %472, i32 0, %struct.TYPE_28__* %473)
  %475 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i32 0, i32 0
  store i32 32, i32* %476, align 8
  %477 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %477, i32 0, i32 5
  %479 = load i32, i32* %478, align 4
  %480 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  store i32 %479, i32* %480, align 4
  %481 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %482 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %481, i32 0, i32 4
  %483 = load i32, i32* %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  store i32 %483, i32* %484, align 8
  %485 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %485, i32 0, i32 1
  store i32 4, i32* %486, align 4
  %487 = load i8*, i8** @DIPH_DEVICE, align 8
  %488 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %488, i32 0, i32 2
  store i8* %487, i8** %489, align 8
  %490 = load i32, i32* %7, align 4
  %491 = load i32, i32* @DIPROP_RANGE, align 4
  %492 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %493 = call i32 @IDirectInputDevice8_SetProperty(i32 %490, i32 %491, %struct.TYPE_20__* %492)
  %494 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %495 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %494, i32 0, i32 3
  %496 = load i64, i64* %495, align 8
  %497 = icmp sgt i64 %496, 0
  br i1 %497, label %498, label %514

498:                                              ; preds = %467
  %499 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %500 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %499, i32 0, i32 0
  store i32 32, i32* %500, align 8
  %501 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %502 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %501, i32 0, i32 3
  %503 = load i64, i64* %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  store i64 %503, i64* %504, align 8
  %505 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %505, i32 0, i32 1
  store i32 4, i32* %506, align 4
  %507 = load i8*, i8** @DIPH_DEVICE, align 8
  %508 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %509 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %508, i32 0, i32 2
  store i8* %507, i8** %509, align 8
  %510 = load i32, i32* %7, align 4
  %511 = load i32, i32* @DIPROP_BUFFERSIZE, align 4
  %512 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %513 = call i32 @IDirectInputDevice8_SetProperty(i32 %510, i32 %511, %struct.TYPE_20__* %512)
  br label %514

514:                                              ; preds = %498, %467
  %515 = load i8*, i8** %9, align 8
  %516 = icmp eq i8* %515, null
  br i1 %516, label %517, label %519

517:                                              ; preds = %514
  %518 = call i32 @GetUserNameW(i8* %39, i32* %20)
  br label %523

519:                                              ; preds = %514
  %520 = load i8*, i8** %9, align 8
  %521 = load i32, i32* @MAX_PATH, align 4
  %522 = call i32 @lstrcpynW(i8* %39, i8* %520, i32 %521)
  br label %523

523:                                              ; preds = %519, %517
  %524 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %524, i32 0, i32 0
  store i32 32, i32* %525, align 8
  %526 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %527 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %526, i32 0, i32 1
  store i32 4, i32* %527, align 4
  %528 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %529 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %528, i32 0, i32 3
  store i64 0, i64* %529, align 8
  %530 = load i8*, i8** @DIPH_DEVICE, align 8
  %531 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %531, i32 0, i32 2
  store i8* %530, i8** %532, align 8
  %533 = load i32, i32* %10, align 4
  %534 = load i32, i32* @DIDSAM_NOUSER, align 4
  %535 = and i32 %533, %534
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %541

537:                                              ; preds = %523
  %538 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %539 = load i8*, i8** %538, align 8
  %540 = getelementptr inbounds i8, i8* %539, i64 0
  store i8 0, i8* %540, align 1
  br label %548

541:                                              ; preds = %523
  %542 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %543 = load i8*, i8** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %545 = load i8*, i8** %544, align 8
  %546 = call i32 @ARRAY_SIZE(i8* %545)
  %547 = call i32 @lstrcpynW(i8* %543, i8* %39, i32 %546)
  br label %548

548:                                              ; preds = %541, %537
  %549 = load i32, i32* %7, align 4
  %550 = load i32, i32* @DIPROP_USERNAME, align 4
  %551 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %552 = call i32 @IDirectInputDevice8_SetProperty(i32 %549, i32 %550, %struct.TYPE_20__* %551)
  %553 = load i32, i32* %7, align 4
  %554 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %555 = call i32 @save_mapping_settings(i32 %553, %struct.TYPE_22__* %554, i8* %39)
  %556 = load i32, i32* @DI_OK, align 4
  store i32 %556, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %557

557:                                              ; preds = %548, %462, %202, %45
  %558 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %558)
  %559 = load i32, i32* %6, align 4
  ret i32 %559
}

declare dso_local %struct.TYPE_24__* @impl_from_IDirectInputDevice8W(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @DIDFT_GETINSTANCE(i32) #1

declare dso_local i32 @DIDFT_GETTYPE(i32) #1

declare dso_local i64 @dataformat_to_odf_by_type(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_28__*, i64, i32) #1

declare dso_local i32 @semantic_to_obj_id(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @TRACE(i8*, i64, i32, i32) #1

declare dso_local i32 @IDirectInputDevice8_SetDataFormat(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @IDirectInputDevice8_SetProperty(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @GetUserNameW(i8*, i32*) #1

declare dso_local i32 @lstrcpynW(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @save_mapping_settings(i32, %struct.TYPE_22__*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
