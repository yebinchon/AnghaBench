; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_compute_distinct_stats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_compute_distinct_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, double, double, double, double**, i32*, i32*, %struct.TYPE_8__*, i32**, i32, i32*, i32*, i32*, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TrackItem = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@WIDTH_THRESHOLD = common dso_local global i64 0, align 8
@STATISTIC_KIND_MCV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32 (%struct.TYPE_10__*, i32, i32*)*, i32, double)* @compute_distinct_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_distinct_stats(%struct.TYPE_10__* %0, i32 (%struct.TYPE_10__*, i32, i32*)* %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32 (%struct.TYPE_10__*, i32, i32*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TrackItem*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca double*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 (%struct.TYPE_10__*, i32, i32*)* %1, i32 (%struct.TYPE_10__*, i32, i32*)** %6, align 8
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store double 0.000000e+00, double* %13, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 7
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, -1
  br label %51

51:                                               ; preds = %44, %4
  %52 = phi i1 [ false, %4 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 7
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 7
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br label %67

67:                                               ; preds = %60, %51
  %68 = phi i1 [ false, %51 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %15, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 15
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %20, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 14
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %21, align 8
  %79 = load i32, i32* %20, align 4
  %80 = mul nsw i32 2, %79
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp slt i32 %81, 10
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  store i32 10, i32* %19, align 4
  br label %84

84:                                               ; preds = %83, %67
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 8
  %88 = trunc i64 %87 to i32
  %89 = call i64 @palloc(i32 %88)
  %90 = inttoptr i64 %89 to %struct.TrackItem*
  store %struct.TrackItem* %90, %struct.TrackItem** %17, align 8
  store i32 0, i32* %18, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @fmgr_info(i32 %93, i32* %16)
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %307, %84
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %310

99:                                               ; preds = %95
  %100 = call i32 (...) @vacuum_delay_point()
  %101 = load i32 (%struct.TYPE_10__*, i32, i32*)*, i32 (%struct.TYPE_10__*, i32, i32*)** %6, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 %101(%struct.TYPE_10__* %102, i32 %103, i32* %23)
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %23, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %307

110:                                              ; preds = %99
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %110
  %116 = load i32, i32* %22, align 4
  %117 = call i32 @DatumGetPointer(i32 %116)
  %118 = call i64 @VARSIZE_ANY(i32 %117)
  %119 = sitofp i64 %118 to double
  %120 = load double, double* %13, align 8
  %121 = fadd double %120, %119
  store double %121, double* %13, align 8
  %122 = load i32, i32* %22, align 4
  %123 = call i64 @toast_raw_datum_size(i32 %122)
  %124 = load i64, i64* @WIDTH_THRESHOLD, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %115
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %307

129:                                              ; preds = %115
  %130 = load i32, i32* %22, align 4
  %131 = call i32 @PG_DETOAST_DATUM(i32 %130)
  %132 = call i32 @PointerGetDatum(i32 %131)
  store i32 %132, i32* %22, align 4
  br label %145

133:                                              ; preds = %110
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load i32, i32* %22, align 4
  %138 = call i32 @DatumGetCString(i32 %137)
  %139 = call i64 @strlen(i32 %138)
  %140 = add nsw i64 %139, 1
  %141 = sitofp i64 %140 to double
  %142 = load double, double* %13, align 8
  %143 = fadd double %142, %141
  store double %143, double* %13, align 8
  br label %144

144:                                              ; preds = %136, %133
  br label %145

145:                                              ; preds = %144, %129
  store i32 0, i32* %24, align 4
  %146 = load i32, i32* %18, align 4
  store i32 %146, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %147

147:                                              ; preds = %181, %145
  %148 = load i32, i32* %26, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %184

151:                                              ; preds = %147
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %22, align 4
  %156 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %157 = load i32, i32* %26, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %156, i64 %158
  %160 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @FunctionCall2Coll(i32* %16, i32 %154, i32 %155, i32 %161)
  %163 = call i64 @DatumGetBool(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %151
  store i32 1, i32* %24, align 4
  br label %184

166:                                              ; preds = %151
  %167 = load i32, i32* %26, align 4
  %168 = load i32, i32* %25, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %172 = load i32, i32* %26, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %171, i64 %173
  %175 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %180

178:                                              ; preds = %170
  %179 = load i32, i32* %26, align 4
  store i32 %179, i32* %25, align 4
  br label %180

180:                                              ; preds = %178, %170, %166
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %26, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %26, align 4
  br label %147

184:                                              ; preds = %165, %147
  %185 = load i32, i32* %24, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %247

187:                                              ; preds = %184
  %188 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %189 = load i32, i32* %26, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %188, i64 %190
  %192 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %215, %187
  %196 = load i32, i32* %26, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %195
  %199 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %200 = load i32, i32* %26, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %199, i64 %201
  %203 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %206 = load i32, i32* %26, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %205, i64 %208
  %210 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %204, %211
  br label %213

213:                                              ; preds = %198, %195
  %214 = phi i1 [ false, %195 ], [ %212, %198 ]
  br i1 %214, label %215, label %246

215:                                              ; preds = %213
  %216 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %217 = load i32, i32* %26, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %216, i64 %218
  %220 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %223 = load i32, i32* %26, align 4
  %224 = sub nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %222, i64 %225
  %227 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @swapDatum(i32 %221, i32 %228)
  %230 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %231 = load i32, i32* %26, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %230, i64 %232
  %234 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %237 = load i32, i32* %26, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %236, i64 %239
  %241 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @swapInt(i32 %235, i32 %242)
  %244 = load i32, i32* %26, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %26, align 4
  br label %195

246:                                              ; preds = %213
  br label %306

247:                                              ; preds = %184
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* %19, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load i32, i32* %18, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %18, align 4
  br label %254

254:                                              ; preds = %251, %247
  %255 = load i32, i32* %18, align 4
  %256 = sub nsw i32 %255, 1
  store i32 %256, i32* %26, align 4
  br label %257

257:                                              ; preds = %286, %254
  %258 = load i32, i32* %26, align 4
  %259 = load i32, i32* %25, align 4
  %260 = icmp sgt i32 %258, %259
  br i1 %260, label %261, label %289

261:                                              ; preds = %257
  %262 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %263 = load i32, i32* %26, align 4
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %262, i64 %265
  %267 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %270 = load i32, i32* %26, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %269, i64 %271
  %273 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %272, i32 0, i32 0
  store i32 %268, i32* %273, align 4
  %274 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %275 = load i32, i32* %26, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %274, i64 %277
  %279 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %282 = load i32, i32* %26, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %281, i64 %283
  %285 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %284, i32 0, i32 1
  store i32 %280, i32* %285, align 4
  br label %286

286:                                              ; preds = %261
  %287 = load i32, i32* %26, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %26, align 4
  br label %257

289:                                              ; preds = %257
  %290 = load i32, i32* %25, align 4
  %291 = load i32, i32* %18, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %305

293:                                              ; preds = %289
  %294 = load i32, i32* %22, align 4
  %295 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %296 = load i32, i32* %25, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %295, i64 %297
  %299 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %298, i32 0, i32 0
  store i32 %294, i32* %299, align 4
  %300 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %301 = load i32, i32* %25, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %300, i64 %302
  %304 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %303, i32 0, i32 1
  store i32 1, i32* %304, align 4
  br label %305

305:                                              ; preds = %293, %289
  br label %306

306:                                              ; preds = %305, %246
  br label %307

307:                                              ; preds = %306, %126, %107
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %9, align 4
  br label %95

310:                                              ; preds = %95
  %311 = load i32, i32* %11, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %641

313:                                              ; preds = %310
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  store i32 1, i32* %315, align 8
  %316 = load i32, i32* %10, align 4
  %317 = sitofp i32 %316 to double
  %318 = load i32, i32* %7, align 4
  %319 = sitofp i32 %318 to double
  %320 = fdiv double %317, %319
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 1
  store double %320, double* %322, align 8
  %323 = load i32, i32* %15, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %313
  %326 = load double, double* %13, align 8
  %327 = load i32, i32* %11, align 4
  %328 = sitofp i32 %327 to double
  %329 = fdiv double %326, %328
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 2
  store double %329, double* %331, align 8
  br label %341

332:                                              ; preds = %313
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 7
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = sitofp i32 %337 to double
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 2
  store double %338, double* %340, align 8
  br label %341

341:                                              ; preds = %332, %325
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %342

342:                                              ; preds = %364, %341
  %343 = load i32, i32* %27, align 4
  %344 = load i32, i32* %18, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %367

346:                                              ; preds = %342
  %347 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %348 = load i32, i32* %27, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %347, i64 %349
  %351 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %355

354:                                              ; preds = %346
  br label %367

355:                                              ; preds = %346
  %356 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %357 = load i32, i32* %27, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %356, i64 %358
  %360 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %28, align 4
  %363 = add nsw i32 %362, %361
  store i32 %363, i32* %28, align 4
  br label %364

364:                                              ; preds = %355
  %365 = load i32, i32* %27, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %27, align 4
  br label %342

367:                                              ; preds = %354, %342
  %368 = load i32, i32* %27, align 4
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %378

370:                                              ; preds = %367
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 1
  %373 = load double, double* %372, align 8
  %374 = fsub double 1.000000e+00, %373
  %375 = fmul double -1.000000e+00, %374
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 3
  store double %375, double* %377, align 8
  br label %453

378:                                              ; preds = %367
  %379 = load i32, i32* %18, align 4
  %380 = load i32, i32* %19, align 4
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %394

382:                                              ; preds = %378
  %383 = load i32, i32* %12, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %394

385:                                              ; preds = %382
  %386 = load i32, i32* %27, align 4
  %387 = load i32, i32* %18, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %394

389:                                              ; preds = %385
  %390 = load i32, i32* %18, align 4
  %391 = sitofp i32 %390 to double
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 3
  store double %391, double* %393, align 8
  br label %452

394:                                              ; preds = %385, %382, %378
  %395 = load i32, i32* %11, align 4
  %396 = load i32, i32* %28, align 4
  %397 = sub nsw i32 %395, %396
  store i32 %397, i32* %29, align 4
  %398 = load i32, i32* %29, align 4
  %399 = load i32, i32* %27, align 4
  %400 = add nsw i32 %398, %399
  store i32 %400, i32* %30, align 4
  %401 = load i32, i32* %7, align 4
  %402 = load i32, i32* %10, align 4
  %403 = sub nsw i32 %401, %402
  %404 = sitofp i32 %403 to double
  store double %404, double* %31, align 8
  %405 = load double, double* %8, align 8
  %406 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 1
  %408 = load double, double* %407, align 8
  %409 = fsub double 1.000000e+00, %408
  %410 = fmul double %405, %409
  store double %410, double* %32, align 8
  %411 = load double, double* %32, align 8
  %412 = fcmp ogt double %411, 0.000000e+00
  br i1 %412, label %413, label %430

413:                                              ; preds = %394
  %414 = load double, double* %31, align 8
  %415 = load i32, i32* %30, align 4
  %416 = sitofp i32 %415 to double
  %417 = fmul double %414, %416
  %418 = load double, double* %31, align 8
  %419 = load i32, i32* %29, align 4
  %420 = sitofp i32 %419 to double
  %421 = fsub double %418, %420
  %422 = load i32, i32* %29, align 4
  %423 = sitofp i32 %422 to double
  %424 = load double, double* %31, align 8
  %425 = fmul double %423, %424
  %426 = load double, double* %32, align 8
  %427 = fdiv double %425, %426
  %428 = fadd double %421, %427
  %429 = fdiv double %417, %428
  store double %429, double* %33, align 8
  br label %431

430:                                              ; preds = %394
  store double 0.000000e+00, double* %33, align 8
  br label %431

431:                                              ; preds = %430, %413
  %432 = load double, double* %33, align 8
  %433 = load i32, i32* %30, align 4
  %434 = sitofp i32 %433 to double
  %435 = fcmp olt double %432, %434
  br i1 %435, label %436, label %439

436:                                              ; preds = %431
  %437 = load i32, i32* %30, align 4
  %438 = sitofp i32 %437 to double
  store double %438, double* %33, align 8
  br label %439

439:                                              ; preds = %436, %431
  %440 = load double, double* %33, align 8
  %441 = load double, double* %32, align 8
  %442 = fcmp ogt double %440, %441
  br i1 %442, label %443, label %445

443:                                              ; preds = %439
  %444 = load double, double* %32, align 8
  store double %444, double* %33, align 8
  br label %445

445:                                              ; preds = %443, %439
  %446 = load double, double* %33, align 8
  %447 = fadd double %446, 5.000000e-01
  %448 = call i32 @floor(double %447)
  %449 = sitofp i32 %448 to double
  %450 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %450, i32 0, i32 3
  store double %449, double* %451, align 8
  br label %452

452:                                              ; preds = %445, %389
  br label %453

453:                                              ; preds = %452, %370
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 3
  %456 = load double, double* %455, align 8
  %457 = load double, double* %8, align 8
  %458 = fmul double 1.000000e-01, %457
  %459 = fcmp ogt double %456, %458
  br i1 %459, label %460, label %469

460:                                              ; preds = %453
  %461 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 3
  %463 = load double, double* %462, align 8
  %464 = load double, double* %8, align 8
  %465 = fdiv double %463, %464
  %466 = fneg double %465
  %467 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %467, i32 0, i32 3
  store double %466, double* %468, align 8
  br label %469

469:                                              ; preds = %460, %453
  %470 = load i32, i32* %18, align 4
  %471 = load i32, i32* %19, align 4
  %472 = icmp slt i32 %470, %471
  br i1 %472, label %473, label %487

473:                                              ; preds = %469
  %474 = load i32, i32* %12, align 4
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %487

476:                                              ; preds = %473
  %477 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %477, i32 0, i32 3
  %479 = load double, double* %478, align 8
  %480 = fcmp ogt double %479, 0.000000e+00
  br i1 %480, label %481, label %487

481:                                              ; preds = %476
  %482 = load i32, i32* %18, align 4
  %483 = load i32, i32* %20, align 4
  %484 = icmp sle i32 %482, %483
  br i1 %484, label %485, label %487

485:                                              ; preds = %481
  %486 = load i32, i32* %18, align 4
  store i32 %486, i32* %20, align 4
  br label %534

487:                                              ; preds = %481, %476, %473, %469
  %488 = load i32, i32* %20, align 4
  %489 = load i32, i32* %18, align 4
  %490 = icmp sgt i32 %488, %489
  br i1 %490, label %491, label %493

491:                                              ; preds = %487
  %492 = load i32, i32* %18, align 4
  store i32 %492, i32* %20, align 4
  br label %493

493:                                              ; preds = %491, %487
  %494 = load i32, i32* %20, align 4
  %495 = icmp sgt i32 %494, 0
  br i1 %495, label %496, label %533

496:                                              ; preds = %493
  %497 = load i32, i32* %20, align 4
  %498 = sext i32 %497 to i64
  %499 = mul i64 %498, 4
  %500 = trunc i64 %499 to i32
  %501 = call i64 @palloc(i32 %500)
  %502 = inttoptr i64 %501 to i32*
  store i32* %502, i32** %34, align 8
  store i32 0, i32* %9, align 4
  br label %503

503:                                              ; preds = %518, %496
  %504 = load i32, i32* %9, align 4
  %505 = load i32, i32* %20, align 4
  %506 = icmp slt i32 %504, %505
  br i1 %506, label %507, label %521

507:                                              ; preds = %503
  %508 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %509 = load i32, i32* %9, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %508, i64 %510
  %512 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = load i32*, i32** %34, align 8
  %515 = load i32, i32* %9, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %514, i64 %516
  store i32 %513, i32* %517, align 4
  br label %518

518:                                              ; preds = %507
  %519 = load i32, i32* %9, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %9, align 4
  br label %503

521:                                              ; preds = %503
  %522 = load i32*, i32** %34, align 8
  %523 = load i32, i32* %20, align 4
  %524 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %525 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i32 0, i32 3
  %526 = load double, double* %525, align 8
  %527 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 1
  %529 = load double, double* %528, align 8
  %530 = load i32, i32* %7, align 4
  %531 = load double, double* %8, align 8
  %532 = call i32 @analyze_mcv_list(i32* %522, i32 %523, double %526, double %529, i32 %530, double %531)
  store i32 %532, i32* %20, align 4
  br label %533

533:                                              ; preds = %521, %493
  br label %534

534:                                              ; preds = %533, %485
  %535 = load i32, i32* %20, align 4
  %536 = icmp sgt i32 %535, 0
  br i1 %536, label %537, label %640

537:                                              ; preds = %534
  %538 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %539 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %538, i32 0, i32 13
  %540 = load i32, i32* %539, align 8
  %541 = call i32 @MemoryContextSwitchTo(i32 %540)
  store i32 %541, i32* %35, align 4
  %542 = load i32, i32* %20, align 4
  %543 = sext i32 %542 to i64
  %544 = mul i64 %543, 4
  %545 = trunc i64 %544 to i32
  %546 = call i64 @palloc(i32 %545)
  %547 = inttoptr i64 %546 to i32*
  store i32* %547, i32** %36, align 8
  %548 = load i32, i32* %20, align 4
  %549 = sext i32 %548 to i64
  %550 = mul i64 %549, 8
  %551 = trunc i64 %550 to i32
  %552 = call i64 @palloc(i32 %551)
  %553 = inttoptr i64 %552 to double*
  store double* %553, double** %37, align 8
  store i32 0, i32* %9, align 4
  br label %554

554:                                              ; preds = %595, %537
  %555 = load i32, i32* %9, align 4
  %556 = load i32, i32* %20, align 4
  %557 = icmp slt i32 %555, %556
  br i1 %557, label %558, label %598

558:                                              ; preds = %554
  %559 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %560 = load i32, i32* %9, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %559, i64 %561
  %563 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 4
  %565 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 7
  %567 = load %struct.TYPE_8__*, %struct.TYPE_8__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %571 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %570, i32 0, i32 7
  %572 = load %struct.TYPE_8__*, %struct.TYPE_8__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 4
  %575 = sitofp i32 %574 to double
  %576 = call i32 @datumCopy(i32 %564, i32 %569, double %575)
  %577 = load i32*, i32** %36, align 8
  %578 = load i32, i32* %9, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i32, i32* %577, i64 %579
  store i32 %576, i32* %580, align 4
  %581 = load %struct.TrackItem*, %struct.TrackItem** %17, align 8
  %582 = load i32, i32* %9, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %581, i64 %583
  %585 = getelementptr inbounds %struct.TrackItem, %struct.TrackItem* %584, i32 0, i32 1
  %586 = load i32, i32* %585, align 4
  %587 = sitofp i32 %586 to double
  %588 = load i32, i32* %7, align 4
  %589 = sitofp i32 %588 to double
  %590 = fdiv double %587, %589
  %591 = load double*, double** %37, align 8
  %592 = load i32, i32* %9, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds double, double* %591, i64 %593
  store double %590, double* %594, align 8
  br label %595

595:                                              ; preds = %558
  %596 = load i32, i32* %9, align 4
  %597 = add nsw i32 %596, 1
  store i32 %597, i32* %9, align 4
  br label %554

598:                                              ; preds = %554
  %599 = load i32, i32* %35, align 4
  %600 = call i32 @MemoryContextSwitchTo(i32 %599)
  %601 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %602 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %603 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %602, i32 0, i32 12
  %604 = load i32*, i32** %603, align 8
  %605 = getelementptr inbounds i32, i32* %604, i64 0
  store i32 %601, i32* %605, align 4
  %606 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %607 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %610 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %609, i32 0, i32 11
  %611 = load i32*, i32** %610, align 8
  %612 = getelementptr inbounds i32, i32* %611, i64 0
  store i32 %608, i32* %612, align 4
  %613 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %614 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %613, i32 0, i32 9
  %615 = load i32, i32* %614, align 8
  %616 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %617 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %616, i32 0, i32 10
  %618 = load i32*, i32** %617, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 0
  store i32 %615, i32* %619, align 4
  %620 = load double*, double** %37, align 8
  %621 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %622 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %621, i32 0, i32 4
  %623 = load double**, double*** %622, align 8
  %624 = getelementptr inbounds double*, double** %623, i64 0
  store double* %620, double** %624, align 8
  %625 = load i32, i32* %20, align 4
  %626 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %627 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %626, i32 0, i32 5
  %628 = load i32*, i32** %627, align 8
  %629 = getelementptr inbounds i32, i32* %628, i64 0
  store i32 %625, i32* %629, align 4
  %630 = load i32*, i32** %36, align 8
  %631 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %632 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %631, i32 0, i32 8
  %633 = load i32**, i32*** %632, align 8
  %634 = getelementptr inbounds i32*, i32** %633, i64 0
  store i32* %630, i32** %634, align 8
  %635 = load i32, i32* %20, align 4
  %636 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %637 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %636, i32 0, i32 6
  %638 = load i32*, i32** %637, align 8
  %639 = getelementptr inbounds i32, i32* %638, i64 0
  store i32 %635, i32* %639, align 4
  br label %640

640:                                              ; preds = %598, %534
  br label %667

641:                                              ; preds = %310
  %642 = load i32, i32* %10, align 4
  %643 = icmp sgt i32 %642, 0
  br i1 %643, label %644, label %666

644:                                              ; preds = %641
  %645 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %646 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %645, i32 0, i32 0
  store i32 1, i32* %646, align 8
  %647 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %648 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %647, i32 0, i32 1
  store double 1.000000e+00, double* %648, align 8
  %649 = load i32, i32* %15, align 4
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %654

651:                                              ; preds = %644
  %652 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %653 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %652, i32 0, i32 2
  store double 0.000000e+00, double* %653, align 8
  br label %663

654:                                              ; preds = %644
  %655 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %656 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %655, i32 0, i32 7
  %657 = load %struct.TYPE_8__*, %struct.TYPE_8__** %656, align 8
  %658 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 4
  %660 = sitofp i32 %659 to double
  %661 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %662 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %661, i32 0, i32 2
  store double %660, double* %662, align 8
  br label %663

663:                                              ; preds = %654, %651
  %664 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %665 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %664, i32 0, i32 3
  store double 0.000000e+00, double* %665, align 8
  br label %666

666:                                              ; preds = %663, %641
  br label %667

667:                                              ; preds = %666, %640
  ret void
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @fmgr_info(i32, i32*) #1

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i64 @VARSIZE_ANY(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @toast_raw_datum_size(i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @PG_DETOAST_DATUM(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @DatumGetCString(i32) #1

declare dso_local i64 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

declare dso_local i32 @swapDatum(i32, i32) #1

declare dso_local i32 @swapInt(i32, i32) #1

declare dso_local i32 @floor(double) #1

declare dso_local i32 @analyze_mcv_list(i32*, i32, double, double, i32, double) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @datumCopy(i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
