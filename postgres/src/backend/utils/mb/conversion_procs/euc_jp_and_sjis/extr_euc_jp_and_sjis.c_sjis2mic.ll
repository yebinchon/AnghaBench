; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_jp_and_sjis/extr_euc_jp_and_sjis.c_sjis2mic.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_jp_and_sjis/extr_euc_jp_and_sjis.c_sjis2mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@LC_JISX0201K = common dso_local global i32 0, align 4
@PG_SJIS = common dso_local global i32 0, align 4
@ibmkanji = common dso_local global %struct.TYPE_2__* null, align 8
@LC_JISX0208 = common dso_local global i8* null, align 8
@PGEUCALTCODE = common dso_local global i32 0, align 4
@LC_JISX0212 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @sjis2mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sjis2mic(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %12

12:                                               ; preds = %333, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %334

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 161
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 223
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i32, i32* @LC_JISX0201K, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  store i8 %26, i8* %27, align 1
  %29 = load i32, i32* %7, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  br label %333

37:                                               ; preds = %21, %15
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @IS_HIGHBIT_SET(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %315

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ISSJISHEAD(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @ISSJISTAIL(i8 zeroext %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48, %44, %41
  %55 = load i32, i32* @PG_SJIS, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @report_invalid_encoding(i32 %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 %64, 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %68, 60736
  br i1 %69, label %70, label %105

70:                                               ; preds = %59
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 61504
  br i1 %72, label %73, label %105

73:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %101, %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 65535
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %104

84:                                               ; preds = %74
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = ashr i32 %95, 8
  %97 = and i32 %96, 255
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, 255
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %88, %84
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %74

104:                                              ; preds = %83
  br label %105

105:                                              ; preds = %104, %70, %59
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 60223
  br i1 %107, label %108, label %137

108:                                              ; preds = %105
  %109 = load i8*, i8** @LC_JISX0208, align 8
  %110 = ptrtoint i8* %109 to i8
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %5, align 8
  store i8 %110, i8* %111, align 1
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, 63
  %115 = shl i32 %114, 1
  %116 = add nsw i32 %115, 159
  %117 = load i32, i32* %8, align 4
  %118 = icmp sgt i32 %117, 158
  %119 = zext i1 %118 to i32
  %120 = add nsw i32 %116, %119
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %5, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp sgt i32 %125, 158
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 2, i32 96
  %129 = add nsw i32 %124, %128
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 128
  %132 = zext i1 %131 to i32
  %133 = add nsw i32 %129, %132
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %5, align 8
  store i8 %134, i8* %135, align 1
  br label %310

137:                                              ; preds = %105
  %138 = load i32, i32* %10, align 4
  %139 = icmp sge i32 %138, 60224
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %141, 61504
  br i1 %142, label %149, label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %10, align 4
  %145 = icmp sge i32 %144, 64588
  br i1 %145, label %146, label %164

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = icmp sle i32 %147, 64764
  br i1 %148, label %149, label %164

149:                                              ; preds = %146, %140
  %150 = load i8*, i8** @LC_JISX0208, align 8
  %151 = ptrtoint i8* %150 to i8
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %5, align 8
  store i8 %151, i8* %152, align 1
  %154 = load i32, i32* @PGEUCALTCODE, align 4
  %155 = ashr i32 %154, 8
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %5, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i32, i32* @PGEUCALTCODE, align 4
  %160 = and i32 %159, 255
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %5, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %5, align 8
  store i8 %161, i8* %162, align 1
  br label %309

164:                                              ; preds = %146, %143
  %165 = load i32, i32* %10, align 4
  %166 = icmp sge i32 %165, 61504
  br i1 %166, label %167, label %201

167:                                              ; preds = %164
  %168 = load i32, i32* %10, align 4
  %169 = icmp slt i32 %168, 62784
  br i1 %169, label %170, label %201

170:                                              ; preds = %167
  %171 = load i8*, i8** @LC_JISX0208, align 8
  %172 = ptrtoint i8* %171 to i8
  %173 = load i8*, i8** %5, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %5, align 8
  store i8 %172, i8* %173, align 1
  %175 = load i32, i32* %7, align 4
  %176 = sub nsw i32 %175, 111
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = and i32 %177, 63
  %179 = shl i32 %178, 1
  %180 = add nsw i32 %179, 243
  %181 = load i32, i32* %8, align 4
  %182 = icmp sgt i32 %181, 158
  %183 = zext i1 %182 to i32
  %184 = add nsw i32 %180, %183
  %185 = trunc i32 %184 to i8
  %186 = load i8*, i8** %5, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %5, align 8
  store i8 %185, i8* %186, align 1
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp sgt i32 %189, 158
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 2, i32 96
  %193 = add nsw i32 %188, %192
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %194, 128
  %196 = zext i1 %195 to i32
  %197 = add nsw i32 %193, %196
  %198 = trunc i32 %197 to i8
  %199 = load i8*, i8** %5, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %5, align 8
  store i8 %198, i8* %199, align 1
  br label %308

201:                                              ; preds = %167, %164
  %202 = load i32, i32* %10, align 4
  %203 = icmp sge i32 %202, 62784
  br i1 %203, label %204, label %238

204:                                              ; preds = %201
  %205 = load i32, i32* %10, align 4
  %206 = icmp slt i32 %205, 64064
  br i1 %206, label %207, label %238

207:                                              ; preds = %204
  %208 = load i8*, i8** @LC_JISX0212, align 8
  %209 = ptrtoint i8* %208 to i8
  %210 = load i8*, i8** %5, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %5, align 8
  store i8 %209, i8* %210, align 1
  %212 = load i32, i32* %7, align 4
  %213 = sub nsw i32 %212, 116
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = and i32 %214, 63
  %216 = shl i32 %215, 1
  %217 = add nsw i32 %216, 243
  %218 = load i32, i32* %8, align 4
  %219 = icmp sgt i32 %218, 158
  %220 = zext i1 %219 to i32
  %221 = add nsw i32 %217, %220
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %5, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %5, align 8
  store i8 %222, i8* %223, align 1
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp sgt i32 %226, 158
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 2, i32 96
  %230 = add nsw i32 %225, %229
  %231 = load i32, i32* %8, align 4
  %232 = icmp slt i32 %231, 128
  %233 = zext i1 %232 to i32
  %234 = add nsw i32 %230, %233
  %235 = trunc i32 %234 to i8
  %236 = load i8*, i8** %5, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %5, align 8
  store i8 %235, i8* %236, align 1
  br label %307

238:                                              ; preds = %204, %201
  %239 = load i32, i32* %10, align 4
  %240 = icmp sge i32 %239, 64064
  br i1 %240, label %241, label %306

241:                                              ; preds = %238
  store i32 0, i32* %9, align 4
  br label %242

242:                                              ; preds = %302, %241
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %11, align 4
  %249 = load i32, i32* %11, align 4
  %250 = icmp eq i32 %249, 65535
  br i1 %250, label %251, label %252

251:                                              ; preds = %242
  br label %305

252:                                              ; preds = %242
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %10, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %301

256:                                              ; preds = %252
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = icmp sge i32 %263, 9371648
  br i1 %264, label %265, label %283

265:                                              ; preds = %256
  %266 = load i8*, i8** @LC_JISX0212, align 8
  %267 = ptrtoint i8* %266 to i8
  %268 = load i8*, i8** %5, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %5, align 8
  store i8 %267, i8* %268, align 1
  %270 = load i32, i32* %10, align 4
  %271 = and i32 %270, 65280
  %272 = ashr i32 %271, 8
  %273 = or i32 128, %272
  %274 = trunc i32 %273 to i8
  %275 = load i8*, i8** %5, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %5, align 8
  store i8 %274, i8* %275, align 1
  %277 = load i32, i32* %10, align 4
  %278 = and i32 %277, 255
  %279 = or i32 128, %278
  %280 = trunc i32 %279 to i8
  %281 = load i8*, i8** %5, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %5, align 8
  store i8 %280, i8* %281, align 1
  br label %300

283:                                              ; preds = %256
  %284 = load i8*, i8** @LC_JISX0208, align 8
  %285 = ptrtoint i8* %284 to i8
  %286 = load i8*, i8** %5, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %5, align 8
  store i8 %285, i8* %286, align 1
  %288 = load i32, i32* %10, align 4
  %289 = ashr i32 %288, 8
  %290 = or i32 128, %289
  %291 = trunc i32 %290 to i8
  %292 = load i8*, i8** %5, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %5, align 8
  store i8 %291, i8* %292, align 1
  %294 = load i32, i32* %10, align 4
  %295 = and i32 %294, 255
  %296 = or i32 128, %295
  %297 = trunc i32 %296 to i8
  %298 = load i8*, i8** %5, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %5, align 8
  store i8 %297, i8* %298, align 1
  br label %300

300:                                              ; preds = %283, %265
  br label %301

301:                                              ; preds = %300, %252
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %9, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %9, align 4
  br label %242

305:                                              ; preds = %251
  br label %306

306:                                              ; preds = %305, %238
  br label %307

307:                                              ; preds = %306, %207
  br label %308

308:                                              ; preds = %307, %170
  br label %309

309:                                              ; preds = %308, %149
  br label %310

310:                                              ; preds = %309, %108
  %311 = load i8*, i8** %4, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 2
  store i8* %312, i8** %4, align 8
  %313 = load i32, i32* %6, align 4
  %314 = sub nsw i32 %313, 2
  store i32 %314, i32* %6, align 4
  br label %332

315:                                              ; preds = %37
  %316 = load i32, i32* %7, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %315
  %319 = load i32, i32* @PG_SJIS, align 4
  %320 = load i8*, i8** %4, align 8
  %321 = load i32, i32* %6, align 4
  %322 = call i32 @report_invalid_encoding(i32 %319, i8* %320, i32 %321)
  br label %323

323:                                              ; preds = %318, %315
  %324 = load i32, i32* %7, align 4
  %325 = trunc i32 %324 to i8
  %326 = load i8*, i8** %5, align 8
  %327 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %327, i8** %5, align 8
  store i8 %325, i8* %326, align 1
  %328 = load i8*, i8** %4, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %4, align 8
  %330 = load i32, i32* %6, align 4
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %6, align 4
  br label %332

332:                                              ; preds = %323, %310
  br label %333

333:                                              ; preds = %332, %24
  br label %12

334:                                              ; preds = %12
  %335 = load i8*, i8** %5, align 8
  store i8 0, i8* %335, align 1
  ret void
}

declare dso_local i64 @IS_HIGHBIT_SET(i32) #1

declare dso_local i32 @ISSJISHEAD(i32) #1

declare dso_local i32 @ISSJISTAIL(i8 zeroext) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
