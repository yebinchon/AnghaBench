; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_base64_encode_convert.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_base64_encode_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32*, i64, i32* }

@PHP_CONV_ERR_SUCCESS = common dso_local global i32 0, align 4
@PHP_CONV_ERR_TOO_BIG = common dso_local global i32 0, align 4
@b64_tbl_enc = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8**, i64*, i8**, i64*)* @php_conv_base64_encode_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_conv_base64_encode_convert(%struct.TYPE_4__* %0, i8** %1, i64* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load volatile i32, i32* @PHP_CONV_ERR_SUCCESS, align 4
  store volatile i32 %18, i32* %12, align 4
  %19 = load i8**, i8*** %8, align 8
  %20 = icmp eq i8** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i64*, i64** %9, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21, %5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = load i8**, i8*** %8, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = load i8**, i8*** %10, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = call i32 @php_conv_base64_encode_flush(%struct.TYPE_4__* %25, i8** %26, i64* %27, i8** %28, i64* %29)
  store i32 %30, i32* %6, align 4
  br label %446

31:                                               ; preds = %21
  %32 = load i8**, i8*** %10, align 8
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %16, align 8
  %34 = load i64*, i64** %11, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load i8**, i8*** %8, align 8
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %15, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %17, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  switch i64 %45, label %294 [
    i64 1, label %46
    i64 2, label %168
  ]

46:                                               ; preds = %31
  %47 = load i64, i64* %14, align 8
  %48 = icmp uge i64 %47, 2
  br i1 %48, label %49, label %167

49:                                               ; preds = %46
  %50 = load i32, i32* %17, align 4
  %51 = icmp ult i32 %50, 4
  br i1 %51, label %52, label %87

52:                                               ; preds = %49
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %87

57:                                               ; preds = %52
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load volatile i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store i32 %64, i32* %6, align 4
  br label %446

65:                                               ; preds = %57
  %66 = load i8*, i8** %16, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @memcpy(i8* %66, i32* %69, i64 %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %16, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %13, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %13, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %65, %52, %49
  %88 = load i64, i64* %13, align 8
  %89 = icmp ult i64 %88, 4
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load volatile i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store volatile i32 %91, i32* %12, align 4
  br label %433

92:                                               ; preds = %87
  %93 = load i8**, i8*** @b64_tbl_enc, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %93, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %102 to i8
  %104 = load i8*, i8** %16, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %16, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i8**, i8*** @b64_tbl_enc, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 4
  %113 = trunc i32 %112 to i8
  %114 = zext i8 %113 to i32
  %115 = load i8*, i8** %15, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = ashr i32 %118, 4
  %120 = or i32 %114, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %106, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = ptrtoint i8* %123 to i8
  %125 = load i8*, i8** %16, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %16, align 8
  store i8 %124, i8* %125, align 1
  %127 = load i8**, i8*** @b64_tbl_enc, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = shl i32 %131, 2
  %133 = trunc i32 %132 to i8
  %134 = zext i8 %133 to i32
  %135 = load i8*, i8** %15, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = ashr i32 %138, 6
  %140 = or i32 %134, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %127, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = ptrtoint i8* %143 to i8
  %145 = load i8*, i8** %16, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %16, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i8**, i8*** @b64_tbl_enc, align 8
  %148 = load i8*, i8** %15, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %147, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = ptrtoint i8* %153 to i8
  %155 = load i8*, i8** %16, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %16, align 8
  store i8 %154, i8* %155, align 1
  %157 = load i64, i64* %13, align 8
  %158 = sub i64 %157, 4
  store i64 %158, i64* %13, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  store i8* %160, i8** %15, align 8
  %161 = load i64, i64* %14, align 8
  %162 = sub i64 %161, 2
  store i64 %162, i64* %14, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  store i64 0, i64* %164, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sub i32 %165, 4
  store i32 %166, i32* %17, align 4
  br label %167

167:                                              ; preds = %92, %46
  br label %294

168:                                              ; preds = %31
  %169 = load i64, i64* %14, align 8
  %170 = icmp uge i64 %169, 1
  br i1 %170, label %171, label %293

171:                                              ; preds = %168
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ult i32 %174, 4
  br i1 %175, label %176, label %211

176:                                              ; preds = %171
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %211

181:                                              ; preds = %176
  %182 = load i64, i64* %13, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ult i64 %182, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load volatile i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store i32 %188, i32* %6, align 4
  br label %446

189:                                              ; preds = %181
  %190 = load i8*, i8** %16, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 5
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @memcpy(i8* %190, i32* %193, i64 %196)
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i8*, i8** %16, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 %200
  store i8* %202, i8** %16, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %13, align 8
  %207 = sub i64 %206, %205
  store i64 %207, i64* %13, align 8
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %17, align 4
  br label %211

211:                                              ; preds = %189, %176, %171
  %212 = load i64, i64* %13, align 8
  %213 = icmp ult i64 %212, 4
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = load volatile i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store volatile i32 %215, i32* %12, align 4
  br label %433

216:                                              ; preds = %211
  %217 = load i8**, i8*** @b64_tbl_enc, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = ashr i32 %222, 2
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %217, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = ptrtoint i8* %226 to i8
  %228 = load i8*, i8** %16, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %16, align 8
  store i8 %227, i8* %228, align 1
  %230 = load i8**, i8*** @b64_tbl_enc, align 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 4
  %237 = trunc i32 %236 to i8
  %238 = zext i8 %237 to i32
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = ashr i32 %243, 4
  %245 = or i32 %238, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %230, i64 %246
  %248 = load i8*, i8** %247, align 8
  %249 = ptrtoint i8* %248 to i8
  %250 = load i8*, i8** %16, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %16, align 8
  store i8 %249, i8* %250, align 1
  %252 = load i8**, i8*** @b64_tbl_enc, align 8
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = shl i32 %257, 2
  %259 = trunc i32 %258 to i8
  %260 = zext i8 %259 to i32
  %261 = load i8*, i8** %15, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 0
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = ashr i32 %264, 6
  %266 = or i32 %260, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %252, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = ptrtoint i8* %269 to i8
  %271 = load i8*, i8** %16, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %16, align 8
  store i8 %270, i8* %271, align 1
  %273 = load i8**, i8*** @b64_tbl_enc, align 8
  %274 = load i8*, i8** %15, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 0
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %273, i64 %277
  %279 = load i8*, i8** %278, align 8
  %280 = ptrtoint i8* %279 to i8
  %281 = load i8*, i8** %16, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %16, align 8
  store i8 %280, i8* %281, align 1
  %283 = load i64, i64* %13, align 8
  %284 = sub i64 %283, 4
  store i64 %284, i64* %13, align 8
  %285 = load i8*, i8** %15, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 1
  store i8* %286, i8** %15, align 8
  %287 = load i64, i64* %14, align 8
  %288 = sub i64 %287, 1
  store i64 %288, i64* %14, align 8
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 4
  store i64 0, i64* %290, align 8
  %291 = load i32, i32* %17, align 4
  %292 = sub i32 %291, 4
  store i32 %292, i32* %17, align 4
  br label %293

293:                                              ; preds = %216, %168
  br label %294

294:                                              ; preds = %31, %293, %167
  br label %295

295:                                              ; preds = %341, %294
  %296 = load i64, i64* %14, align 8
  %297 = icmp uge i64 %296, 3
  br i1 %297, label %298, label %412

298:                                              ; preds = %295
  %299 = load i32, i32* %17, align 4
  %300 = icmp ult i32 %299, 4
  br i1 %300, label %301, label %336

301:                                              ; preds = %298
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 5
  %304 = load i32*, i32** %303, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %336

306:                                              ; preds = %301
  %307 = load i64, i64* %13, align 8
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = icmp ult i64 %307, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %306
  %313 = load volatile i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store volatile i32 %313, i32* %12, align 4
  br label %433

314:                                              ; preds = %306
  %315 = load i8*, i8** %16, align 8
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 5
  %318 = load i32*, i32** %317, align 8
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = call i32 @memcpy(i8* %315, i32* %318, i64 %321)
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load i8*, i8** %16, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 %325
  store i8* %327, i8** %16, align 8
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* %13, align 8
  %332 = sub i64 %331, %330
  store i64 %332, i64* %13, align 8
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  store i32 %335, i32* %17, align 4
  br label %336

336:                                              ; preds = %314, %301, %298
  %337 = load i64, i64* %13, align 8
  %338 = icmp ult i64 %337, 4
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  %340 = load volatile i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store volatile i32 %340, i32* %12, align 4
  br label %433

341:                                              ; preds = %336
  %342 = load i8**, i8*** @b64_tbl_enc, align 8
  %343 = load i8*, i8** %15, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 0
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  %347 = ashr i32 %346, 2
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8*, i8** %342, i64 %348
  %350 = load i8*, i8** %349, align 8
  %351 = ptrtoint i8* %350 to i8
  %352 = load i8*, i8** %16, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %353, i8** %16, align 8
  store i8 %351, i8* %352, align 1
  %354 = load i8**, i8*** @b64_tbl_enc, align 8
  %355 = load i8*, i8** %15, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 0
  %357 = load i8, i8* %356, align 1
  %358 = zext i8 %357 to i32
  %359 = shl i32 %358, 4
  %360 = trunc i32 %359 to i8
  %361 = zext i8 %360 to i32
  %362 = load i8*, i8** %15, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 1
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = ashr i32 %365, 4
  %367 = or i32 %361, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8*, i8** %354, i64 %368
  %370 = load i8*, i8** %369, align 8
  %371 = ptrtoint i8* %370 to i8
  %372 = load i8*, i8** %16, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %373, i8** %16, align 8
  store i8 %371, i8* %372, align 1
  %374 = load i8**, i8*** @b64_tbl_enc, align 8
  %375 = load i8*, i8** %15, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 1
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = shl i32 %378, 2
  %380 = trunc i32 %379 to i8
  %381 = zext i8 %380 to i32
  %382 = load i8*, i8** %15, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 2
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = ashr i32 %385, 6
  %387 = or i32 %381, %386
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8*, i8** %374, i64 %388
  %390 = load i8*, i8** %389, align 8
  %391 = ptrtoint i8* %390 to i8
  %392 = load i8*, i8** %16, align 8
  %393 = getelementptr inbounds i8, i8* %392, i32 1
  store i8* %393, i8** %16, align 8
  store i8 %391, i8* %392, align 1
  %394 = load i8**, i8*** @b64_tbl_enc, align 8
  %395 = load i8*, i8** %15, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 2
  %397 = load i8, i8* %396, align 1
  %398 = zext i8 %397 to i64
  %399 = getelementptr inbounds i8*, i8** %394, i64 %398
  %400 = load i8*, i8** %399, align 8
  %401 = ptrtoint i8* %400 to i8
  %402 = load i8*, i8** %16, align 8
  %403 = getelementptr inbounds i8, i8* %402, i32 1
  store i8* %403, i8** %16, align 8
  store i8 %401, i8* %402, align 1
  %404 = load i8*, i8** %15, align 8
  %405 = getelementptr inbounds i8, i8* %404, i64 3
  store i8* %405, i8** %15, align 8
  %406 = load i64, i64* %14, align 8
  %407 = sub i64 %406, 3
  store i64 %407, i64* %14, align 8
  %408 = load i64, i64* %13, align 8
  %409 = sub i64 %408, 4
  store i64 %409, i64* %13, align 8
  %410 = load i32, i32* %17, align 4
  %411 = sub i32 %410, 4
  store i32 %411, i32* %17, align 4
  br label %295

412:                                              ; preds = %295
  br label %413

413:                                              ; preds = %429, %412
  %414 = load i64, i64* %14, align 8
  %415 = icmp ugt i64 %414, 0
  br i1 %415, label %416, label %432

416:                                              ; preds = %413
  %417 = load i8*, i8** %15, align 8
  %418 = getelementptr inbounds i8, i8* %417, i32 1
  store i8* %418, i8** %15, align 8
  %419 = load i8, i8* %417, align 1
  %420 = zext i8 %419 to i32
  %421 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 3
  %423 = load i32*, i32** %422, align 8
  %424 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 4
  %426 = load i64, i64* %425, align 8
  %427 = add nsw i64 %426, 1
  store i64 %427, i64* %425, align 8
  %428 = getelementptr inbounds i32, i32* %423, i64 %426
  store i32 %420, i32* %428, align 4
  br label %429

429:                                              ; preds = %416
  %430 = load i64, i64* %14, align 8
  %431 = add i64 %430, -1
  store i64 %431, i64* %14, align 8
  br label %413

432:                                              ; preds = %413
  br label %433

433:                                              ; preds = %432, %339, %312, %214, %90
  %434 = load i8*, i8** %15, align 8
  %435 = load i8**, i8*** %8, align 8
  store i8* %434, i8** %435, align 8
  %436 = load i64, i64* %14, align 8
  %437 = load i64*, i64** %9, align 8
  store i64 %436, i64* %437, align 8
  %438 = load i8*, i8** %16, align 8
  %439 = load i8**, i8*** %10, align 8
  store i8* %438, i8** %439, align 8
  %440 = load i64, i64* %13, align 8
  %441 = load i64*, i64** %11, align 8
  store i64 %440, i64* %441, align 8
  %442 = load i32, i32* %17, align 4
  %443 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 0
  store i32 %442, i32* %444, align 8
  %445 = load volatile i32, i32* %12, align 4
  store i32 %445, i32* %6, align 4
  br label %446

446:                                              ; preds = %433, %187, %63, %24
  %447 = load i32, i32* %6, align 4
  ret i32 %447
}

declare dso_local i32 @php_conv_base64_encode_flush(%struct.TYPE_4__*, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
