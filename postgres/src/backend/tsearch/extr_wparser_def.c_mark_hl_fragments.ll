; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_wparser_def.c_mark_hl_fragments.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_wparser_def.c_mark_hl_fragments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }

@PG_INT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i32, i32, i32, i32, i32)* @mark_hl_fragments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_hl_fragments(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 32, i32* %28, align 4
  %33 = load i32, i32* %28, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 24
  %36 = trunc i64 %35 to i32
  %37 = call %struct.TYPE_14__* @palloc(i32 %36)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %32, align 8
  br label %38

38:                                               ; preds = %106, %7
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @hlCover(%struct.TYPE_13__* %39, i32 %40, i32* %25, i32* %26)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %109

43:                                               ; preds = %38
  %44 = load i32, i32* %25, align 4
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %26, align 4
  store i32 %45, i32* %24, align 4
  br label %46

46:                                               ; preds = %66, %43
  %47 = load i32, i32* %23, align 4
  %48 = load i32, i32* %24, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %106

50:                                               ; preds = %46
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @get_next_fragment(%struct.TYPE_13__* %51, i32* %23, i32* %24, i32* %16, i32* %15, i32 %52)
  %54 = load i32, i32* %27, align 4
  %55 = load i32, i32* %28, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i32, i32* %28, align 4
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %28, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %61 = load i32, i32* %28, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 24, %62
  %64 = trunc i64 %63 to i32
  %65 = call %struct.TYPE_14__* @repalloc(%struct.TYPE_14__* %60, i32 %64)
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %32, align 8
  br label %66

66:                                               ; preds = %57, %50
  %67 = load i32, i32* %23, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %69 = load i32, i32* %27, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 4
  %73 = load i32, i32* %24, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %75 = load i32, i32* %27, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %81 = load i32, i32* %27, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %87 = load i32, i32* %27, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  store i32 %85, i32* %90, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %92 = load i32, i32* %27, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 4
  store i32 0, i32* %95, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %97 = load i32, i32* %27, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 5
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* %27, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %27, align 4
  %103 = load i32, i32* %24, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %23, align 4
  %105 = load i32, i32* %26, align 4
  store i32 %105, i32* %24, align 4
  br label %46

106:                                              ; preds = %46
  %107 = load i32, i32* %25, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %25, align 4
  br label %38

109:                                              ; preds = %38
  store i32 0, i32* %18, align 4
  br label %110

110:                                              ; preds = %512, %109
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %515

114:                                              ; preds = %110
  store i32 0, i32* %31, align 4
  %115 = load i32, i32* @PG_INT32_MAX, align 4
  store i32 %115, i32* %30, align 4
  store i32 -1, i32* %29, align 4
  store i32 0, i32* %17, align 4
  br label %116

116:                                              ; preds = %178, %114
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %27, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %181

120:                                              ; preds = %116
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %177, label %128

128:                                              ; preds = %120
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %177, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %31, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %137, %143
  br i1 %144, label %163, label %145

145:                                              ; preds = %136
  %146 = load i32, i32* %31, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %146, %152
  br i1 %153, label %154, label %177

154:                                              ; preds = %145
  %155 = load i32, i32* %30, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %155, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %154, %136
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %31, align 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %30, align 4
  %176 = load i32, i32* %17, align 4
  store i32 %176, i32* %29, align 4
  br label %177

177:                                              ; preds = %163, %154, %145, %128, %120
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %17, align 4
  br label %116

181:                                              ; preds = %116
  %182 = load i32, i32* %29, align 4
  %183 = icmp sge i32 %182, 0
  br i1 %183, label %184, label %510

184:                                              ; preds = %181
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %186 = load i32, i32* %29, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 4
  store i32 1, i32* %189, align 4
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %191 = load i32, i32* %29, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %23, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %197 = load i32, i32* %29, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %24, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %203 = load i32, i32* %29, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* %13, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %409

211:                                              ; preds = %184
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %16, align 4
  %214 = sub nsw i32 %212, %213
  %215 = sdiv i32 %214, 2
  store i32 %215, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %216 = load i32, i32* %23, align 4
  store i32 %216, i32* %22, align 4
  %217 = load i32, i32* %23, align 4
  %218 = sub nsw i32 %217, 1
  store i32 %218, i32* %17, align 4
  br label %219

219:                                              ; preds = %257, %211
  %220 = load i32, i32* %17, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %237

222:                                              ; preds = %219
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* %21, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %237

226:                                              ; preds = %222
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = load i32, i32* %17, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  %236 = xor i1 %235, true
  br label %237

237:                                              ; preds = %226, %222, %219
  %238 = phi i1 [ false, %222 ], [ false, %219 ], [ %236, %226 ]
  br i1 %238, label %239, label %260

239:                                              ; preds = %237
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = load i32, i32* %17, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @NONWORDTOKEN(i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %239
  %251 = load i32, i32* %16, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %16, align 4
  %253 = load i32, i32* %20, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %20, align 4
  br label %255

255:                                              ; preds = %250, %239
  %256 = load i32, i32* %17, align 4
  store i32 %256, i32* %22, align 4
  br label %257

257:                                              ; preds = %255
  %258 = load i32, i32* %17, align 4
  %259 = add nsw i32 %258, -1
  store i32 %259, i32* %17, align 4
  br label %219

260:                                              ; preds = %237
  %261 = load i32, i32* %22, align 4
  store i32 %261, i32* %17, align 4
  br label %262

262:                                              ; preds = %307, %260
  %263 = load i32, i32* %17, align 4
  %264 = load i32, i32* %23, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %290

266:                                              ; preds = %262
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = load i32, i32* %17, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i64 @NOENDTOKEN(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %288, label %277

277:                                              ; preds = %266
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %279, align 8
  %281 = load i32, i32* %17, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %11, align 4
  %287 = icmp sle i32 %285, %286
  br label %288

288:                                              ; preds = %277, %266
  %289 = phi i1 [ true, %266 ], [ %287, %277 ]
  br label %290

290:                                              ; preds = %288, %262
  %291 = phi i1 [ false, %262 ], [ %289, %288 ]
  br i1 %291, label %292, label %310

292:                                              ; preds = %290
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = load i32, i32* %17, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @NONWORDTOKEN(i32 %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %292
  %304 = load i32, i32* %16, align 4
  %305 = add nsw i32 %304, -1
  store i32 %305, i32* %16, align 4
  br label %306

306:                                              ; preds = %303, %292
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %17, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %17, align 4
  br label %262

310:                                              ; preds = %290
  %311 = load i32, i32* %17, align 4
  store i32 %311, i32* %23, align 4
  %312 = load i32, i32* %24, align 4
  store i32 %312, i32* %22, align 4
  %313 = load i32, i32* %24, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %17, align 4
  br label %315

315:                                              ; preds = %354, %310
  %316 = load i32, i32* %17, align 4
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp slt i32 %316, %319
  br i1 %320, label %321, label %336

321:                                              ; preds = %315
  %322 = load i32, i32* %16, align 4
  %323 = load i32, i32* %13, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %336

325:                                              ; preds = %321
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %327, align 8
  %329 = load i32, i32* %17, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = icmp ne i32 %333, 0
  %335 = xor i1 %334, true
  br label %336

336:                                              ; preds = %325, %321, %315
  %337 = phi i1 [ false, %321 ], [ false, %315 ], [ %335, %325 ]
  br i1 %337, label %338, label %357

338:                                              ; preds = %336
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %340, align 8
  %342 = load i32, i32* %17, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @NONWORDTOKEN(i32 %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %338
  %350 = load i32, i32* %16, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %16, align 4
  br label %352

352:                                              ; preds = %349, %338
  %353 = load i32, i32* %17, align 4
  store i32 %353, i32* %22, align 4
  br label %354

354:                                              ; preds = %352
  %355 = load i32, i32* %17, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %17, align 4
  br label %315

357:                                              ; preds = %336
  %358 = load i32, i32* %22, align 4
  store i32 %358, i32* %17, align 4
  br label %359

359:                                              ; preds = %404, %357
  %360 = load i32, i32* %17, align 4
  %361 = load i32, i32* %24, align 4
  %362 = icmp sgt i32 %360, %361
  br i1 %362, label %363, label %387

363:                                              ; preds = %359
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** %365, align 8
  %367 = load i32, i32* %17, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = call i64 @NOENDTOKEN(i32 %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %385, label %374

374:                                              ; preds = %363
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %376, align 8
  %378 = load i32, i32* %17, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %11, align 4
  %384 = icmp sle i32 %382, %383
  br label %385

385:                                              ; preds = %374, %363
  %386 = phi i1 [ true, %363 ], [ %384, %374 ]
  br label %387

387:                                              ; preds = %385, %359
  %388 = phi i1 [ false, %359 ], [ %386, %385 ]
  br i1 %388, label %389, label %407

389:                                              ; preds = %387
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 1
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %391, align 8
  %393 = load i32, i32* %17, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @NONWORDTOKEN(i32 %397)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %403, label %400

400:                                              ; preds = %389
  %401 = load i32, i32* %16, align 4
  %402 = add nsw i32 %401, -1
  store i32 %402, i32* %16, align 4
  br label %403

403:                                              ; preds = %400, %389
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %17, align 4
  %406 = add nsw i32 %405, -1
  store i32 %406, i32* %17, align 4
  br label %359

407:                                              ; preds = %387
  %408 = load i32, i32* %17, align 4
  store i32 %408, i32* %24, align 4
  br label %409

409:                                              ; preds = %407, %184
  %410 = load i32, i32* %23, align 4
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %412 = load i32, i32* %29, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 0
  store i32 %410, i32* %415, align 4
  %416 = load i32, i32* %24, align 4
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %418 = load i32, i32* %29, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 1
  store i32 %416, i32* %421, align 4
  %422 = load i32, i32* %16, align 4
  %423 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %424 = load i32, i32* %29, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 2
  store i32 %422, i32* %427, align 4
  %428 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %429 = load i32, i32* %10, align 4
  %430 = load i32, i32* %23, align 4
  %431 = load i32, i32* %24, align 4
  %432 = call i32 @mark_fragment(%struct.TYPE_13__* %428, i32 %429, i32 %430, i32 %431)
  %433 = load i32, i32* %19, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %435

435:                                              ; preds = %506, %409
  %436 = load i32, i32* %17, align 4
  %437 = load i32, i32* %27, align 4
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %439, label %509

439:                                              ; preds = %435
  %440 = load i32, i32* %17, align 4
  %441 = load i32, i32* %29, align 4
  %442 = icmp ne i32 %440, %441
  br i1 %442, label %443, label %505

443:                                              ; preds = %439
  %444 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %445 = load i32, i32* %17, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %451 = load i32, i32* %29, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = icmp sge i32 %449, %455
  br i1 %456, label %457, label %471

457:                                              ; preds = %443
  %458 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %459 = load i32, i32* %17, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %465 = load i32, i32* %29, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %464, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = icmp sle i32 %463, %469
  br i1 %470, label %499, label %471

471:                                              ; preds = %457, %443
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %473 = load i32, i32* %17, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %479 = load i32, i32* %29, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %478, i64 %480
  %482 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = icmp sge i32 %477, %483
  br i1 %484, label %485, label %505

485:                                              ; preds = %471
  %486 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %487 = load i32, i32* %17, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %493 = load i32, i32* %29, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %492, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = icmp sle i32 %491, %497
  br i1 %498, label %499, label %505

499:                                              ; preds = %485, %457
  %500 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %501 = load i32, i32* %17, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %500, i64 %502
  %504 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %503, i32 0, i32 5
  store i32 1, i32* %504, align 4
  br label %505

505:                                              ; preds = %499, %485, %471, %439
  br label %506

506:                                              ; preds = %505
  %507 = load i32, i32* %17, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %17, align 4
  br label %435

509:                                              ; preds = %435
  br label %511

510:                                              ; preds = %181
  br label %515

511:                                              ; preds = %509
  br label %512

512:                                              ; preds = %511
  %513 = load i32, i32* %18, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %18, align 4
  br label %110

515:                                              ; preds = %510, %110
  %516 = load i32, i32* %19, align 4
  %517 = icmp sle i32 %516, 0
  br i1 %517, label %518, label %556

518:                                              ; preds = %515
  store i32 0, i32* %16, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %17, align 4
  br label %519

519:                                              ; preds = %547, %518
  %520 = load i32, i32* %17, align 4
  %521 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %522 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = icmp slt i32 %520, %523
  br i1 %524, label %525, label %529

525:                                              ; preds = %519
  %526 = load i32, i32* %16, align 4
  %527 = load i32, i32* %12, align 4
  %528 = icmp slt i32 %526, %527
  br label %529

529:                                              ; preds = %525, %519
  %530 = phi i1 [ false, %519 ], [ %528, %525 ]
  br i1 %530, label %531, label %550

531:                                              ; preds = %529
  %532 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %533 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %532, i32 0, i32 1
  %534 = load %struct.TYPE_12__*, %struct.TYPE_12__** %533, align 8
  %535 = load i32, i32* %17, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %534, i64 %536
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = call i32 @NONWORDTOKEN(i32 %539)
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %545, label %542

542:                                              ; preds = %531
  %543 = load i32, i32* %16, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %16, align 4
  br label %545

545:                                              ; preds = %542, %531
  %546 = load i32, i32* %17, align 4
  store i32 %546, i32* %24, align 4
  br label %547

547:                                              ; preds = %545
  %548 = load i32, i32* %17, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %17, align 4
  br label %519

550:                                              ; preds = %529
  %551 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %552 = load i32, i32* %10, align 4
  %553 = load i32, i32* %23, align 4
  %554 = load i32, i32* %24, align 4
  %555 = call i32 @mark_fragment(%struct.TYPE_13__* %551, i32 %552, i32 %553, i32 %554)
  br label %556

556:                                              ; preds = %550, %515
  %557 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %558 = call i32 @pfree(%struct.TYPE_14__* %557)
  ret void
}

declare dso_local %struct.TYPE_14__* @palloc(i32) #1

declare dso_local i64 @hlCover(%struct.TYPE_13__*, i32, i32*, i32*) #1

declare dso_local i32 @get_next_fragment(%struct.TYPE_13__*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_14__* @repalloc(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @NONWORDTOKEN(i32) #1

declare dso_local i64 @NOENDTOKEN(i32) #1

declare dso_local i32 @mark_fragment(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
