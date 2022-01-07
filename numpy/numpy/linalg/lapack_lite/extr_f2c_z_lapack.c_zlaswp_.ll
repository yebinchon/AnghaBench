; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlaswp_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlaswp_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@zlaswp_.i__ = internal global i32 0, align 4
@zlaswp_.j = internal global i32 0, align 4
@zlaswp_.k = internal global i32 0, align 4
@zlaswp_.i1 = internal global i32 0, align 4
@zlaswp_.i2 = internal global i32 0, align 4
@zlaswp_.n32 = internal global i32 0, align 4
@zlaswp_.ip = internal global i32 0, align 4
@zlaswp_.ix = internal global i32 0, align 4
@zlaswp_.ix0 = internal global i32 0, align 4
@zlaswp_.inc = internal global i32 0, align 4
@zlaswp_.temp = internal global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlaswp_(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = add nsw i32 1, %26
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %30 = sext i32 %28 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %10, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 -1
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %7
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @zlaswp_.ix0, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @zlaswp_.i1, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* @zlaswp_.i2, align 4
  store i32 1, i32* @zlaswp_.inc, align 4
  br label %63

45:                                               ; preds = %7
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 1, %51
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %52, %54
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @zlaswp_.ix0, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* @zlaswp_.i1, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* @zlaswp_.i2, align 4
  store i32 -1, i32* @zlaswp_.inc, align 4
  br label %62

61:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %326

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %38
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 32
  %67 = shl i32 %66, 5
  store i32 %67, i32* @zlaswp_.n32, align 4
  %68 = load i32, i32* @zlaswp_.n32, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %199

70:                                               ; preds = %63
  %71 = load i32, i32* @zlaswp_.n32, align 4
  store i32 %71, i32* %18, align 4
  store i32 1, i32* @zlaswp_.j, align 4
  br label %72

72:                                               ; preds = %195, %70
  %73 = load i32, i32* @zlaswp_.j, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %198

76:                                               ; preds = %72
  %77 = load i32, i32* @zlaswp_.ix0, align 4
  store i32 %77, i32* @zlaswp_.ix, align 4
  %78 = load i32, i32* @zlaswp_.i2, align 4
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* @zlaswp_.inc, align 4
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* @zlaswp_.i1, align 4
  store i32 %80, i32* @zlaswp_.i__, align 4
  br label %81

81:                                               ; preds = %190, %76
  %82 = load i32, i32* %20, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* @zlaswp_.i__, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp sge i32 %85, %86
  %88 = zext i1 %87 to i32
  br label %94

89:                                               ; preds = %81
  %90 = load i32, i32* @zlaswp_.i__, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp sle i32 %90, %91
  %93 = zext i1 %92 to i32
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i32 [ %88, %84 ], [ %93, %89 ]
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %194

97:                                               ; preds = %94
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* @zlaswp_.ix, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* @zlaswp_.ip, align 4
  %103 = load i32, i32* @zlaswp_.ip, align 4
  %104 = load i32, i32* @zlaswp_.i__, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %185

106:                                              ; preds = %97
  %107 = load i32, i32* @zlaswp_.j, align 4
  %108 = add nsw i32 %107, 31
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* @zlaswp_.j, align 4
  store i32 %109, i32* @zlaswp_.k, align 4
  br label %110

110:                                              ; preds = %181, %106
  %111 = load i32, i32* @zlaswp_.k, align 4
  %112 = load i32, i32* %21, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %184

114:                                              ; preds = %110
  %115 = load i32, i32* @zlaswp_.i__, align 4
  %116 = load i32, i32* @zlaswp_.k, align 4
  %117 = load i32, i32* %16, align 4
  %118 = mul nsw i32 %116, %117
  %119 = add nsw i32 %115, %118
  store i32 %119, i32* %22, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zlaswp_.temp, i32 0, i32 1), align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %127 = load i32, i32* %22, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zlaswp_.temp, i32 0, i32 0), align 4
  %132 = load i32, i32* @zlaswp_.i__, align 4
  %133 = load i32, i32* @zlaswp_.k, align 4
  %134 = load i32, i32* %16, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 %132, %135
  store i32 %136, i32* %22, align 4
  %137 = load i32, i32* @zlaswp_.ip, align 4
  %138 = load i32, i32* @zlaswp_.k, align 4
  %139 = load i32, i32* %16, align 4
  %140 = mul nsw i32 %138, %139
  %141 = add nsw i32 %137, %140
  store i32 %141, i32* %23, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %149 = load i32, i32* %22, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  store i32 %147, i32* %152, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %154 = load i32, i32* %23, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %160 = load i32, i32* %22, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i32 %158, i32* %163, align 4
  %164 = load i32, i32* @zlaswp_.ip, align 4
  %165 = load i32, i32* @zlaswp_.k, align 4
  %166 = load i32, i32* %16, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %164, %167
  store i32 %168, i32* %22, align 4
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zlaswp_.temp, i32 0, i32 1), align 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %171 = load i32, i32* %22, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  store i32 %169, i32* %174, align 4
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zlaswp_.temp, i32 0, i32 0), align 4
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %177 = load i32, i32* %22, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 %175, i32* %180, align 4
  br label %181

181:                                              ; preds = %114
  %182 = load i32, i32* @zlaswp_.k, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* @zlaswp_.k, align 4
  br label %110

184:                                              ; preds = %110
  br label %185

185:                                              ; preds = %184, %97
  %186 = load i32*, i32** %15, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @zlaswp_.ix, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* @zlaswp_.ix, align 4
  br label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* @zlaswp_.i__, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* @zlaswp_.i__, align 4
  br label %81

194:                                              ; preds = %94
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* @zlaswp_.j, align 4
  %197 = add nsw i32 %196, 32
  store i32 %197, i32* @zlaswp_.j, align 4
  br label %72

198:                                              ; preds = %72
  br label %199

199:                                              ; preds = %198, %63
  %200 = load i32, i32* @zlaswp_.n32, align 4
  %201 = load i32*, i32** %9, align 8
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %200, %202
  br i1 %203, label %204, label %325

204:                                              ; preds = %199
  %205 = load i32, i32* @zlaswp_.n32, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* @zlaswp_.n32, align 4
  %207 = load i32, i32* @zlaswp_.ix0, align 4
  store i32 %207, i32* @zlaswp_.ix, align 4
  %208 = load i32, i32* @zlaswp_.i2, align 4
  store i32 %208, i32* %18, align 4
  %209 = load i32, i32* @zlaswp_.inc, align 4
  store i32 %209, i32* %20, align 4
  %210 = load i32, i32* @zlaswp_.i1, align 4
  store i32 %210, i32* @zlaswp_.i__, align 4
  br label %211

211:                                              ; preds = %320, %204
  %212 = load i32, i32* %20, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32, i32* @zlaswp_.i__, align 4
  %216 = load i32, i32* %18, align 4
  %217 = icmp sge i32 %215, %216
  %218 = zext i1 %217 to i32
  br label %224

219:                                              ; preds = %211
  %220 = load i32, i32* @zlaswp_.i__, align 4
  %221 = load i32, i32* %18, align 4
  %222 = icmp sle i32 %220, %221
  %223 = zext i1 %222 to i32
  br label %224

224:                                              ; preds = %219, %214
  %225 = phi i32 [ %218, %214 ], [ %223, %219 ]
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %324

227:                                              ; preds = %224
  %228 = load i32*, i32** %14, align 8
  %229 = load i32, i32* @zlaswp_.ix, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* @zlaswp_.ip, align 4
  %233 = load i32, i32* @zlaswp_.ip, align 4
  %234 = load i32, i32* @zlaswp_.i__, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %315

236:                                              ; preds = %227
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %19, align 4
  %239 = load i32, i32* @zlaswp_.n32, align 4
  store i32 %239, i32* @zlaswp_.k, align 4
  br label %240

240:                                              ; preds = %311, %236
  %241 = load i32, i32* @zlaswp_.k, align 4
  %242 = load i32, i32* %19, align 4
  %243 = icmp sle i32 %241, %242
  br i1 %243, label %244, label %314

244:                                              ; preds = %240
  %245 = load i32, i32* @zlaswp_.i__, align 4
  %246 = load i32, i32* @zlaswp_.k, align 4
  %247 = load i32, i32* %16, align 4
  %248 = mul nsw i32 %246, %247
  %249 = add nsw i32 %245, %248
  store i32 %249, i32* %21, align 4
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %251 = load i32, i32* %21, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zlaswp_.temp, i32 0, i32 1), align 4
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %257 = load i32, i32* %21, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zlaswp_.temp, i32 0, i32 0), align 4
  %262 = load i32, i32* @zlaswp_.i__, align 4
  %263 = load i32, i32* @zlaswp_.k, align 4
  %264 = load i32, i32* %16, align 4
  %265 = mul nsw i32 %263, %264
  %266 = add nsw i32 %262, %265
  store i32 %266, i32* %21, align 4
  %267 = load i32, i32* @zlaswp_.ip, align 4
  %268 = load i32, i32* @zlaswp_.k, align 4
  %269 = load i32, i32* %16, align 4
  %270 = mul nsw i32 %268, %269
  %271 = add nsw i32 %267, %270
  store i32 %271, i32* %22, align 4
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %273 = load i32, i32* %22, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 1
  store i32 %277, i32* %282, align 4
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %284 = load i32, i32* %22, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %290 = load i32, i32* %21, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  store i32 %288, i32* %293, align 4
  %294 = load i32, i32* @zlaswp_.ip, align 4
  %295 = load i32, i32* @zlaswp_.k, align 4
  %296 = load i32, i32* %16, align 4
  %297 = mul nsw i32 %295, %296
  %298 = add nsw i32 %294, %297
  store i32 %298, i32* %21, align 4
  %299 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zlaswp_.temp, i32 0, i32 1), align 4
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %301 = load i32, i32* %21, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 1
  store i32 %299, i32* %304, align 4
  %305 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @zlaswp_.temp, i32 0, i32 0), align 4
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %307 = load i32, i32* %21, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 0
  store i32 %305, i32* %310, align 4
  br label %311

311:                                              ; preds = %244
  %312 = load i32, i32* @zlaswp_.k, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* @zlaswp_.k, align 4
  br label %240

314:                                              ; preds = %240
  br label %315

315:                                              ; preds = %314, %227
  %316 = load i32*, i32** %15, align 8
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @zlaswp_.ix, align 4
  %319 = add nsw i32 %318, %317
  store i32 %319, i32* @zlaswp_.ix, align 4
  br label %320

320:                                              ; preds = %315
  %321 = load i32, i32* %20, align 4
  %322 = load i32, i32* @zlaswp_.i__, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* @zlaswp_.i__, align 4
  br label %211

324:                                              ; preds = %224
  br label %325

325:                                              ; preds = %324, %199
  store i32 0, i32* %8, align 4
  br label %326

326:                                              ; preds = %325, %61
  %327 = load i32, i32* %8, align 4
  ret i32 %327
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
