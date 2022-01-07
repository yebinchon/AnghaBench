; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder_optimum_fast.c_lzma_lzma_optimum_fast.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder_optimum_fast.c_lzma_lzma_optimum_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64**, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MATCH_LEN_MAX = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@REP_DISTANCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lzma_lzma_optimum_fast(%struct.TYPE_11__* noalias %0, %struct.TYPE_10__* noalias %1, i32* noalias %2, i32* noalias %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = call i8* @mf_find(%struct.TYPE_10__* %33, i32* %11, %struct.TYPE_12__* %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %10, align 4
  br label %52

39:                                               ; preds = %4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %39, %32
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = call i64* @mf_ptr(%struct.TYPE_10__* %53)
  %55 = getelementptr inbounds i64, i64* %54, i64 -1
  store i64* %55, i64** %12, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = call i64 @mf_avail(%struct.TYPE_10__* %56)
  %58 = add nsw i64 %57, 1
  %59 = load i32, i32* @MATCH_LEN_MAX, align 4
  %60 = call i32 @my_min(i64 %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i32, i32* @UINT32_MAX, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 1, i32* %66, align 4
  br label %434

67:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %68

68:                                               ; preds = %136, %67
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @REP_DISTANCES, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %139

72:                                               ; preds = %68
  %73 = load i64*, i64** %12, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i64**, i64*** %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64*, i64** %76, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = ptrtoint i64* %73 to i64
  %82 = ptrtoint i64* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 8
  %85 = sub nsw i64 %84, 1
  %86 = inttoptr i64 %85 to i64*
  store i64* %86, i64** %17, align 8
  %87 = load i64*, i64** %12, align 8
  %88 = load i64*, i64** %17, align 8
  %89 = call i64 @not_equal_16(i64* %87, i64* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %72
  br label %136

92:                                               ; preds = %72
  store i32 2, i32* %18, align 4
  br label %93

93:                                               ; preds = %112, %92
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load i64*, i64** %12, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %17, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %102, %107
  br label %109

109:                                              ; preds = %97, %93
  %110 = phi i1 [ false, %93 ], [ %108, %97 ]
  br i1 %110, label %111, label %115

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %18, align 4
  br label %93

115:                                              ; preds = %109
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i32, i32* %16, align 4
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %125 = load i32, i32* %18, align 4
  %126 = sub nsw i32 %125, 1
  %127 = call i32 @mf_skip(%struct.TYPE_10__* %124, i32 %126)
  br label %434

128:                                              ; preds = %115
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %18, align 4
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %132, %128
  br label %136

136:                                              ; preds = %135, %91
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %68

139:                                              ; preds = %68
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @REP_DISTANCES, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32*, i32** %7, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32*, i32** %8, align 8
  store i32 %156, i32* %157, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sub nsw i32 %159, 1
  %161 = call i32 @mf_skip(%struct.TYPE_10__* %158, i32 %160)
  br label %434

162:                                              ; preds = %139
  store i32 0, i32* %19, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp sge i32 %163, 2
  br i1 %164, label %165, label %236

165:                                              ; preds = %162
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %19, align 4
  br label %175

175:                                              ; preds = %207, %165
  %176 = load i32, i32* %11, align 4
  %177 = icmp sgt i32 %176, 1
  br i1 %177, label %178, label %191

178:                                              ; preds = %175
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sub nsw i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  %190 = icmp eq i32 %179, %189
  br label %191

191:                                              ; preds = %178, %175
  %192 = phi i1 [ false, %175 ], [ %190, %178 ]
  br i1 %192, label %193, label %228

193:                                              ; preds = %191
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sub nsw i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %19, align 4
  %204 = call i64 @change_pair(i32 %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %193
  br label %228

207:                                              ; preds = %193
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %11, align 4
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %10, align 4
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %19, align 4
  br label %175

228:                                              ; preds = %206, %191
  %229 = load i32, i32* %10, align 4
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load i32, i32* %19, align 4
  %233 = icmp sge i32 %232, 128
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  store i32 1, i32* %10, align 4
  br label %235

235:                                              ; preds = %234, %231, %228
  br label %236

236:                                              ; preds = %235, %162
  %237 = load i32, i32* %14, align 4
  %238 = icmp sge i32 %237, 2
  br i1 %238, label %239, label %274

239:                                              ; preds = %236
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %240, 1
  %242 = load i32, i32* %10, align 4
  %243 = icmp sge i32 %241, %242
  br i1 %243, label %264, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 2
  %247 = load i32, i32* %10, align 4
  %248 = icmp sge i32 %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load i32, i32* %19, align 4
  %251 = call i32 @UINT32_C(i32 1)
  %252 = shl i32 %251, 9
  %253 = icmp sgt i32 %250, %252
  br i1 %253, label %264, label %254

254:                                              ; preds = %249, %244
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, 3
  %257 = load i32, i32* %10, align 4
  %258 = icmp sge i32 %256, %257
  br i1 %258, label %259, label %273

259:                                              ; preds = %254
  %260 = load i32, i32* %19, align 4
  %261 = call i32 @UINT32_C(i32 1)
  %262 = shl i32 %261, 15
  %263 = icmp sgt i32 %260, %262
  br i1 %263, label %264, label %273

264:                                              ; preds = %259, %249, %239
  %265 = load i32, i32* %15, align 4
  %266 = load i32*, i32** %7, align 8
  store i32 %265, i32* %266, align 4
  %267 = load i32, i32* %14, align 4
  %268 = load i32*, i32** %8, align 8
  store i32 %267, i32* %268, align 4
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %270 = load i32, i32* %14, align 4
  %271 = sub nsw i32 %270, 1
  %272 = call i32 @mf_skip(%struct.TYPE_10__* %269, i32 %271)
  br label %434

273:                                              ; preds = %259, %254
  br label %274

274:                                              ; preds = %273, %236
  %275 = load i32, i32* %10, align 4
  %276 = icmp slt i32 %275, 2
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %13, align 4
  %279 = icmp sle i32 %278, 2
  br i1 %279, label %280, label %284

280:                                              ; preds = %277, %274
  %281 = load i32, i32* @UINT32_MAX, align 4
  %282 = load i32*, i32** %7, align 8
  store i32 %281, i32* %282, align 4
  %283 = load i32*, i32** %8, align 8
  store i32 1, i32* %283, align 4
  br label %434

284:                                              ; preds = %277
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 3
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %289, align 8
  %291 = call i8* @mf_find(%struct.TYPE_10__* %285, i32* %287, %struct.TYPE_12__* %290)
  %292 = ptrtoint i8* %291 to i32
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp sge i32 %297, 2
  br i1 %298, label %299, label %359

299:                                              ; preds = %284
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 3
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %301, align 8
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = sub nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %20, align 4
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %10, align 4
  %315 = icmp sge i32 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %299
  %317 = load i32, i32* %20, align 4
  %318 = load i32, i32* %19, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %354, label %320

320:                                              ; preds = %316, %299
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* %10, align 4
  %325 = add nsw i32 %324, 1
  %326 = icmp eq i32 %323, %325
  br i1 %326, label %327, label %332

327:                                              ; preds = %320
  %328 = load i32, i32* %19, align 4
  %329 = load i32, i32* %20, align 4
  %330 = call i64 @change_pair(i32 %328, i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %354

332:                                              ; preds = %327, %320
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* %10, align 4
  %337 = add nsw i32 %336, 1
  %338 = icmp sgt i32 %335, %337
  br i1 %338, label %354, label %339

339:                                              ; preds = %332
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = add nsw i32 %342, 1
  %344 = load i32, i32* %10, align 4
  %345 = icmp sge i32 %343, %344
  br i1 %345, label %346, label %358

346:                                              ; preds = %339
  %347 = load i32, i32* %10, align 4
  %348 = icmp sge i32 %347, 3
  br i1 %348, label %349, label %358

349:                                              ; preds = %346
  %350 = load i32, i32* %20, align 4
  %351 = load i32, i32* %19, align 4
  %352 = call i64 @change_pair(i32 %350, i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %349, %332, %327, %316
  %355 = load i32, i32* @UINT32_MAX, align 4
  %356 = load i32*, i32** %7, align 8
  store i32 %355, i32* %356, align 4
  %357 = load i32*, i32** %8, align 8
  store i32 1, i32* %357, align 4
  br label %434

358:                                              ; preds = %349, %346, %339
  br label %359

359:                                              ; preds = %358, %284
  %360 = load i64*, i64** %12, align 8
  %361 = getelementptr inbounds i64, i64* %360, i32 1
  store i64* %361, i64** %12, align 8
  %362 = load i32, i32* %10, align 4
  %363 = sub nsw i32 %362, 1
  store i32 %363, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %364

364:                                              ; preds = %420, %359
  %365 = load i32, i32* %22, align 4
  %366 = load i32, i32* @REP_DISTANCES, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %423

368:                                              ; preds = %364
  %369 = load i64*, i64** %12, align 8
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 2
  %372 = load i64**, i64*** %371, align 8
  %373 = load i32, i32* %22, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i64*, i64** %372, i64 %374
  %376 = load i64*, i64** %375, align 8
  %377 = ptrtoint i64* %369 to i64
  %378 = ptrtoint i64* %376 to i64
  %379 = sub i64 %377, %378
  %380 = sdiv exact i64 %379, 8
  %381 = sub nsw i64 %380, 1
  %382 = inttoptr i64 %381 to i64*
  store i64* %382, i64** %23, align 8
  %383 = load i64*, i64** %12, align 8
  %384 = load i64*, i64** %23, align 8
  %385 = call i64 @not_equal_16(i64* %383, i64* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %368
  br label %420

388:                                              ; preds = %368
  store i32 2, i32* %24, align 4
  br label %389

389:                                              ; preds = %408, %388
  %390 = load i32, i32* %24, align 4
  %391 = load i32, i32* %21, align 4
  %392 = icmp slt i32 %390, %391
  br i1 %392, label %393, label %405

393:                                              ; preds = %389
  %394 = load i64*, i64** %12, align 8
  %395 = load i32, i32* %24, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i64, i64* %394, i64 %396
  %398 = load i64, i64* %397, align 8
  %399 = load i64*, i64** %23, align 8
  %400 = load i32, i32* %24, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i64, i64* %399, i64 %401
  %403 = load i64, i64* %402, align 8
  %404 = icmp eq i64 %398, %403
  br label %405

405:                                              ; preds = %393, %389
  %406 = phi i1 [ false, %389 ], [ %404, %393 ]
  br i1 %406, label %407, label %411

407:                                              ; preds = %405
  br label %408

408:                                              ; preds = %407
  %409 = load i32, i32* %24, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %24, align 4
  br label %389

411:                                              ; preds = %405
  %412 = load i32, i32* %24, align 4
  %413 = load i32, i32* %21, align 4
  %414 = icmp sge i32 %412, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %411
  %416 = load i32, i32* @UINT32_MAX, align 4
  %417 = load i32*, i32** %7, align 8
  store i32 %416, i32* %417, align 4
  %418 = load i32*, i32** %8, align 8
  store i32 1, i32* %418, align 4
  br label %434

419:                                              ; preds = %411
  br label %420

420:                                              ; preds = %419, %387
  %421 = load i32, i32* %22, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %22, align 4
  br label %364

423:                                              ; preds = %364
  %424 = load i32, i32* %19, align 4
  %425 = load i32, i32* @REP_DISTANCES, align 4
  %426 = add nsw i32 %424, %425
  %427 = load i32*, i32** %7, align 8
  store i32 %426, i32* %427, align 4
  %428 = load i32, i32* %10, align 4
  %429 = load i32*, i32** %8, align 8
  store i32 %428, i32* %429, align 4
  %430 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %431 = load i32, i32* %10, align 4
  %432 = sub nsw i32 %431, 2
  %433 = call i32 @mf_skip(%struct.TYPE_10__* %430, i32 %432)
  br label %434

434:                                              ; preds = %423, %415, %354, %280, %264, %143, %119, %63
  ret void
}

declare dso_local i8* @mf_find(%struct.TYPE_10__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64* @mf_ptr(%struct.TYPE_10__*) #1

declare dso_local i32 @my_min(i64, i32) #1

declare dso_local i64 @mf_avail(%struct.TYPE_10__*) #1

declare dso_local i64 @not_equal_16(i64*, i64*) #1

declare dso_local i32 @mf_skip(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @change_pair(i32, i32) #1

declare dso_local i32 @UINT32_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
