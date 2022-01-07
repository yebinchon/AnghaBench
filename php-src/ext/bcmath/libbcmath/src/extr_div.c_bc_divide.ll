; ModuleID = '/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_div.c_bc_divide.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_div.c_bc_divide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i64 }

@PLUS = common dso_local global i8* null, align 8
@MINUS = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8 0, align 1
@FALSE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bc_divide(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8, align 1
  %31 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %8, align 8
  store i32 %3, i32* %9, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = call i64 @bc_is_zero(%struct.TYPE_9__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %595

36:                                               ; preds = %4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %108

41:                                               ; preds = %36
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %107

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %107

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call %struct.TYPE_9__* @bc_new_num(i32 %55, i32 %56)
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %10, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i8*, i8** @PLUS, align 8
  br label %69

67:                                               ; preds = %52
  %68 = load i8*, i8** @MINUS, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i8* [ %66, %65 ], [ %68, %67 ]
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = bitcast i32* %81 to i8*
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @memset(i8* %82, i32 0, i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @MIN(i32 %98, i32 %99)
  %101 = add i32 %95, %100
  %102 = call i32 @memcpy(i8* %88, i8* %92, i32 %101)
  %103 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %104 = call i32 @bc_free_num(%struct.TYPE_9__** %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %106 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %106, align 8
  br label %107

107:                                              ; preds = %69, %46, %41
  br label %108

108:                                              ; preds = %107, %36
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %21, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = bitcast i32* %114 to i8*
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  %121 = load i32, i32* %21, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = getelementptr inbounds i8, i8* %123, i64 -1
  store i8* %124, i8** %15, align 8
  br label %125

125:                                              ; preds = %136, %108
  %126 = load i32, i32* %21, align 4
  %127 = icmp ugt i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i8*, i8** %15, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 -1
  store i8* %130, i8** %15, align 8
  %131 = load i8, i8* %129, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br label %134

134:                                              ; preds = %128, %125
  %135 = phi i1 [ false, %125 ], [ %133, %128 ]
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = load i32, i32* %21, align 4
  %138 = add i32 %137, -1
  store i32 %138, i32* %21, align 4
  br label %125

139:                                              ; preds = %134
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %21, align 4
  %144 = add i32 %142, %143
  store i32 %144, i32* %19, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %21, align 4
  %149 = sub i32 %147, %148
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %139
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %17, align 4
  %156 = sub nsw i32 %154, %155
  store i32 %156, i32* %23, align 4
  br label %158

157:                                              ; preds = %139
  store i32 0, i32* %23, align 4
  br label %158

158:                                              ; preds = %157, %153
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = add i32 %161, %164
  %166 = load i32, i32* %23, align 4
  %167 = add i32 %166, 2
  %168 = call i64 @safe_emalloc(i32 1, i32 %165, i32 %167)
  %169 = inttoptr i64 %168 to i8*
  store i8* %169, i8** %11, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add i32 %173, %176
  %178 = load i32, i32* %23, align 4
  %179 = add i32 %177, %178
  %180 = add i32 %179, 2
  %181 = call i32 @memset(i8* %170, i32 0, i32 %180)
  %182 = load i8*, i8** %11, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = bitcast i32* %186 to i8*
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = add i32 %190, %193
  %195 = call i32 @memcpy(i8* %183, i8* %187, i32 %194)
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %21, align 4
  %200 = add i32 %198, %199
  store i32 %200, i32* %20, align 4
  %201 = load i32, i32* %20, align 4
  %202 = call i64 @safe_emalloc(i32 1, i32 %201, i32 1)
  %203 = inttoptr i64 %202 to i8*
  store i8* %203, i8** %12, align 8
  %204 = load i8*, i8** %12, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = bitcast i32* %207 to i8*
  %209 = load i32, i32* %20, align 4
  %210 = call i32 @memcpy(i8* %204, i8* %208, i32 %209)
  %211 = load i8*, i8** %12, align 8
  %212 = load i32, i32* %20, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  store i8 0, i8* %214, align 1
  %215 = load i8*, i8** %12, align 8
  store i8* %215, i8** %15, align 8
  br label %216

216:                                              ; preds = %221, %158
  %217 = load i8*, i8** %15, align 8
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load i8*, i8** %15, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %15, align 8
  %224 = load i32, i32* %20, align 4
  %225 = add i32 %224, -1
  store i32 %225, i32* %20, align 4
  br label %216

226:                                              ; preds = %216
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %19, align 4
  %229 = load i32, i32* %9, align 4
  %230 = add i32 %228, %229
  %231 = icmp ugt i32 %227, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %22, align 4
  %235 = load i8, i8* @TRUE, align 1
  store i8 %235, i8* %30, align 1
  br label %252

236:                                              ; preds = %226
  %237 = load i8, i8* @FALSE, align 1
  store i8 %237, i8* %30, align 1
  %238 = load i32, i32* %20, align 4
  %239 = load i32, i32* %19, align 4
  %240 = icmp ugt i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %22, align 4
  br label %251

244:                                              ; preds = %236
  %245 = load i32, i32* %19, align 4
  %246 = load i32, i32* %20, align 4
  %247 = sub i32 %245, %246
  %248 = load i32, i32* %9, align 4
  %249 = add i32 %247, %248
  %250 = add i32 %249, 1
  store i32 %250, i32* %22, align 4
  br label %251

251:                                              ; preds = %244, %241
  br label %252

252:                                              ; preds = %251, %232
  %253 = load i32, i32* %22, align 4
  %254 = load i32, i32* %9, align 4
  %255 = sub i32 %253, %254
  %256 = load i32, i32* %9, align 4
  %257 = call %struct.TYPE_9__* @bc_new_num(i32 %255, i32 %256)
  store %struct.TYPE_9__* %257, %struct.TYPE_9__** %10, align 8
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  %261 = bitcast i32* %260 to i8*
  %262 = load i32, i32* %22, align 4
  %263 = call i32 @memset(i8* %261, i32 0, i32 %262)
  %264 = load i32, i32* %20, align 4
  %265 = call i64 @safe_emalloc(i32 1, i32 %264, i32 1)
  %266 = inttoptr i64 %265 to i8*
  store i8* %266, i8** %29, align 8
  %267 = load i8, i8* %30, align 1
  %268 = icmp ne i8 %267, 0
  br i1 %268, label %557, label %269

269:                                              ; preds = %252
  %270 = load i8*, i8** %15, align 8
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = add nsw i32 %272, 1
  %274 = sdiv i32 10, %273
  store i32 %274, i32* %31, align 4
  %275 = load i32, i32* %31, align 4
  %276 = icmp ne i32 %275, 1
  br i1 %276, label %277, label %293

277:                                              ; preds = %269
  %278 = load i8*, i8** %11, align 8
  %279 = load i32, i32* %19, align 4
  %280 = load i32, i32* %17, align 4
  %281 = add i32 %279, %280
  %282 = load i32, i32* %23, align 4
  %283 = add i32 %281, %282
  %284 = add i32 %283, 1
  %285 = load i32, i32* %31, align 4
  %286 = load i8*, i8** %11, align 8
  %287 = call i32 @_one_mult(i8* %278, i32 %284, i32 %285, i8* %286)
  %288 = load i8*, i8** %15, align 8
  %289 = load i32, i32* %20, align 4
  %290 = load i32, i32* %31, align 4
  %291 = load i8*, i8** %15, align 8
  %292 = call i32 @_one_mult(i8* %288, i32 %289, i32 %290, i8* %291)
  br label %293

293:                                              ; preds = %277, %269
  store i32 0, i32* %25, align 4
  %294 = load i32, i32* %20, align 4
  %295 = load i32, i32* %19, align 4
  %296 = icmp ugt i32 %294, %295
  br i1 %296, label %297, label %309

297:                                              ; preds = %293
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = bitcast i32* %300 to i8*
  %302 = load i32, i32* %20, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  %305 = load i32, i32* %19, align 4
  %306 = zext i32 %305 to i64
  %307 = sub i64 0, %306
  %308 = getelementptr inbounds i8, i8* %304, i64 %307
  store i8* %308, i8** %16, align 8
  br label %314

309:                                              ; preds = %293
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  %313 = bitcast i32* %312 to i8*
  store i8* %313, i8** %16, align 8
  br label %314

314:                                              ; preds = %309, %297
  br label %315

315:                                              ; preds = %549, %314
  %316 = load i32, i32* %25, align 4
  %317 = load i32, i32* %19, align 4
  %318 = load i32, i32* %9, align 4
  %319 = add i32 %317, %318
  %320 = load i32, i32* %20, align 4
  %321 = sub i32 %319, %320
  %322 = icmp ule i32 %316, %321
  br i1 %322, label %323, label %556

323:                                              ; preds = %315
  %324 = load i8*, i8** %15, align 8
  %325 = load i8, i8* %324, align 1
  %326 = zext i8 %325 to i32
  %327 = load i8*, i8** %11, align 8
  %328 = load i32, i32* %25, align 4
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* %327, i64 %329
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  %333 = icmp eq i32 %326, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %323
  store i32 9, i32* %26, align 4
  br label %355

335:                                              ; preds = %323
  %336 = load i8*, i8** %11, align 8
  %337 = load i32, i32* %25, align 4
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = mul nsw i32 %341, 10
  %343 = load i8*, i8** %11, align 8
  %344 = load i32, i32* %25, align 4
  %345 = add i32 %344, 1
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %343, i64 %346
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i32
  %350 = add nsw i32 %342, %349
  %351 = load i8*, i8** %15, align 8
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = sdiv i32 %350, %353
  store i32 %354, i32* %26, align 4
  br label %355

355:                                              ; preds = %335, %334
  %356 = load i8*, i8** %15, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 1
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = load i32, i32* %26, align 4
  %361 = mul i32 %359, %360
  %362 = load i8*, i8** %11, align 8
  %363 = load i32, i32* %25, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %362, i64 %364
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = mul nsw i32 %367, 10
  %369 = load i8*, i8** %11, align 8
  %370 = load i32, i32* %25, align 4
  %371 = add i32 %370, 1
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %369, i64 %372
  %374 = load i8, i8* %373, align 1
  %375 = zext i8 %374 to i32
  %376 = add nsw i32 %368, %375
  %377 = load i8*, i8** %15, align 8
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i32
  %380 = load i32, i32* %26, align 4
  %381 = mul i32 %379, %380
  %382 = sub i32 %376, %381
  %383 = mul i32 %382, 10
  %384 = load i8*, i8** %11, align 8
  %385 = load i32, i32* %25, align 4
  %386 = add i32 %385, 2
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds i8, i8* %384, i64 %387
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i32
  %391 = add i32 %383, %390
  %392 = icmp ugt i32 %361, %391
  br i1 %392, label %393, label %437

393:                                              ; preds = %355
  %394 = load i32, i32* %26, align 4
  %395 = add i32 %394, -1
  store i32 %395, i32* %26, align 4
  %396 = load i8*, i8** %15, align 8
  %397 = getelementptr inbounds i8, i8* %396, i64 1
  %398 = load i8, i8* %397, align 1
  %399 = zext i8 %398 to i32
  %400 = load i32, i32* %26, align 4
  %401 = mul i32 %399, %400
  %402 = load i8*, i8** %11, align 8
  %403 = load i32, i32* %25, align 4
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %402, i64 %404
  %406 = load i8, i8* %405, align 1
  %407 = zext i8 %406 to i32
  %408 = mul nsw i32 %407, 10
  %409 = load i8*, i8** %11, align 8
  %410 = load i32, i32* %25, align 4
  %411 = add i32 %410, 1
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds i8, i8* %409, i64 %412
  %414 = load i8, i8* %413, align 1
  %415 = zext i8 %414 to i32
  %416 = add nsw i32 %408, %415
  %417 = load i8*, i8** %15, align 8
  %418 = load i8, i8* %417, align 1
  %419 = zext i8 %418 to i32
  %420 = load i32, i32* %26, align 4
  %421 = mul i32 %419, %420
  %422 = sub i32 %416, %421
  %423 = mul i32 %422, 10
  %424 = load i8*, i8** %11, align 8
  %425 = load i32, i32* %25, align 4
  %426 = add i32 %425, 2
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds i8, i8* %424, i64 %427
  %429 = load i8, i8* %428, align 1
  %430 = zext i8 %429 to i32
  %431 = add i32 %423, %430
  %432 = icmp ugt i32 %401, %431
  br i1 %432, label %433, label %436

433:                                              ; preds = %393
  %434 = load i32, i32* %26, align 4
  %435 = add i32 %434, -1
  store i32 %435, i32* %26, align 4
  br label %436

436:                                              ; preds = %433, %393
  br label %437

437:                                              ; preds = %436, %355
  store i32 0, i32* %27, align 4
  %438 = load i32, i32* %26, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %490

440:                                              ; preds = %437
  %441 = load i8*, i8** %29, align 8
  store i8 0, i8* %441, align 1
  %442 = load i8*, i8** %15, align 8
  %443 = load i32, i32* %20, align 4
  %444 = load i32, i32* %26, align 4
  %445 = load i8*, i8** %29, align 8
  %446 = getelementptr inbounds i8, i8* %445, i64 1
  %447 = call i32 @_one_mult(i8* %442, i32 %443, i32 %444, i8* %446)
  %448 = load i8*, i8** %11, align 8
  %449 = load i32, i32* %25, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds i8, i8* %448, i64 %450
  %452 = load i32, i32* %20, align 4
  %453 = zext i32 %452 to i64
  %454 = getelementptr inbounds i8, i8* %451, i64 %453
  store i8* %454, i8** %13, align 8
  %455 = load i8*, i8** %29, align 8
  %456 = load i32, i32* %20, align 4
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds i8, i8* %455, i64 %457
  store i8* %458, i8** %14, align 8
  store i32 0, i32* %24, align 4
  br label %459

459:                                              ; preds = %486, %440
  %460 = load i32, i32* %24, align 4
  %461 = load i32, i32* %20, align 4
  %462 = add i32 %461, 1
  %463 = icmp ult i32 %460, %462
  br i1 %463, label %464, label %489

464:                                              ; preds = %459
  %465 = load i8*, i8** %13, align 8
  %466 = load i8, i8* %465, align 1
  %467 = zext i8 %466 to i32
  %468 = load i8*, i8** %14, align 8
  %469 = getelementptr inbounds i8, i8* %468, i32 -1
  store i8* %469, i8** %14, align 8
  %470 = load i8, i8* %468, align 1
  %471 = zext i8 %470 to i32
  %472 = sub nsw i32 %467, %471
  %473 = load i32, i32* %27, align 4
  %474 = sub i32 %472, %473
  store i32 %474, i32* %18, align 4
  %475 = load i32, i32* %18, align 4
  %476 = icmp slt i32 %475, 0
  br i1 %476, label %477, label %480

477:                                              ; preds = %464
  %478 = load i32, i32* %18, align 4
  %479 = add nsw i32 %478, 10
  store i32 %479, i32* %18, align 4
  store i32 1, i32* %27, align 4
  br label %481

480:                                              ; preds = %464
  store i32 0, i32* %27, align 4
  br label %481

481:                                              ; preds = %480, %477
  %482 = load i32, i32* %18, align 4
  %483 = trunc i32 %482 to i8
  %484 = load i8*, i8** %13, align 8
  %485 = getelementptr inbounds i8, i8* %484, i32 -1
  store i8* %485, i8** %13, align 8
  store i8 %483, i8* %484, align 1
  br label %486

486:                                              ; preds = %481
  %487 = load i32, i32* %24, align 4
  %488 = add i32 %487, 1
  store i32 %488, i32* %24, align 4
  br label %459

489:                                              ; preds = %459
  br label %490

490:                                              ; preds = %489, %437
  %491 = load i32, i32* %27, align 4
  %492 = icmp eq i32 %491, 1
  br i1 %492, label %493, label %549

493:                                              ; preds = %490
  %494 = load i32, i32* %26, align 4
  %495 = add i32 %494, -1
  store i32 %495, i32* %26, align 4
  %496 = load i8*, i8** %11, align 8
  %497 = load i32, i32* %25, align 4
  %498 = zext i32 %497 to i64
  %499 = getelementptr inbounds i8, i8* %496, i64 %498
  %500 = load i32, i32* %20, align 4
  %501 = zext i32 %500 to i64
  %502 = getelementptr inbounds i8, i8* %499, i64 %501
  store i8* %502, i8** %13, align 8
  %503 = load i8*, i8** %15, align 8
  %504 = load i32, i32* %20, align 4
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds i8, i8* %503, i64 %505
  %507 = getelementptr inbounds i8, i8* %506, i64 -1
  store i8* %507, i8** %14, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %24, align 4
  br label %508

508:                                              ; preds = %534, %493
  %509 = load i32, i32* %24, align 4
  %510 = load i32, i32* %20, align 4
  %511 = icmp ult i32 %509, %510
  br i1 %511, label %512, label %537

512:                                              ; preds = %508
  %513 = load i8*, i8** %13, align 8
  %514 = load i8, i8* %513, align 1
  %515 = zext i8 %514 to i32
  %516 = load i8*, i8** %14, align 8
  %517 = getelementptr inbounds i8, i8* %516, i32 -1
  store i8* %517, i8** %14, align 8
  %518 = load i8, i8* %516, align 1
  %519 = zext i8 %518 to i32
  %520 = add nsw i32 %515, %519
  %521 = load i32, i32* %28, align 4
  %522 = add i32 %520, %521
  store i32 %522, i32* %18, align 4
  %523 = load i32, i32* %18, align 4
  %524 = icmp sgt i32 %523, 9
  br i1 %524, label %525, label %528

525:                                              ; preds = %512
  %526 = load i32, i32* %18, align 4
  %527 = sub nsw i32 %526, 10
  store i32 %527, i32* %18, align 4
  store i32 1, i32* %28, align 4
  br label %529

528:                                              ; preds = %512
  store i32 0, i32* %28, align 4
  br label %529

529:                                              ; preds = %528, %525
  %530 = load i32, i32* %18, align 4
  %531 = trunc i32 %530 to i8
  %532 = load i8*, i8** %13, align 8
  %533 = getelementptr inbounds i8, i8* %532, i32 -1
  store i8* %533, i8** %13, align 8
  store i8 %531, i8* %532, align 1
  br label %534

534:                                              ; preds = %529
  %535 = load i32, i32* %24, align 4
  %536 = add i32 %535, 1
  store i32 %536, i32* %24, align 4
  br label %508

537:                                              ; preds = %508
  %538 = load i32, i32* %28, align 4
  %539 = icmp eq i32 %538, 1
  br i1 %539, label %540, label %548

540:                                              ; preds = %537
  %541 = load i8*, i8** %13, align 8
  %542 = load i8, i8* %541, align 1
  %543 = zext i8 %542 to i32
  %544 = add nsw i32 %543, 1
  %545 = srem i32 %544, 10
  %546 = trunc i32 %545 to i8
  %547 = load i8*, i8** %13, align 8
  store i8 %546, i8* %547, align 1
  br label %548

548:                                              ; preds = %540, %537
  br label %549

549:                                              ; preds = %548, %490
  %550 = load i32, i32* %26, align 4
  %551 = trunc i32 %550 to i8
  %552 = load i8*, i8** %16, align 8
  %553 = getelementptr inbounds i8, i8* %552, i32 1
  store i8* %553, i8** %16, align 8
  store i8 %551, i8* %552, align 1
  %554 = load i32, i32* %25, align 4
  %555 = add i32 %554, 1
  store i32 %555, i32* %25, align 4
  br label %315

556:                                              ; preds = %315
  br label %557

557:                                              ; preds = %556, %252
  %558 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %559 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %558, i32 0, i32 3
  %560 = load i64, i64* %559, align 8
  %561 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %562 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %561, i32 0, i32 3
  %563 = load i64, i64* %562, align 8
  %564 = icmp eq i64 %560, %563
  br i1 %564, label %565, label %567

565:                                              ; preds = %557
  %566 = load i8*, i8** @PLUS, align 8
  br label %569

567:                                              ; preds = %557
  %568 = load i8*, i8** @MINUS, align 8
  br label %569

569:                                              ; preds = %567, %565
  %570 = phi i8* [ %566, %565 ], [ %568, %567 ]
  %571 = ptrtoint i8* %570 to i64
  %572 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %573 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %572, i32 0, i32 3
  store i64 %571, i64* %573, align 8
  %574 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %575 = call i64 @bc_is_zero(%struct.TYPE_9__* %574)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %582

577:                                              ; preds = %569
  %578 = load i8*, i8** @PLUS, align 8
  %579 = ptrtoint i8* %578 to i64
  %580 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %581 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %580, i32 0, i32 3
  store i64 %579, i64* %581, align 8
  br label %582

582:                                              ; preds = %577, %569
  %583 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %584 = call i32 @_bc_rm_leading_zeros(%struct.TYPE_9__* %583)
  %585 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %586 = call i32 @bc_free_num(%struct.TYPE_9__** %585)
  %587 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %588 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %587, %struct.TYPE_9__** %588, align 8
  %589 = load i8*, i8** %29, align 8
  %590 = call i32 @efree(i8* %589)
  %591 = load i8*, i8** %11, align 8
  %592 = call i32 @efree(i8* %591)
  %593 = load i8*, i8** %12, align 8
  %594 = call i32 @efree(i8* %593)
  store i32 0, i32* %5, align 4
  br label %595

595:                                              ; preds = %582, %35
  %596 = load i32, i32* %5, align 4
  ret i32 %596
}

declare dso_local i64 @bc_is_zero(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @bc_new_num(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @bc_free_num(%struct.TYPE_9__**) #1

declare dso_local i64 @safe_emalloc(i32, i32, i32) #1

declare dso_local i32 @_one_mult(i8*, i32, i32, i8*) #1

declare dso_local i32 @_bc_rm_leading_zeros(%struct.TYPE_9__*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
