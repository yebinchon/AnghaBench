; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlacrm_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zlacrm_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@zlacrm_.i__ = internal global i32 0, align 4
@zlacrm_.j = internal global i32 0, align 4
@zlacrm_.l = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c_b1034 = common dso_local global i8* null, align 8
@c_b328 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlacrm_(i32* %0, i32* %1, %struct.TYPE_5__* %2, i32* %3, i8** %4, i32* %5, %struct.TYPE_5__* %6, i32* %7, i8** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i8** %4, i8*** %15, align 8
  store i32* %5, i32** %16, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %17, align 8
  store i32* %7, i32** %18, align 8
  store i8** %8, i8*** %19, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %22, align 4
  %35 = load i32, i32* %22, align 4
  %36 = add nsw i32 1, %35
  store i32 %36, i32* %23, align 4
  %37 = load i32, i32* %23, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %39 = sext i32 %37 to i64
  %40 = sub i64 0, %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %13, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = add nsw i32 1, %44
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %21, align 4
  %47 = load i8**, i8*** %15, align 8
  %48 = sext i32 %46 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8** %50, i8*** %15, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %24, align 4
  %53 = load i32, i32* %24, align 4
  %54 = add nsw i32 1, %53
  store i32 %54, i32* %25, align 4
  %55 = load i32, i32* %25, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %57 = sext i32 %55 to i64
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %17, align 8
  %60 = load i8**, i8*** %19, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 -1
  store i8** %61, i8*** %19, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %9
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %9
  store i32 0, i32* %10, align 4
  br label %318

70:                                               ; preds = %65
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %26, align 4
  store i32 1, i32* @zlacrm_.j, align 4
  br label %73

73:                                               ; preds = %110, %70
  %74 = load i32, i32* @zlacrm_.j, align 4
  %75 = load i32, i32* %26, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %73
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %27, align 4
  store i32 1, i32* @zlacrm_.i__, align 4
  br label %80

80:                                               ; preds = %106, %77
  %81 = load i32, i32* @zlacrm_.i__, align 4
  %82 = load i32, i32* %27, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %80
  %85 = load i32, i32* @zlacrm_.i__, align 4
  %86 = load i32, i32* @zlacrm_.j, align 4
  %87 = load i32, i32* %22, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %85, %88
  store i32 %89, i32* %28, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %91 = load i32, i32* %28, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** %19, align 8
  %97 = load i32, i32* @zlacrm_.j, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %98, %100
  %102 = load i32, i32* @zlacrm_.i__, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %96, i64 %104
  store i8* %95, i8** %105, align 8
  br label %106

106:                                              ; preds = %84
  %107 = load i32, i32* @zlacrm_.i__, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @zlacrm_.i__, align 4
  br label %80

109:                                              ; preds = %80
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* @zlacrm_.j, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @zlacrm_.j, align 4
  br label %73

113:                                              ; preds = %73
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %115, %117
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @zlacrm_.l, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = load i8**, i8*** %19, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i32*, i32** %11, align 8
  %126 = load i8**, i8*** %15, align 8
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i32*, i32** %16, align 8
  %131 = load i8**, i8*** %19, align 8
  %132 = load i32, i32* @zlacrm_.l, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @dgemm_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %120, i32* %121, i32* %122, i8** @c_b1034, i8** %124, i32* %125, i8** %129, i32* %130, i8** @c_b328, i8** %134, i32* %135)
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %26, align 4
  store i32 1, i32* @zlacrm_.j, align 4
  br label %139

139:                                              ; preds = %185, %113
  %140 = load i32, i32* @zlacrm_.j, align 4
  %141 = load i32, i32* %26, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %188

143:                                              ; preds = %139
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %27, align 4
  store i32 1, i32* @zlacrm_.i__, align 4
  br label %146

146:                                              ; preds = %181, %143
  %147 = load i32, i32* @zlacrm_.i__, align 4
  %148 = load i32, i32* %27, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %184

150:                                              ; preds = %146
  %151 = load i32, i32* @zlacrm_.i__, align 4
  %152 = load i32, i32* @zlacrm_.j, align 4
  %153 = load i32, i32* %24, align 4
  %154 = mul nsw i32 %152, %153
  %155 = add nsw i32 %151, %154
  store i32 %155, i32* %28, align 4
  %156 = load i32, i32* @zlacrm_.l, align 4
  %157 = load i32, i32* @zlacrm_.j, align 4
  %158 = sub nsw i32 %157, 1
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %158, %160
  %162 = add nsw i32 %156, %161
  %163 = load i32, i32* @zlacrm_.i__, align 4
  %164 = add nsw i32 %162, %163
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %29, align 4
  %166 = load i8**, i8*** %19, align 8
  %167 = load i32, i32* %29, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %172 = load i32, i32* %28, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  store i8* %170, i8** %175, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %177 = load i32, i32* %28, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  store i32 0, i32* %180, align 8
  br label %181

181:                                              ; preds = %150
  %182 = load i32, i32* @zlacrm_.i__, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* @zlacrm_.i__, align 4
  br label %146

184:                                              ; preds = %146
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* @zlacrm_.j, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* @zlacrm_.j, align 4
  br label %139

188:                                              ; preds = %139
  %189 = load i32*, i32** %12, align 8
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %26, align 4
  store i32 1, i32* @zlacrm_.j, align 4
  br label %191

191:                                              ; preds = %226, %188
  %192 = load i32, i32* @zlacrm_.j, align 4
  %193 = load i32, i32* %26, align 4
  %194 = icmp sle i32 %192, %193
  br i1 %194, label %195, label %229

195:                                              ; preds = %191
  %196 = load i32*, i32** %11, align 8
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %27, align 4
  store i32 1, i32* @zlacrm_.i__, align 4
  br label %198

198:                                              ; preds = %222, %195
  %199 = load i32, i32* @zlacrm_.i__, align 4
  %200 = load i32, i32* %27, align 4
  %201 = icmp sle i32 %199, %200
  br i1 %201, label %202, label %225

202:                                              ; preds = %198
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %204 = load i32, i32* @zlacrm_.i__, align 4
  %205 = load i32, i32* @zlacrm_.j, align 4
  %206 = load i32, i32* %22, align 4
  %207 = mul nsw i32 %205, %206
  %208 = add nsw i32 %204, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i64 %209
  %211 = call i8* @d_imag(%struct.TYPE_5__* %210)
  %212 = load i8**, i8*** %19, align 8
  %213 = load i32, i32* @zlacrm_.j, align 4
  %214 = sub nsw i32 %213, 1
  %215 = load i32*, i32** %11, align 8
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %214, %216
  %218 = load i32, i32* @zlacrm_.i__, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %212, i64 %220
  store i8* %211, i8** %221, align 8
  br label %222

222:                                              ; preds = %202
  %223 = load i32, i32* @zlacrm_.i__, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* @zlacrm_.i__, align 4
  br label %198

225:                                              ; preds = %198
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* @zlacrm_.j, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* @zlacrm_.j, align 4
  br label %191

229:                                              ; preds = %191
  %230 = load i32*, i32** %11, align 8
  %231 = load i32*, i32** %12, align 8
  %232 = load i32*, i32** %12, align 8
  %233 = load i8**, i8*** %19, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 1
  %235 = load i32*, i32** %11, align 8
  %236 = load i8**, i8*** %15, align 8
  %237 = load i32, i32* %21, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  %240 = load i32*, i32** %16, align 8
  %241 = load i8**, i8*** %19, align 8
  %242 = load i32, i32* @zlacrm_.l, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i32*, i32** %11, align 8
  %246 = call i32 @dgemm_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %230, i32* %231, i32* %232, i8** @c_b1034, i8** %234, i32* %235, i8** %239, i32* %240, i8** @c_b328, i8** %244, i32* %245)
  %247 = load i32*, i32** %12, align 8
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %26, align 4
  store i32 1, i32* @zlacrm_.j, align 4
  br label %249

249:                                              ; preds = %314, %229
  %250 = load i32, i32* @zlacrm_.j, align 4
  %251 = load i32, i32* %26, align 4
  %252 = icmp sle i32 %250, %251
  br i1 %252, label %253, label %317

253:                                              ; preds = %249
  %254 = load i32*, i32** %11, align 8
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %27, align 4
  store i32 1, i32* @zlacrm_.i__, align 4
  br label %256

256:                                              ; preds = %310, %253
  %257 = load i32, i32* @zlacrm_.i__, align 4
  %258 = load i32, i32* %27, align 4
  %259 = icmp sle i32 %257, %258
  br i1 %259, label %260, label %313

260:                                              ; preds = %256
  %261 = load i32, i32* @zlacrm_.i__, align 4
  %262 = load i32, i32* @zlacrm_.j, align 4
  %263 = load i32, i32* %24, align 4
  %264 = mul nsw i32 %262, %263
  %265 = add nsw i32 %261, %264
  store i32 %265, i32* %28, align 4
  %266 = load i32, i32* @zlacrm_.i__, align 4
  %267 = load i32, i32* @zlacrm_.j, align 4
  %268 = load i32, i32* %24, align 4
  %269 = mul nsw i32 %267, %268
  %270 = add nsw i32 %266, %269
  store i32 %270, i32* %29, align 4
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %272 = load i32, i32* %29, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  store i8* %276, i8** %31, align 8
  %277 = load i32, i32* @zlacrm_.l, align 4
  %278 = load i32, i32* @zlacrm_.j, align 4
  %279 = sub nsw i32 %278, 1
  %280 = load i32*, i32** %11, align 8
  %281 = load i32, i32* %280, align 4
  %282 = mul nsw i32 %279, %281
  %283 = add nsw i32 %277, %282
  %284 = load i32, i32* @zlacrm_.i__, align 4
  %285 = add nsw i32 %283, %284
  %286 = sub nsw i32 %285, 1
  store i32 %286, i32* %30, align 4
  %287 = load i8*, i8** %31, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i8* %287, i8** %288, align 8
  %289 = load i8**, i8*** %19, align 8
  %290 = load i32, i32* %30, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %289, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = ptrtoint i8* %293 to i32
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %294, i32* %295, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %299 = load i32, i32* %28, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 1
  store i8* %297, i8** %302, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %306 = load i32, i32* %28, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 0
  store i32 %304, i32* %309, align 8
  br label %310

310:                                              ; preds = %260
  %311 = load i32, i32* @zlacrm_.i__, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* @zlacrm_.i__, align 4
  br label %256

313:                                              ; preds = %256
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* @zlacrm_.j, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* @zlacrm_.j, align 4
  br label %249

317:                                              ; preds = %249
  store i32 0, i32* %10, align 4
  br label %318

318:                                              ; preds = %317, %69
  %319 = load i32, i32* %10, align 4
  ret i32 %319
}

declare dso_local i32 @dgemm_(i8*, i8*, i32*, i32*, i32*, i8**, i8**, i32*, i8**, i32*, i8**, i8**, i32*) #1

declare dso_local i8* @d_imag(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
