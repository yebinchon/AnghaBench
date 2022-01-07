; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zunghr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zunghr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@zunghr_.i__ = internal global i32 0, align 4
@zunghr_.j = internal global i32 0, align 4
@zunghr_.nb = internal global i32 0, align 4
@zunghr_.nh = internal global i32 0, align 4
@zunghr_.iinfo = internal global i32 0, align 4
@zunghr_.lwkopt = internal global i32 0, align 4
@zunghr_.lquery = internal global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ZUNGQR\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ZUNGHR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zunghr_(i32* %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, i32* %4, %struct.TYPE_5__* %5, %struct.TYPE_5__* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = add nsw i32 1, %28
  store i32 %29, i32* %21, align 4
  %30 = load i32, i32* %21, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %32 = sext i32 %30 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %14, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 -1
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %16, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 -1
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %17, align 8
  %39 = load i32*, i32** %19, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* @zunghr_.nh, align 4
  %45 = load i32*, i32** %18, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, -1
  %48 = zext i1 %47 to i32
  store i32 %48, i32* @zunghr_.lquery, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %9
  %53 = load i32*, i32** %19, align 8
  store i32 -1, i32* %53, align 4
  br label %108

54:                                               ; preds = %9
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @max(i32 1, i32 %62)
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58, %54
  %66 = load i32*, i32** %19, align 8
  store i32 -2, i32* %66, align 4
  br label %107

67:                                               ; preds = %58
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @min(i32 %71, i32 %73)
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %67
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76, %67
  %83 = load i32*, i32** %19, align 8
  store i32 -3, i32* %83, align 4
  br label %106

84:                                               ; preds = %76
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @max(i32 1, i32 %88)
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32*, i32** %19, align 8
  store i32 -5, i32* %92, align 4
  br label %105

93:                                               ; preds = %84
  %94 = load i32*, i32** %18, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @zunghr_.nh, align 4
  %97 = call i32 @max(i32 1, i32 %96)
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32, i32* @zunghr_.lquery, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = load i32*, i32** %19, align 8
  store i32 -8, i32* %103, align 4
  br label %104

104:                                              ; preds = %102, %99, %93
  br label %105

105:                                              ; preds = %104, %91
  br label %106

106:                                              ; preds = %105, %82
  br label %107

107:                                              ; preds = %106, %65
  br label %108

108:                                              ; preds = %107, %52
  %109 = load i32*, i32** %19, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  %113 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* @zunghr_.nh, i32* @zunghr_.nh, i32* @zunghr_.nh, i32* @c_n1, i32 6, i32 1)
  store i32 %113, i32* @zunghr_.nb, align 4
  %114 = load i32, i32* @zunghr_.nh, align 4
  %115 = call i32 @max(i32 1, i32 %114)
  %116 = load i32, i32* @zunghr_.nb, align 4
  %117 = mul nsw i32 %115, %116
  store i32 %117, i32* @zunghr_.lwkopt, align 4
  %118 = load i32, i32* @zunghr_.lwkopt, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = ptrtoint i8* %120 to i32
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %112, %108
  %129 = load i32*, i32** %19, align 8
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32*, i32** %19, align 8
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %22, align 4
  %136 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  store i32 0, i32* %10, align 4
  br label %412

137:                                              ; preds = %128
  %138 = load i32, i32* @zunghr_.lquery, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 0, i32* %10, align 4
  br label %412

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  store i32 1, i32* %149, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  store i32 0, i32* %10, align 4
  br label %412

153:                                              ; preds = %142
  %154 = load i32*, i32** %12, align 8
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %22, align 4
  %157 = load i32*, i32** %13, align 8
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* @zunghr_.j, align 4
  br label %159

159:                                              ; preds = %265, %153
  %160 = load i32, i32* @zunghr_.j, align 4
  %161 = load i32, i32* %22, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %268

163:                                              ; preds = %159
  %164 = load i32, i32* @zunghr_.j, align 4
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %23, align 4
  store i32 1, i32* @zunghr_.i__, align 4
  br label %166

166:                                              ; preds = %186, %163
  %167 = load i32, i32* @zunghr_.i__, align 4
  %168 = load i32, i32* %23, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %166
  %171 = load i32, i32* @zunghr_.i__, align 4
  %172 = load i32, i32* @zunghr_.j, align 4
  %173 = load i32, i32* %20, align 4
  %174 = mul nsw i32 %172, %173
  %175 = add nsw i32 %171, %174
  store i32 %175, i32* %24, align 4
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %177 = load i32, i32* %24, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  store i32 0, i32* %180, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %182 = load i32, i32* %24, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  store i32 0, i32* %185, align 4
  br label %186

186:                                              ; preds = %170
  %187 = load i32, i32* @zunghr_.i__, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* @zunghr_.i__, align 4
  br label %166

189:                                              ; preds = %166
  %190 = load i32*, i32** %13, align 8
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %23, align 4
  %192 = load i32, i32* @zunghr_.j, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @zunghr_.i__, align 4
  br label %194

194:                                              ; preds = %232, %189
  %195 = load i32, i32* @zunghr_.i__, align 4
  %196 = load i32, i32* %23, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %198, label %235

198:                                              ; preds = %194
  %199 = load i32, i32* @zunghr_.i__, align 4
  %200 = load i32, i32* @zunghr_.j, align 4
  %201 = load i32, i32* %20, align 4
  %202 = mul nsw i32 %200, %201
  %203 = add nsw i32 %199, %202
  store i32 %203, i32* %24, align 4
  %204 = load i32, i32* @zunghr_.i__, align 4
  %205 = load i32, i32* @zunghr_.j, align 4
  %206 = sub nsw i32 %205, 1
  %207 = load i32, i32* %20, align 4
  %208 = mul nsw i32 %206, %207
  %209 = add nsw i32 %204, %208
  store i32 %209, i32* %25, align 4
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %211 = load i32, i32* %25, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %217 = load i32, i32* %24, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  store i32 %215, i32* %220, align 4
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %222 = load i32, i32* %25, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %228 = load i32, i32* %24, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  store i32 %226, i32* %231, align 4
  br label %232

232:                                              ; preds = %198
  %233 = load i32, i32* @zunghr_.i__, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* @zunghr_.i__, align 4
  br label %194

235:                                              ; preds = %194
  %236 = load i32*, i32** %11, align 8
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %23, align 4
  %238 = load i32*, i32** %13, align 8
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* @zunghr_.i__, align 4
  br label %241

241:                                              ; preds = %261, %235
  %242 = load i32, i32* @zunghr_.i__, align 4
  %243 = load i32, i32* %23, align 4
  %244 = icmp sle i32 %242, %243
  br i1 %244, label %245, label %264

245:                                              ; preds = %241
  %246 = load i32, i32* @zunghr_.i__, align 4
  %247 = load i32, i32* @zunghr_.j, align 4
  %248 = load i32, i32* %20, align 4
  %249 = mul nsw i32 %247, %248
  %250 = add nsw i32 %246, %249
  store i32 %250, i32* %24, align 4
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %252 = load i32, i32* %24, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  store i32 0, i32* %255, align 4
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %257 = load i32, i32* %24, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 1
  store i32 0, i32* %260, align 4
  br label %261

261:                                              ; preds = %245
  %262 = load i32, i32* @zunghr_.i__, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* @zunghr_.i__, align 4
  br label %241

264:                                              ; preds = %241
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* @zunghr_.j, align 4
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* @zunghr_.j, align 4
  br label %159

268:                                              ; preds = %159
  %269 = load i32*, i32** %12, align 8
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %22, align 4
  store i32 1, i32* @zunghr_.j, align 4
  br label %271

271:                                              ; preds = %317, %268
  %272 = load i32, i32* @zunghr_.j, align 4
  %273 = load i32, i32* %22, align 4
  %274 = icmp sle i32 %272, %273
  br i1 %274, label %275, label %320

275:                                              ; preds = %271
  %276 = load i32*, i32** %11, align 8
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %23, align 4
  store i32 1, i32* @zunghr_.i__, align 4
  br label %278

278:                                              ; preds = %298, %275
  %279 = load i32, i32* @zunghr_.i__, align 4
  %280 = load i32, i32* %23, align 4
  %281 = icmp sle i32 %279, %280
  br i1 %281, label %282, label %301

282:                                              ; preds = %278
  %283 = load i32, i32* @zunghr_.i__, align 4
  %284 = load i32, i32* @zunghr_.j, align 4
  %285 = load i32, i32* %20, align 4
  %286 = mul nsw i32 %284, %285
  %287 = add nsw i32 %283, %286
  store i32 %287, i32* %24, align 4
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %289 = load i32, i32* %24, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  store i32 0, i32* %292, align 4
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %294 = load i32, i32* %24, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 1
  store i32 0, i32* %297, align 4
  br label %298

298:                                              ; preds = %282
  %299 = load i32, i32* @zunghr_.i__, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* @zunghr_.i__, align 4
  br label %278

301:                                              ; preds = %278
  %302 = load i32, i32* @zunghr_.j, align 4
  %303 = load i32, i32* @zunghr_.j, align 4
  %304 = load i32, i32* %20, align 4
  %305 = mul nsw i32 %303, %304
  %306 = add nsw i32 %302, %305
  store i32 %306, i32* %23, align 4
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %308 = load i32, i32* %23, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 0
  store i32 1, i32* %311, align 4
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %313 = load i32, i32* %23, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 1
  store i32 0, i32* %316, align 4
  br label %317

317:                                              ; preds = %301
  %318 = load i32, i32* @zunghr_.j, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* @zunghr_.j, align 4
  br label %271

320:                                              ; preds = %271
  %321 = load i32*, i32** %11, align 8
  %322 = load i32, i32* %321, align 4
  store i32 %322, i32* %22, align 4
  %323 = load i32*, i32** %13, align 8
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* @zunghr_.j, align 4
  br label %326

326:                                              ; preds = %372, %320
  %327 = load i32, i32* @zunghr_.j, align 4
  %328 = load i32, i32* %22, align 4
  %329 = icmp sle i32 %327, %328
  br i1 %329, label %330, label %375

330:                                              ; preds = %326
  %331 = load i32*, i32** %11, align 8
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %23, align 4
  store i32 1, i32* @zunghr_.i__, align 4
  br label %333

333:                                              ; preds = %353, %330
  %334 = load i32, i32* @zunghr_.i__, align 4
  %335 = load i32, i32* %23, align 4
  %336 = icmp sle i32 %334, %335
  br i1 %336, label %337, label %356

337:                                              ; preds = %333
  %338 = load i32, i32* @zunghr_.i__, align 4
  %339 = load i32, i32* @zunghr_.j, align 4
  %340 = load i32, i32* %20, align 4
  %341 = mul nsw i32 %339, %340
  %342 = add nsw i32 %338, %341
  store i32 %342, i32* %24, align 4
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %344 = load i32, i32* %24, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 0
  store i32 0, i32* %347, align 4
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %349 = load i32, i32* %24, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 1
  store i32 0, i32* %352, align 4
  br label %353

353:                                              ; preds = %337
  %354 = load i32, i32* @zunghr_.i__, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* @zunghr_.i__, align 4
  br label %333

356:                                              ; preds = %333
  %357 = load i32, i32* @zunghr_.j, align 4
  %358 = load i32, i32* @zunghr_.j, align 4
  %359 = load i32, i32* %20, align 4
  %360 = mul nsw i32 %358, %359
  %361 = add nsw i32 %357, %360
  store i32 %361, i32* %23, align 4
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %363 = load i32, i32* %23, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 0
  store i32 1, i32* %366, align 4
  %367 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %368 = load i32, i32* %23, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 1
  store i32 0, i32* %371, align 4
  br label %372

372:                                              ; preds = %356
  %373 = load i32, i32* @zunghr_.j, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* @zunghr_.j, align 4
  br label %326

375:                                              ; preds = %326
  %376 = load i32, i32* @zunghr_.nh, align 4
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %378, label %401

378:                                              ; preds = %375
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %380 = load i32*, i32** %12, align 8
  %381 = load i32, i32* %380, align 4
  %382 = add nsw i32 %381, 1
  %383 = load i32*, i32** %12, align 8
  %384 = load i32, i32* %383, align 4
  %385 = add nsw i32 %384, 1
  %386 = load i32, i32* %20, align 4
  %387 = mul nsw i32 %385, %386
  %388 = add nsw i32 %382, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i64 %389
  %391 = load i32*, i32** %15, align 8
  %392 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %393 = load i32*, i32** %12, align 8
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i64 %395
  %397 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i64 1
  %399 = load i32*, i32** %18, align 8
  %400 = call i32 @zungqr_(i32* @zunghr_.nh, i32* @zunghr_.nh, i32* @zunghr_.nh, %struct.TYPE_5__* %390, i32* %391, %struct.TYPE_5__* %396, %struct.TYPE_5__* %398, i32* %399, i32* @zunghr_.iinfo)
  br label %401

401:                                              ; preds = %378, %375
  %402 = load i32, i32* @zunghr_.lwkopt, align 4
  %403 = sext i32 %402 to i64
  %404 = inttoptr i64 %403 to i8*
  %405 = ptrtoint i8* %404 to i32
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i64 1
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i32 0, i32 0
  store i32 %405, i32* %408, align 4
  %409 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i64 1
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 1
  store i32 0, i32* %411, align 4
  store i32 0, i32* %10, align 4
  br label %412

412:                                              ; preds = %401, %146, %140, %132
  %413 = load i32, i32* %10, align 4
  ret i32 %413
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @zungqr_(i32*, i32*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
