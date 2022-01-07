; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bf_lbuf.c_linebuffer_write.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bf_lbuf.c_linebuffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_6__ = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32)* @linebuffer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linebuffer_write(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %356

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %11, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %21
  store i32 0, i32* %4, align 4
  br label %356

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = call i32 @BIO_clear_retry_flags(%struct.TYPE_7__* %35)
  br label %37

37:                                               ; preds = %329, %34
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %12, align 8
  store i8 0, i8* %13, align 1
  br label %39

39:                                               ; preds = %54, %37
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = icmp ult i8* %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i8*, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %13, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 10
  br label %51

51:                                               ; preds = %46, %39
  %52 = phi i1 [ false, %39 ], [ %50, %46 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %12, align 8
  br label %39

57:                                               ; preds = %51
  %58 = load i8, i8* %13, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %12, align 8
  store i32 1, i32* %10, align 4
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %61
  br label %66

66:                                               ; preds = %250, %65
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = icmp sgt i64 %74, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %69, %66
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 0
  br label %89

89:                                               ; preds = %84, %69
  %90 = phi i1 [ false, %69 ], [ %88, %84 ]
  br i1 %90, label %91, label %256

91:                                               ; preds = %89
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %14, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %97, %100
  store i32 %101, i32* %8, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %192

108:                                              ; preds = %91
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = load i8*, i8** %12, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = icmp sge i64 %110, %115
  br i1 %116, label %117, label %164

117:                                              ; preds = %108
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  %126 = load i8*, i8** %6, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memcpy(i8* %125, i8* %126, i32 %132)
  %134 = load i8*, i8** %12, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  %145 = load i8*, i8** %12, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = sub nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %7, align 4
  %154 = load i8*, i8** %12, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %9, align 4
  %163 = load i8*, i8** %12, align 8
  store i8* %163, i8** %6, align 8
  br label %191

164:                                              ; preds = %108
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  %173 = load i8*, i8** %6, align 8
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @memcpy(i8* %172, i8* %173, i32 %174)
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, %176
  store i32 %180, i32* %178, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %7, align 4
  %183 = sub nsw i32 %182, %181
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i8*, i8** %6, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %6, align 8
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %164, %117
  br label %192

192:                                              ; preds = %191, %91
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @BIO_write(i32* %195, i8* %198, i32 %201)
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = icmp sle i32 %203, 0
  br i1 %204, label %205, label %228

205:                                              ; preds = %192
  %206 = load i32, i32* %14, align 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %210 = call i32 @BIO_copy_next_retry(%struct.TYPE_7__* %209)
  %211 = load i32, i32* %8, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %205
  %214 = load i32, i32* %9, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = load i32, i32* %9, align 4
  br label %220

218:                                              ; preds = %213
  %219 = load i32, i32* %8, align 4
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %217, %216 ], [ %219, %218 ]
  store i32 %221, i32* %4, align 4
  br label %356

222:                                              ; preds = %205
  %223 = load i32, i32* %8, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = load i32, i32* %9, align 4
  store i32 %226, i32* %4, align 4
  br label %356

227:                                              ; preds = %222
  br label %228

228:                                              ; preds = %227, %192
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %250

234:                                              ; preds = %228
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 2
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %8, align 4
  %248 = sub nsw i32 %246, %247
  %249 = call i32 @memmove(i8* %237, i8* %243, i32 %248)
  br label %250

250:                                              ; preds = %234, %228
  %251 = load i32, i32* %8, align 4
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sub nsw i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %66

256:                                              ; preds = %89
  %257 = load i32, i32* %10, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %256
  %260 = load i8*, i8** %12, align 8
  %261 = load i8*, i8** %6, align 8
  %262 = ptrtoint i8* %260 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = icmp sgt i64 %264, %268
  br i1 %269, label %270, label %322

270:                                              ; preds = %259, %256
  %271 = load i8*, i8** %12, align 8
  %272 = load i8*, i8** %6, align 8
  %273 = ptrtoint i8* %271 to i64
  %274 = ptrtoint i8* %272 to i64
  %275 = sub i64 %273, %274
  %276 = icmp sgt i64 %275, 0
  br i1 %276, label %277, label %322

277:                                              ; preds = %270
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i8*, i8** %6, align 8
  %282 = load i8*, i8** %12, align 8
  %283 = load i8*, i8** %6, align 8
  %284 = ptrtoint i8* %282 to i64
  %285 = ptrtoint i8* %283 to i64
  %286 = sub i64 %284, %285
  %287 = trunc i64 %286 to i32
  %288 = call i32 @BIO_write(i32* %280, i8* %281, i32 %287)
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* %8, align 4
  %290 = icmp sle i32 %289, 0
  br i1 %290, label %291, label %311

291:                                              ; preds = %277
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %293 = call i32 @BIO_copy_next_retry(%struct.TYPE_7__* %292)
  %294 = load i32, i32* %8, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %291
  %297 = load i32, i32* %9, align 4
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %296
  %300 = load i32, i32* %9, align 4
  br label %303

301:                                              ; preds = %296
  %302 = load i32, i32* %8, align 4
  br label %303

303:                                              ; preds = %301, %299
  %304 = phi i32 [ %300, %299 ], [ %302, %301 ]
  store i32 %304, i32* %4, align 4
  br label %356

305:                                              ; preds = %291
  %306 = load i32, i32* %8, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  %309 = load i32, i32* %9, align 4
  store i32 %309, i32* %4, align 4
  br label %356

310:                                              ; preds = %305
  br label %311

311:                                              ; preds = %310, %277
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %313, %312
  store i32 %314, i32* %9, align 4
  %315 = load i32, i32* %8, align 4
  %316 = load i8*, i8** %6, align 8
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i8, i8* %316, i64 %317
  store i8* %318, i8** %6, align 8
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* %7, align 4
  %321 = sub nsw i32 %320, %319
  store i32 %321, i32* %7, align 4
  br label %322

322:                                              ; preds = %311, %270, %259
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %10, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %323
  %327 = load i32, i32* %7, align 4
  %328 = icmp sgt i32 %327, 0
  br label %329

329:                                              ; preds = %326, %323
  %330 = phi i1 [ false, %323 ], [ %328, %326 ]
  br i1 %330, label %37, label %331

331:                                              ; preds = %329
  %332 = load i32, i32* %7, align 4
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %354

334:                                              ; preds = %331
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 2
  %337 = load i8*, i8** %336, align 8
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %337, i64 %341
  %343 = load i8*, i8** %6, align 8
  %344 = load i32, i32* %7, align 4
  %345 = call i32 @memcpy(i8* %342, i8* %343, i32 %344)
  %346 = load i32, i32* %7, align 4
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %349, %346
  store i32 %350, i32* %348, align 4
  %351 = load i32, i32* %7, align 4
  %352 = load i32, i32* %9, align 4
  %353 = add nsw i32 %352, %351
  store i32 %353, i32* %9, align 4
  br label %354

354:                                              ; preds = %334, %331
  %355 = load i32, i32* %9, align 4
  store i32 %355, i32* %4, align 4
  br label %356

356:                                              ; preds = %354, %308, %303, %225, %220, %33, %20
  %357 = load i32, i32* %4, align 4
  ret i32 %357
}

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @BIO_copy_next_retry(%struct.TYPE_7__*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
