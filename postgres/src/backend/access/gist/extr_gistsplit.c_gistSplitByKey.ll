; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistsplit.c_gistSplitByKey.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistsplit.c_gistSplitByKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32*, i32*, i64*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32*, i32, i32*, i32 }
%struct.TYPE_18__ = type { i32, i32* }

@GEVHDRSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gistSplitByKey(i32 %0, i32 %1, i32* %2, i32 %3, %struct.TYPE_20__* %4, %struct.TYPE_17__* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_19__, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_17__* %5, %struct.TYPE_17__** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %26 = load i32, i32* @GEVHDRSZ, align 4
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = add i64 %27, %31
  %33 = trunc i64 %32 to i32
  %34 = call %struct.TYPE_18__* @palloc(i32 %33)
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %15, align 8
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call %struct.TYPE_18__* @palloc(i32 %42)
  %44 = bitcast %struct.TYPE_18__* %43 to i32*
  store i32* %44, i32** %16, align 8
  store i32 1, i32* %18, align 4
  br label %45

45:                                               ; preds = %86, %7
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %89

49:                                               ; preds = %45
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %18, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @index_getattr(i32 %55, i32 %57, i32 %60, i32* %20)
  store i32 %61, i32* %19, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %20, align 4
  %75 = call i32 @gistdentryinit(%struct.TYPE_20__* %62, i32 %63, i32* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 0, i32 %74)
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %49
  %79 = load i32, i32* %18, align 4
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %49
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %18, align 4
  br label %45

89:                                               ; preds = %45
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %129

93:                                               ; preds = %89
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 1, i32* %99, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %107, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %93
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  call void @gistSplitByKey(i32 %115, i32 %116, i32* %117, i32 %118, %struct.TYPE_20__* %119, %struct.TYPE_17__* %120, i32 %122)
  br label %128

123:                                              ; preds = %93
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @gistSplitHalf(%struct.TYPE_19__* %125, i32 %126)
  br label %128

128:                                              ; preds = %123, %114
  br label %429

129:                                              ; preds = %89
  %130 = load i32, i32* %17, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %216

132:                                              ; preds = %129
  store i32 0, i32* %21, align 4
  %133 = load i32*, i32** %16, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  store i32* %133, i32** %136, align 8
  %137 = load i32, i32* %17, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 1, i32* %146, align 4
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = call %struct.TYPE_18__* @palloc(i32 %150)
  %152 = bitcast %struct.TYPE_18__* %151 to i32*
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  store i32* %152, i32** %155, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 3
  store i32 0, i32* %158, align 8
  store i32 1, i32* %18, align 4
  br label %159

159:                                              ; preds = %195, %132
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %198

163:                                              ; preds = %159
  %164 = load i32, i32* %21, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %164, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  %171 = load i32*, i32** %16, align 8
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %18, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %170
  %179 = load i32, i32* %21, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %21, align 4
  br label %194

181:                                              ; preds = %170, %163
  %182 = load i32, i32* %18, align 4
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %186, i64 %192
  store i32 %182, i32* %193, align 4
  br label %194

194:                                              ; preds = %181, %178
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %18, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %18, align 4
  br label %159

198:                                              ; preds = %159
  %199 = load i32, i32* %14, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %198
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %215

208:                                              ; preds = %201
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 2
  store i64* null, i64** %210, align 8
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %212 = load i32*, i32** %10, align 8
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %214 = call i32 @gistunionsubkey(%struct.TYPE_20__* %211, i32* %212, %struct.TYPE_17__* %213)
  br label %215

215:                                              ; preds = %208, %201, %198
  br label %428

216:                                              ; preds = %129
  %217 = load i32, i32* %8, align 4
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %219 = load i32, i32* %14, align 4
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* %11, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %224 = call i64 @gistUserPicksplit(i32 %217, %struct.TYPE_18__* %218, i32 %219, %struct.TYPE_17__* %220, i32* %221, i32 %222, %struct.TYPE_20__* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %427

226:                                              ; preds = %216
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %227, 1
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %228, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @Assert(i32 %235)
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 2
  %239 = load i64*, i64** %238, align 8
  %240 = icmp eq i64* %239, null
  br i1 %240, label %241, label %250

241:                                              ; preds = %226
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %9, align 4
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* %11, align 4
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %248 = load i32, i32* %14, align 4
  %249 = add nsw i32 %248, 1
  call void @gistSplitByKey(i32 %242, i32 %243, i32* %244, i32 %245, %struct.TYPE_20__* %246, %struct.TYPE_17__* %247, i32 %249)
  br label %426

250:                                              ; preds = %226
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = mul i64 %252, 4
  %254 = trunc i64 %253 to i32
  %255 = call %struct.TYPE_18__* @palloc(i32 %254)
  %256 = bitcast %struct.TYPE_18__* %255 to i32*
  store i32* %256, i32** %22, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = mul i64 %258, 4
  %260 = trunc i64 %259 to i32
  %261 = call %struct.TYPE_18__* @palloc(i32 %260)
  %262 = bitcast %struct.TYPE_18__* %261 to i32*
  store i32* %262, i32** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %18, align 4
  br label %263

263:                                              ; preds = %296, %250
  %264 = load i32, i32* %18, align 4
  %265 = load i32, i32* %11, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %299

267:                                              ; preds = %263
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 2
  %270 = load i64*, i64** %269, align 8
  %271 = load i32, i32* %18, align 4
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %270, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %295

277:                                              ; preds = %267
  %278 = load i32*, i32** %10, align 8
  %279 = load i32, i32* %18, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %22, align 8
  %284 = load i32, i32* %24, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  store i32 %282, i32* %286, align 4
  %287 = load i32, i32* %18, align 4
  %288 = add nsw i32 %287, 1
  %289 = load i32*, i32** %23, align 8
  %290 = load i32, i32* %24, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 %288, i32* %292, align 4
  %293 = load i32, i32* %24, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %24, align 4
  br label %295

295:                                              ; preds = %277, %267
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %18, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %18, align 4
  br label %263

299:                                              ; preds = %263
  %300 = load i32, i32* %24, align 4
  %301 = icmp sgt i32 %300, 0
  %302 = zext i1 %301 to i32
  %303 = call i32 @Assert(i32 %302)
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 3
  %306 = bitcast %struct.TYPE_19__* %25 to i8*
  %307 = bitcast %struct.TYPE_19__* %305 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %306, i8* align 8 %307, i64 32, i1 false)
  %308 = load i32, i32* %11, align 4
  %309 = sext i32 %308 to i64
  %310 = mul i64 4, %309
  %311 = trunc i64 %310 to i32
  %312 = call %struct.TYPE_18__* @palloc(i32 %311)
  %313 = bitcast %struct.TYPE_18__* %312 to i32*
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  store i32* %313, i32** %314, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 2
  %320 = load i32*, i32** %319, align 8
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = sext i32 %324 to i64
  %326 = mul i64 4, %325
  %327 = trunc i64 %326 to i32
  %328 = call i32 @memcpy(i32* %316, i32* %320, i32 %327)
  %329 = load i32, i32* %11, align 4
  %330 = sext i32 %329 to i64
  %331 = mul i64 4, %330
  %332 = trunc i64 %331 to i32
  %333 = call %struct.TYPE_18__* @palloc(i32 %332)
  %334 = bitcast %struct.TYPE_18__* %333 to i32*
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  store i32* %334, i32** %335, align 8
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = sext i32 %345 to i64
  %347 = mul i64 4, %346
  %348 = trunc i64 %347 to i32
  %349 = call i32 @memcpy(i32* %337, i32* %341, i32 %348)
  %350 = load i32, i32* %8, align 4
  %351 = load i32, i32* %9, align 4
  %352 = load i32*, i32** %22, align 8
  %353 = load i32, i32* %24, align 4
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %356 = load i32, i32* %14, align 4
  %357 = add nsw i32 %356, 1
  call void @gistSplitByKey(i32 %350, i32 %351, i32* %352, i32 %353, %struct.TYPE_20__* %354, %struct.TYPE_17__* %355, i32 %357)
  store i32 0, i32* %18, align 4
  br label %358

358:                                              ; preds = %386, %299
  %359 = load i32, i32* %18, align 4
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 3
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = icmp slt i32 %359, %363
  br i1 %364, label %365, label %389

365:                                              ; preds = %358
  %366 = load i32*, i32** %23, align 8
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %368, i32 0, i32 2
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %18, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = sub nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %366, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 3
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %381, align 8
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i32, i32* %380, i64 %384
  store i32 %378, i32* %385, align 4
  br label %386

386:                                              ; preds = %365
  %387 = load i32, i32* %18, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %18, align 4
  br label %358

389:                                              ; preds = %358
  store i32 0, i32* %18, align 4
  br label %390

390:                                              ; preds = %418, %389
  %391 = load i32, i32* %18, align 4
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = icmp slt i32 %391, %395
  br i1 %396, label %397, label %421

397:                                              ; preds = %390
  %398 = load i32*, i32** %23, align 8
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 0
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %18, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = sub nsw i32 %406, 1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %398, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %413, align 8
  %416 = sext i32 %414 to i64
  %417 = getelementptr inbounds i32, i32* %412, i64 %416
  store i32 %410, i32* %417, align 4
  br label %418

418:                                              ; preds = %397
  %419 = load i32, i32* %18, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %18, align 4
  br label %390

421:                                              ; preds = %390
  %422 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i32 0, i32 3
  %424 = bitcast %struct.TYPE_19__* %423 to i8*
  %425 = bitcast %struct.TYPE_19__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %424, i8* align 8 %425, i64 32, i1 false)
  br label %426

426:                                              ; preds = %421, %241
  br label %427

427:                                              ; preds = %426, %216
  br label %428

428:                                              ; preds = %427, %215
  br label %429

429:                                              ; preds = %428, %128
  %430 = load i32, i32* %14, align 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %446

432:                                              ; preds = %429
  %433 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 0
  %435 = load %struct.TYPE_16__*, %struct.TYPE_16__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = icmp sgt i32 %437, 1
  br i1 %438, label %439, label %446

439:                                              ; preds = %432
  %440 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %441 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %440, i32 0, i32 2
  store i64* null, i64** %441, align 8
  %442 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %443 = load i32*, i32** %10, align 8
  %444 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %445 = call i32 @gistunionsubkey(%struct.TYPE_20__* %442, i32* %443, %struct.TYPE_17__* %444)
  br label %446

446:                                              ; preds = %439, %432, %429
  ret void
}

declare dso_local %struct.TYPE_18__* @palloc(i32) #1

declare dso_local i32 @index_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @gistdentryinit(%struct.TYPE_20__*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gistSplitHalf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @gistunionsubkey(%struct.TYPE_20__*, i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @gistUserPicksplit(i32, %struct.TYPE_18__*, i32, %struct.TYPE_17__*, i32*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @Assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
