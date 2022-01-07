; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32* }

@CutoffMode_FractionLength = common dso_local global i64 0, align 8
@CutoffMode_TotalLength = common dso_local global i64 0, align 8
@DigitMode_Unique = common dso_local global i64 0, align 8
@NPY_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_28__*, i32, i64, i32, i64, i64, i32, i8*, i64, i32*)* @Dragon4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Dragon4(%struct.TYPE_28__* %0, i32 %1, i64 %2, i32 %3, i64 %4, i64 %5, i32 %6, i8* %7, i64 %8, i32* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_28__*, align 8
  %24 = alloca %struct.TYPE_28__*, align 8
  %25 = alloca %struct.TYPE_28__*, align 8
  %26 = alloca %struct.TYPE_28__*, align 8
  %27 = alloca %struct.TYPE_28__*, align 8
  %28 = alloca %struct.TYPE_28__*, align 8
  %29 = alloca %struct.TYPE_28__*, align 8
  %30 = alloca %struct.TYPE_28__*, align 8
  %31 = alloca double, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca %struct.TYPE_28__*, align 8
  %43 = alloca %struct.TYPE_28__*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca %struct.TYPE_28__*, align 8
  %48 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %12, align 8
  store i32 %1, i32* %13, align 4
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32* %9, i32** %21, align 8
  %49 = load i8*, i8** %19, align 8
  store i8* %49, i8** %22, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i64 0
  store %struct.TYPE_28__* %51, %struct.TYPE_28__** %23, align 8
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i64 1
  store %struct.TYPE_28__* %53, %struct.TYPE_28__** %24, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i64 2
  store %struct.TYPE_28__* %55, %struct.TYPE_28__** %25, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i64 3
  store %struct.TYPE_28__* %57, %struct.TYPE_28__** %26, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i64 4
  store %struct.TYPE_28__* %59, %struct.TYPE_28__** %28, align 8
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i64 5
  store %struct.TYPE_28__* %61, %struct.TYPE_28__** %29, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i64 6
  store %struct.TYPE_28__* %63, %struct.TYPE_28__** %30, align 8
  store double 0x3FD34413509F79FF, double* %31, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %65 = call i32 @BigInt_IsEven(%struct.TYPE_28__* %64)
  store i32 %65, i32* %37, align 4
  %66 = load i64, i64* %20, align 8
  %67 = icmp sgt i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @DEBUG_ASSERT(i32 %68)
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %71 = call i64 @BigInt_IsZero(%struct.TYPE_28__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %10
  %74 = load i8*, i8** %22, align 8
  store i8 48, i8* %74, align 1
  %75 = load i32*, i32** %21, align 8
  store i32 0, i32* %75, align 4
  store i64 1, i64* %11, align 8
  br label %521

76:                                               ; preds = %10
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %79 = call i32 @BigInt_Copy(%struct.TYPE_28__* %77, %struct.TYPE_28__* %78)
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %76
  %83 = load i32, i32* %13, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 2
  %89 = call i32 @BigInt_ShiftLeft(%struct.TYPE_28__* %86, i32 %88)
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %91 = call i32 @BigInt_Set_uint32(%struct.TYPE_28__* %90, i32 4)
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @BigInt_Pow2(%struct.TYPE_28__* %92, i32 %93)
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  %98 = call i32 @BigInt_Pow2(%struct.TYPE_28__* %95, i32 %97)
  br label %111

99:                                               ; preds = %82
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %101 = call i32 @BigInt_ShiftLeft(%struct.TYPE_28__* %100, i32 2)
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 0, %103
  %105 = add nsw i32 %104, 2
  %106 = call i32 @BigInt_Pow2(%struct.TYPE_28__* %102, i32 %105)
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %108 = call i32 @BigInt_Set_uint32(%struct.TYPE_28__* %107, i32 1)
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %110 = call i32 @BigInt_Set_uint32(%struct.TYPE_28__* %109, i32 2)
  br label %111

111:                                              ; preds = %99, %85
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  store %struct.TYPE_28__* %112, %struct.TYPE_28__** %27, align 8
  br label %138

113:                                              ; preds = %76
  %114 = load i32, i32* %13, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i32 @BigInt_ShiftLeft(%struct.TYPE_28__* %117, i32 %119)
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %122 = call i32 @BigInt_Set_uint32(%struct.TYPE_28__* %121, i32 2)
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @BigInt_Pow2(%struct.TYPE_28__* %123, i32 %124)
  br label %136

126:                                              ; preds = %113
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %128 = call i32 @BigInt_ShiftLeft(%struct.TYPE_28__* %127, i32 1)
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sub nsw i32 0, %130
  %132 = add nsw i32 %131, 1
  %133 = call i32 @BigInt_Pow2(%struct.TYPE_28__* %129, i32 %132)
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %135 = call i32 @BigInt_Set_uint32(%struct.TYPE_28__* %134, i32 1)
  br label %136

136:                                              ; preds = %126, %116
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  store %struct.TYPE_28__* %137, %struct.TYPE_28__** %27, align 8
  br label %138

138:                                              ; preds = %136, %111
  %139 = load i64, i64* %14, align 8
  %140 = trunc i64 %139 to i32
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %140, %141
  %143 = sitofp i32 %142 to double
  %144 = fmul double %143, 0x3FD34413509F79FF
  %145 = fsub double %144, 6.900000e-01
  %146 = call i64 @ceil(double %145)
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %32, align 4
  %148 = load i32, i32* %18, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %138
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* @CutoffMode_FractionLength, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load i32, i32* %32, align 4
  %156 = load i32, i32* %18, align 4
  %157 = sub nsw i32 0, %156
  %158 = icmp sle i32 %155, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i32, i32* %18, align 4
  %161 = sub nsw i32 0, %160
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %32, align 4
  br label %163

163:                                              ; preds = %159, %154, %150, %138
  %164 = load i32, i32* %32, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %168 = load i32, i32* %32, align 4
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %170 = call i32 @BigInt_MultiplyPow10(%struct.TYPE_28__* %167, i32 %168, %struct.TYPE_28__* %169)
  br label %205

171:                                              ; preds = %163
  %172 = load i32, i32* %32, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %204

174:                                              ; preds = %171
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  store %struct.TYPE_28__* %175, %struct.TYPE_28__** %42, align 8
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  store %struct.TYPE_28__* %176, %struct.TYPE_28__** %43, align 8
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %43, align 8
  %178 = load i32, i32* %32, align 4
  %179 = sub nsw i32 0, %178
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  %181 = call i32 @BigInt_Pow10(%struct.TYPE_28__* %177, i32 %179, %struct.TYPE_28__* %180)
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %43, align 8
  %185 = call i32 @BigInt_Multiply(%struct.TYPE_28__* %182, %struct.TYPE_28__* %183, %struct.TYPE_28__* %184)
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  %188 = call i32 @BigInt_Copy(%struct.TYPE_28__* %186, %struct.TYPE_28__* %187)
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %43, align 8
  %192 = call i32 @BigInt_Multiply(%struct.TYPE_28__* %189, %struct.TYPE_28__* %190, %struct.TYPE_28__* %191)
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  %195 = call i32 @BigInt_Copy(%struct.TYPE_28__* %193, %struct.TYPE_28__* %194)
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %198 = icmp ne %struct.TYPE_28__* %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %174
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %202 = call i32 @BigInt_Multiply2(%struct.TYPE_28__* %200, %struct.TYPE_28__* %201)
  br label %203

203:                                              ; preds = %199, %174
  br label %204

204:                                              ; preds = %203, %171
  br label %205

205:                                              ; preds = %204, %166
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %208 = call i64 @BigInt_Compare(%struct.TYPE_28__* %206, %struct.TYPE_28__* %207)
  %209 = icmp sge i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32, i32* %32, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %32, align 4
  br label %226

213:                                              ; preds = %205
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %215 = call i32 @BigInt_Multiply10(%struct.TYPE_28__* %214)
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %217 = call i32 @BigInt_Multiply10(%struct.TYPE_28__* %216)
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %220 = icmp ne %struct.TYPE_28__* %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %213
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %224 = call i32 @BigInt_Multiply2(%struct.TYPE_28__* %222, %struct.TYPE_28__* %223)
  br label %225

225:                                              ; preds = %221, %213
  br label %226

226:                                              ; preds = %225, %210
  %227 = load i32, i32* %32, align 4
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* %20, align 8
  %230 = sub nsw i64 %228, %229
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %33, align 4
  %232 = load i32, i32* %18, align 4
  %233 = icmp sge i32 %232, 0
  br i1 %233, label %234, label %258

234:                                              ; preds = %226
  %235 = load i64, i64* %17, align 8
  %236 = load i64, i64* @CutoffMode_TotalLength, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %248

238:                                              ; preds = %234
  %239 = load i32, i32* %32, align 4
  %240 = load i32, i32* %18, align 4
  %241 = sub nsw i32 %239, %240
  store i32 %241, i32* %44, align 4
  %242 = load i32, i32* %44, align 4
  %243 = load i32, i32* %33, align 4
  %244 = icmp sgt i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %238
  %246 = load i32, i32* %44, align 4
  store i32 %246, i32* %33, align 4
  br label %247

247:                                              ; preds = %245, %238
  br label %257

248:                                              ; preds = %234
  %249 = load i32, i32* %18, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %44, align 4
  %251 = load i32, i32* %44, align 4
  %252 = load i32, i32* %33, align 4
  %253 = icmp sgt i32 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = load i32, i32* %44, align 4
  store i32 %255, i32* %33, align 4
  br label %256

256:                                              ; preds = %254, %248
  br label %257

257:                                              ; preds = %256, %247
  br label %258

258:                                              ; preds = %257, %226
  %259 = load i32, i32* %32, align 4
  %260 = sub nsw i32 %259, 1
  %261 = load i32*, i32** %21, align 8
  store i32 %260, i32* %261, align 4
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp sgt i32 %264, 0
  %266 = zext i1 %265 to i32
  %267 = call i32 @DEBUG_ASSERT(i32 %266)
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %272 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sub nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %270, i64 %275
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %34, align 4
  %278 = load i32, i32* %34, align 4
  %279 = icmp slt i32 %278, 8
  br i1 %279, label %283, label %280

280:                                              ; preds = %258
  %281 = load i32, i32* %34, align 4
  %282 = icmp sgt i32 %281, 429496729
  br i1 %282, label %283, label %318

283:                                              ; preds = %280, %258
  %284 = load i32, i32* %34, align 4
  %285 = call i64 @LogBase2_32(i32 %284)
  store i64 %285, i64* %45, align 8
  %286 = load i64, i64* %45, align 8
  %287 = icmp slt i64 %286, 3
  br i1 %287, label %291, label %288

288:                                              ; preds = %283
  %289 = load i64, i64* %45, align 8
  %290 = icmp sgt i64 %289, 27
  br label %291

291:                                              ; preds = %288, %283
  %292 = phi i1 [ true, %283 ], [ %290, %288 ]
  %293 = zext i1 %292 to i32
  %294 = call i32 @DEBUG_ASSERT(i32 %293)
  %295 = load i64, i64* %45, align 8
  %296 = sub nsw i64 59, %295
  %297 = srem i64 %296, 32
  store i64 %297, i64* %46, align 8
  %298 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %299 = load i64, i64* %46, align 8
  %300 = trunc i64 %299 to i32
  %301 = call i32 @BigInt_ShiftLeft(%struct.TYPE_28__* %298, i32 %300)
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %303 = load i64, i64* %46, align 8
  %304 = trunc i64 %303 to i32
  %305 = call i32 @BigInt_ShiftLeft(%struct.TYPE_28__* %302, i32 %304)
  %306 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %307 = load i64, i64* %46, align 8
  %308 = trunc i64 %307 to i32
  %309 = call i32 @BigInt_ShiftLeft(%struct.TYPE_28__* %306, i32 %308)
  %310 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %311 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %312 = icmp ne %struct.TYPE_28__* %310, %311
  br i1 %312, label %313, label %317

313:                                              ; preds = %291
  %314 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %315 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %316 = call i32 @BigInt_Multiply2(%struct.TYPE_28__* %314, %struct.TYPE_28__* %315)
  br label %317

317:                                              ; preds = %313, %291
  br label %318

318:                                              ; preds = %317, %280
  %319 = load i64, i64* %16, align 8
  %320 = load i64, i64* @DigitMode_Unique, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %400

322:                                              ; preds = %318
  br label %323

323:                                              ; preds = %398, %322
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  store %struct.TYPE_28__* %324, %struct.TYPE_28__** %47, align 8
  %325 = load i32, i32* %32, align 4
  %326 = sub nsw i32 %325, 1
  store i32 %326, i32* %32, align 4
  %327 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %329 = call i64 @BigInt_DivideWithRemainder_MaxQuotient9(%struct.TYPE_28__* %327, %struct.TYPE_28__* %328)
  store i64 %329, i64* %35, align 8
  %330 = load i64, i64* %35, align 8
  %331 = icmp slt i64 %330, 10
  %332 = zext i1 %331 to i32
  %333 = call i32 @DEBUG_ASSERT(i32 %332)
  %334 = load %struct.TYPE_28__*, %struct.TYPE_28__** %47, align 8
  %335 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %336 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %337 = call i32 @BigInt_Add(%struct.TYPE_28__* %334, %struct.TYPE_28__* %335, %struct.TYPE_28__* %336)
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %340 = call i64 @BigInt_Compare(%struct.TYPE_28__* %338, %struct.TYPE_28__* %339)
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %38, align 4
  %342 = load i32, i32* %37, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %323
  %345 = load i32, i32* %38, align 4
  %346 = icmp sle i32 %345, 0
  %347 = zext i1 %346 to i32
  br label %352

348:                                              ; preds = %323
  %349 = load i32, i32* %38, align 4
  %350 = icmp slt i32 %349, 0
  %351 = zext i1 %350 to i32
  br label %352

352:                                              ; preds = %348, %344
  %353 = phi i32 [ %347, %344 ], [ %351, %348 ]
  store i32 %353, i32* %39, align 4
  %354 = load %struct.TYPE_28__*, %struct.TYPE_28__** %47, align 8
  %355 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %356 = call i64 @BigInt_Compare(%struct.TYPE_28__* %354, %struct.TYPE_28__* %355)
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %38, align 4
  %358 = load i32, i32* %37, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %352
  %361 = load i32, i32* %38, align 4
  %362 = icmp sge i32 %361, 0
  %363 = zext i1 %362 to i32
  br label %368

364:                                              ; preds = %352
  %365 = load i32, i32* %38, align 4
  %366 = icmp sgt i32 %365, 0
  %367 = zext i1 %366 to i32
  br label %368

368:                                              ; preds = %364, %360
  %369 = phi i32 [ %363, %360 ], [ %367, %364 ]
  store i32 %369, i32* %40, align 4
  %370 = load i32, i32* %39, align 4
  %371 = load i32, i32* %40, align 4
  %372 = or i32 %370, %371
  %373 = load i32, i32* %32, align 4
  %374 = load i32, i32* %33, align 4
  %375 = icmp eq i32 %373, %374
  %376 = zext i1 %375 to i32
  %377 = or i32 %372, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %368
  br label %399

380:                                              ; preds = %368
  %381 = load i64, i64* %35, align 8
  %382 = add nsw i64 48, %381
  %383 = trunc i64 %382 to i8
  %384 = load i8*, i8** %22, align 8
  store i8 %383, i8* %384, align 1
  %385 = load i8*, i8** %22, align 8
  %386 = getelementptr inbounds i8, i8* %385, i32 1
  store i8* %386, i8** %22, align 8
  %387 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %388 = call i32 @BigInt_Multiply10(%struct.TYPE_28__* %387)
  %389 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %390 = call i32 @BigInt_Multiply10(%struct.TYPE_28__* %389)
  %391 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %392 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %393 = icmp ne %struct.TYPE_28__* %391, %392
  br i1 %393, label %394, label %398

394:                                              ; preds = %380
  %395 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %396 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %397 = call i32 @BigInt_Multiply2(%struct.TYPE_28__* %395, %struct.TYPE_28__* %396)
  br label %398

398:                                              ; preds = %394, %380
  br label %323

399:                                              ; preds = %379
  br label %435

400:                                              ; preds = %318
  %401 = load i32, i32* @NPY_FALSE, align 4
  store i32 %401, i32* %39, align 4
  %402 = load i32, i32* @NPY_FALSE, align 4
  store i32 %402, i32* %40, align 4
  br label %403

403:                                              ; preds = %425, %400
  %404 = load i32, i32* %32, align 4
  %405 = sub nsw i32 %404, 1
  store i32 %405, i32* %32, align 4
  %406 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %407 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %408 = call i64 @BigInt_DivideWithRemainder_MaxQuotient9(%struct.TYPE_28__* %406, %struct.TYPE_28__* %407)
  store i64 %408, i64* %35, align 8
  %409 = load i64, i64* %35, align 8
  %410 = icmp slt i64 %409, 10
  %411 = zext i1 %410 to i32
  %412 = call i32 @DEBUG_ASSERT(i32 %411)
  %413 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %414 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = icmp eq i32 %415, 0
  %417 = zext i1 %416 to i32
  %418 = load i32, i32* %32, align 4
  %419 = load i32, i32* %33, align 4
  %420 = icmp eq i32 %418, %419
  %421 = zext i1 %420 to i32
  %422 = or i32 %417, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %403
  br label %434

425:                                              ; preds = %403
  %426 = load i64, i64* %35, align 8
  %427 = add nsw i64 48, %426
  %428 = trunc i64 %427 to i8
  %429 = load i8*, i8** %22, align 8
  store i8 %428, i8* %429, align 1
  %430 = load i8*, i8** %22, align 8
  %431 = getelementptr inbounds i8, i8* %430, i32 1
  store i8* %431, i8** %22, align 8
  %432 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %433 = call i32 @BigInt_Multiply10(%struct.TYPE_28__* %432)
  br label %403

434:                                              ; preds = %424
  br label %435

435:                                              ; preds = %434, %399
  %436 = load i32, i32* %39, align 4
  store i32 %436, i32* %41, align 4
  %437 = load i32, i32* %39, align 4
  %438 = load i32, i32* %40, align 4
  %439 = icmp eq i32 %437, %438
  br i1 %439, label %440, label %458

440:                                              ; preds = %435
  %441 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %442 = call i32 @BigInt_Multiply2_inplace(%struct.TYPE_28__* %441)
  %443 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %444 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %445 = call i64 @BigInt_Compare(%struct.TYPE_28__* %443, %struct.TYPE_28__* %444)
  %446 = trunc i64 %445 to i32
  store i32 %446, i32* %48, align 4
  %447 = load i32, i32* %48, align 4
  %448 = icmp slt i32 %447, 0
  %449 = zext i1 %448 to i32
  store i32 %449, i32* %41, align 4
  %450 = load i32, i32* %48, align 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %457

452:                                              ; preds = %440
  %453 = load i64, i64* %35, align 8
  %454 = and i64 %453, 1
  %455 = icmp eq i64 %454, 0
  %456 = zext i1 %455 to i32
  store i32 %456, i32* %41, align 4
  br label %457

457:                                              ; preds = %452, %440
  br label %458

458:                                              ; preds = %457, %435
  %459 = load i32, i32* %41, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %468

461:                                              ; preds = %458
  %462 = load i64, i64* %35, align 8
  %463 = add nsw i64 48, %462
  %464 = trunc i64 %463 to i8
  %465 = load i8*, i8** %22, align 8
  store i8 %464, i8* %465, align 1
  %466 = load i8*, i8** %22, align 8
  %467 = getelementptr inbounds i8, i8* %466, i32 1
  store i8* %467, i8** %22, align 8
  br label %509

468:                                              ; preds = %458
  %469 = load i64, i64* %35, align 8
  %470 = icmp eq i64 %469, 9
  br i1 %470, label %471, label %500

471:                                              ; preds = %468
  br label %472

472:                                              ; preds = %498, %471
  %473 = load i8*, i8** %22, align 8
  %474 = load i8*, i8** %19, align 8
  %475 = icmp eq i8* %473, %474
  br i1 %475, label %476, label %483

476:                                              ; preds = %472
  %477 = load i8*, i8** %22, align 8
  store i8 49, i8* %477, align 1
  %478 = load i8*, i8** %22, align 8
  %479 = getelementptr inbounds i8, i8* %478, i32 1
  store i8* %479, i8** %22, align 8
  %480 = load i32*, i32** %21, align 8
  %481 = load i32, i32* %480, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %480, align 4
  br label %499

483:                                              ; preds = %472
  %484 = load i8*, i8** %22, align 8
  %485 = getelementptr inbounds i8, i8* %484, i32 -1
  store i8* %485, i8** %22, align 8
  %486 = load i8*, i8** %22, align 8
  %487 = load i8, i8* %486, align 1
  %488 = sext i8 %487 to i32
  %489 = icmp ne i32 %488, 57
  br i1 %489, label %490, label %498

490:                                              ; preds = %483
  %491 = load i8*, i8** %22, align 8
  %492 = load i8, i8* %491, align 1
  %493 = sext i8 %492 to i32
  %494 = add nsw i32 %493, 1
  %495 = trunc i32 %494 to i8
  store i8 %495, i8* %491, align 1
  %496 = load i8*, i8** %22, align 8
  %497 = getelementptr inbounds i8, i8* %496, i32 1
  store i8* %497, i8** %22, align 8
  br label %499

498:                                              ; preds = %483
  br label %472

499:                                              ; preds = %490, %476
  br label %508

500:                                              ; preds = %468
  %501 = load i64, i64* %35, align 8
  %502 = add nsw i64 48, %501
  %503 = add nsw i64 %502, 1
  %504 = trunc i64 %503 to i8
  %505 = load i8*, i8** %22, align 8
  store i8 %504, i8* %505, align 1
  %506 = load i8*, i8** %22, align 8
  %507 = getelementptr inbounds i8, i8* %506, i32 1
  store i8* %507, i8** %22, align 8
  br label %508

508:                                              ; preds = %500, %499
  br label %509

509:                                              ; preds = %508, %461
  %510 = load i8*, i8** %22, align 8
  %511 = load i8*, i8** %19, align 8
  %512 = ptrtoint i8* %510 to i64
  %513 = ptrtoint i8* %511 to i64
  %514 = sub i64 %512, %513
  store i64 %514, i64* %36, align 8
  %515 = load i64, i64* %36, align 8
  %516 = load i64, i64* %20, align 8
  %517 = icmp sle i64 %515, %516
  %518 = zext i1 %517 to i32
  %519 = call i32 @DEBUG_ASSERT(i32 %518)
  %520 = load i64, i64* %36, align 8
  store i64 %520, i64* %11, align 8
  br label %521

521:                                              ; preds = %509, %73
  %522 = load i64, i64* %11, align 8
  ret i64 %522
}

declare dso_local i32 @BigInt_IsEven(%struct.TYPE_28__*) #1

declare dso_local i32 @DEBUG_ASSERT(i32) #1

declare dso_local i64 @BigInt_IsZero(%struct.TYPE_28__*) #1

declare dso_local i32 @BigInt_Copy(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @BigInt_ShiftLeft(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @BigInt_Set_uint32(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @BigInt_Pow2(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @ceil(double) #1

declare dso_local i32 @BigInt_MultiplyPow10(%struct.TYPE_28__*, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @BigInt_Pow10(%struct.TYPE_28__*, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @BigInt_Multiply(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @BigInt_Multiply2(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i64 @BigInt_Compare(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @BigInt_Multiply10(%struct.TYPE_28__*) #1

declare dso_local i64 @LogBase2_32(i32) #1

declare dso_local i64 @BigInt_DivideWithRemainder_MaxQuotient9(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @BigInt_Add(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @BigInt_Multiply2_inplace(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
