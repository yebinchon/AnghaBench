; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_gist_double_sorting_split.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_gist_double_sorting_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_38__ = type { i64*, i64*, i8*, i8*, i64, i64 }
%struct.TYPE_39__ = type { i32, i32, i64, %struct.TYPE_35__*, %struct.TYPE_35__*, i64, %struct.TYPE_34__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__, %struct.TYPE_35__ }
%struct.TYPE_40__ = type { i64, i64 }

@FirstOffsetNumber = common dso_local global i64 0, align 8
@interval_cmp_lower = common dso_local global i32 0, align 4
@interval_cmp_upper = common dso_local global i32 0, align 4
@common_entry_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_34__*, %struct.TYPE_37__*, %struct.TYPE_38__*)* @range_gist_double_sorting_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_gist_double_sorting_split(%struct.TYPE_34__* %0, %struct.TYPE_37__* %1, %struct.TYPE_38__* %2) #0 {
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_39__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_36__*, align 8
  %15 = alloca %struct.TYPE_36__*, align 8
  %16 = alloca %struct.TYPE_40__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_35__*, align 8
  %21 = alloca %struct.TYPE_35__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_35__, align 4
  %25 = alloca %struct.TYPE_35__, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %4, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %5, align 8
  store %struct.TYPE_38__* %2, %struct.TYPE_38__** %6, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %28 = call i32 @memset(%struct.TYPE_39__* %7, i32 0, i32 48)
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 6
  store %struct.TYPE_34__* %29, %struct.TYPE_34__** %30, align 8
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @OidIsValid(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 5
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, 1
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @FirstOffsetNumber, align 8
  %43 = sub i64 %41, %42
  %44 = add i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  store i32 %45, i32* %17, align 4
  %47 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i64 @palloc(i32 %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %53, %struct.TYPE_36__** %14, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = call i64 @palloc(i32 %57)
  %59 = inttoptr i64 %58 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %59, %struct.TYPE_36__** %15, align 8
  %60 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %94, %3
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %61
  %66 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @DatumGetRangeTypeP(i32 %72)
  store i32* %73, i32** %22, align 8
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %75 = load i32*, i32** %22, align 8
  %76 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @FirstOffsetNumber, align 8
  %79 = sub i64 %77, %78
  %80 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @FirstOffsetNumber, align 8
  %85 = sub i64 %83, %84
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 1
  %88 = call i32 @range_deserialize(%struct.TYPE_34__* %74, i32* %75, %struct.TYPE_35__* %81, %struct.TYPE_35__* %87, i32* %23)
  %89 = load i32, i32* %23, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @Assert(i32 %92)
  br label %94

94:                                               ; preds = %65
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @OffsetNumberNext(i64 %95)
  store i64 %96, i64* %8, align 8
  br label %61

97:                                               ; preds = %61
  %98 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %99 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memcpy(%struct.TYPE_36__* %98, %struct.TYPE_36__* %99, i32 %103)
  %105 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* @interval_cmp_lower, align 4
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %109 = call i32 @qsort_arg(%struct.TYPE_36__* %105, i32 %106, i32 8, i32 %107, %struct.TYPE_34__* %108)
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @interval_cmp_upper, align 4
  %113 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %114 = call i32 @qsort_arg(%struct.TYPE_36__* %110, i32 %111, i32 8, i32 %112, %struct.TYPE_34__* %113)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %115 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %118, i32 0, i32 0
  store %struct.TYPE_35__* %119, %struct.TYPE_35__** %20, align 8
  %120 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %123, i32 0, i32 0
  store %struct.TYPE_35__* %124, %struct.TYPE_35__** %21, align 8
  br label %125

125:                                              ; preds = %97, %191
  br label %126

126:                                              ; preds = %158, %125
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %132 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %133 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 0
  %138 = call i64 @range_cmp_bounds(%struct.TYPE_34__* %131, %struct.TYPE_35__* %132, %struct.TYPE_35__* %137)
  %139 = icmp eq i64 %138, 0
  br label %140

140:                                              ; preds = %130, %126
  %141 = phi i1 [ false, %126 ], [ %139, %130 ]
  br i1 %141, label %142, label %161

142:                                              ; preds = %140
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %144 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %150 = call i64 @range_cmp_bounds(%struct.TYPE_34__* %143, %struct.TYPE_35__* %148, %struct.TYPE_35__* %149)
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %142
  %153 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %156, i32 0, i32 1
  store %struct.TYPE_35__* %157, %struct.TYPE_35__** %21, align 8
  br label %158

158:                                              ; preds = %152, %142
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %18, align 4
  br label %126

161:                                              ; preds = %140
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp sge i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %197

166:                                              ; preds = %161
  %167 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 0
  store %struct.TYPE_35__* %171, %struct.TYPE_35__** %20, align 8
  br label %172

172:                                              ; preds = %188, %166
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %179 = load i32, i32* %19, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %184 = call i64 @range_cmp_bounds(%struct.TYPE_34__* %177, %struct.TYPE_35__* %182, %struct.TYPE_35__* %183)
  %185 = icmp sle i64 %184, 0
  br label %186

186:                                              ; preds = %176, %172
  %187 = phi i1 [ false, %172 ], [ %185, %176 ]
  br i1 %187, label %188, label %191

188:                                              ; preds = %186
  %189 = load i32, i32* %19, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %19, align 4
  br label %172

191:                                              ; preds = %186
  %192 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %193 = load i32, i32* %18, align 4
  %194 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %195 = load i32, i32* %19, align 4
  %196 = call i32 @range_gist_consider_split(%struct.TYPE_39__* %7, %struct.TYPE_35__* %192, i32 %193, %struct.TYPE_35__* %194, i32 %195)
  br label %125

197:                                              ; preds = %165
  %198 = load i32, i32* %17, align 4
  %199 = sub nsw i32 %198, 1
  store i32 %199, i32* %18, align 4
  %200 = load i32, i32* %17, align 4
  %201 = sub nsw i32 %200, 1
  store i32 %201, i32* %19, align 4
  %202 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %205, i32 0, i32 1
  store %struct.TYPE_35__* %206, %struct.TYPE_35__** %20, align 8
  %207 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 1
  store %struct.TYPE_35__* %211, %struct.TYPE_35__** %21, align 8
  br label %212

212:                                              ; preds = %197, %275
  br label %213

213:                                              ; preds = %244, %212
  %214 = load i32, i32* %19, align 4
  %215 = icmp sge i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %213
  %217 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %218 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %219 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %220 = load i32, i32* %19, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %222, i32 0, i32 1
  %224 = call i64 @range_cmp_bounds(%struct.TYPE_34__* %217, %struct.TYPE_35__* %218, %struct.TYPE_35__* %223)
  %225 = icmp eq i64 %224, 0
  br label %226

226:                                              ; preds = %216, %213
  %227 = phi i1 [ false, %213 ], [ %225, %216 ]
  br i1 %227, label %228, label %247

228:                                              ; preds = %226
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %230 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %236 = call i64 @range_cmp_bounds(%struct.TYPE_34__* %229, %struct.TYPE_35__* %234, %struct.TYPE_35__* %235)
  %237 = icmp slt i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %228
  %239 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %240 = load i32, i32* %19, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %242, i32 0, i32 0
  store %struct.TYPE_35__* %243, %struct.TYPE_35__** %20, align 8
  br label %244

244:                                              ; preds = %238, %228
  %245 = load i32, i32* %19, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %19, align 4
  br label %213

247:                                              ; preds = %226
  %248 = load i32, i32* %19, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  br label %283

251:                                              ; preds = %247
  %252 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %253 = load i32, i32* %19, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %255, i32 0, i32 1
  store %struct.TYPE_35__* %256, %struct.TYPE_35__** %21, align 8
  br label %257

257:                                              ; preds = %272, %251
  %258 = load i32, i32* %18, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %257
  %261 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %262 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %263 = load i32, i32* %18, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %268 = call i64 @range_cmp_bounds(%struct.TYPE_34__* %261, %struct.TYPE_35__* %266, %struct.TYPE_35__* %267)
  %269 = icmp sge i64 %268, 0
  br label %270

270:                                              ; preds = %260, %257
  %271 = phi i1 [ false, %257 ], [ %269, %260 ]
  br i1 %271, label %272, label %275

272:                                              ; preds = %270
  %273 = load i32, i32* %18, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %18, align 4
  br label %257

275:                                              ; preds = %270
  %276 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %277 = load i32, i32* %18, align 4
  %278 = add nsw i32 %277, 1
  %279 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %280 = load i32, i32* %19, align 4
  %281 = add nsw i32 %280, 1
  %282 = call i32 @range_gist_consider_split(%struct.TYPE_39__* %7, %struct.TYPE_35__* %276, i32 %278, %struct.TYPE_35__* %279, i32 %281)
  br label %212

283:                                              ; preds = %250
  %284 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %289 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %290 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %291 = call i32 @range_gist_fallback_split(%struct.TYPE_34__* %288, %struct.TYPE_37__* %289, %struct.TYPE_38__* %290)
  br label %466

292:                                              ; preds = %283
  %293 = load i32, i32* %17, align 4
  %294 = sext i32 %293 to i64
  %295 = mul i64 %294, 8
  %296 = trunc i64 %295 to i32
  %297 = call i64 @palloc(i32 %296)
  %298 = inttoptr i64 %297 to i64*
  %299 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %299, i32 0, i32 0
  store i64* %298, i64** %300, align 8
  %301 = load i32, i32* %17, align 4
  %302 = sext i32 %301 to i64
  %303 = mul i64 %302, 8
  %304 = trunc i64 %303 to i32
  %305 = call i64 @palloc(i32 %304)
  %306 = inttoptr i64 %305 to i64*
  %307 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %307, i32 0, i32 1
  store i64* %306, i64** %308, align 8
  %309 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %309, i32 0, i32 5
  store i64 0, i64* %310, align 8
  %311 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %311, i32 0, i32 4
  store i64 0, i64* %312, align 8
  store i32 0, i32* %13, align 4
  %313 = load i32, i32* %17, align 4
  %314 = sext i32 %313 to i64
  %315 = mul i64 %314, 16
  %316 = trunc i64 %315 to i32
  %317 = call i64 @palloc(i32 %316)
  %318 = inttoptr i64 %317 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %318, %struct.TYPE_40__** %16, align 8
  %319 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %319, i64* %8, align 8
  br label %320

320:                                              ; preds = %408, %292
  %321 = load i64, i64* %8, align 8
  %322 = load i64, i64* %9, align 8
  %323 = icmp ule i64 %321, %322
  br i1 %323, label %324, label %411

324:                                              ; preds = %320
  %325 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %326, align 8
  %328 = load i64, i64* %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %327, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = call i32* @DatumGetRangeTypeP(i32 %331)
  store i32* %332, i32** %10, align 8
  %333 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %334 = load i32*, i32** %10, align 8
  %335 = call i32 @range_deserialize(%struct.TYPE_34__* %333, i32* %334, %struct.TYPE_35__* %24, %struct.TYPE_35__* %25, i32* %26)
  %336 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 4
  %338 = load %struct.TYPE_35__*, %struct.TYPE_35__** %337, align 8
  %339 = call i64 @range_cmp_bounds(%struct.TYPE_34__* %336, %struct.TYPE_35__* %25, %struct.TYPE_35__* %338)
  %340 = icmp sle i64 %339, 0
  br i1 %340, label %341, label %395

341:                                              ; preds = %324
  %342 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 3
  %344 = load %struct.TYPE_35__*, %struct.TYPE_35__** %343, align 8
  %345 = call i64 @range_cmp_bounds(%struct.TYPE_34__* %342, %struct.TYPE_35__* %24, %struct.TYPE_35__* %344)
  %346 = icmp sge i64 %345, 0
  br i1 %346, label %347, label %389

347:                                              ; preds = %341
  %348 = load i64, i64* %8, align 8
  %349 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %352, i32 0, i32 0
  store i64 %348, i64* %353, align 8
  %354 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 5
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %380

357:                                              ; preds = %347
  %358 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %24, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 3
  %362 = load %struct.TYPE_35__*, %struct.TYPE_35__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = call i64 @call_subtype_diff(%struct.TYPE_34__* %358, i32 %360, i32 %364)
  %366 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 4
  %368 = load %struct.TYPE_35__*, %struct.TYPE_35__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %25, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = call i64 @call_subtype_diff(%struct.TYPE_34__* %366, i32 %370, i32 %372)
  %374 = sub nsw i64 %365, %373
  %375 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %376 = load i32, i32* %13, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %378, i32 0, i32 1
  store i64 %374, i64* %379, align 8
  br label %386

380:                                              ; preds = %347
  %381 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %382 = load i32, i32* %13, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %384, i32 0, i32 1
  store i64 0, i64* %385, align 8
  br label %386

386:                                              ; preds = %380, %357
  %387 = load i32, i32* %13, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %13, align 4
  br label %394

389:                                              ; preds = %341
  %390 = load i32*, i32** %10, align 8
  %391 = load i64, i64* %8, align 8
  %392 = trunc i64 %391 to i32
  %393 = call i32 @PLACE_LEFT(i32* %390, i32 %392)
  br label %394

394:                                              ; preds = %389, %386
  br label %407

395:                                              ; preds = %324
  %396 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 3
  %398 = load %struct.TYPE_35__*, %struct.TYPE_35__** %397, align 8
  %399 = call i64 @range_cmp_bounds(%struct.TYPE_34__* %396, %struct.TYPE_35__* %24, %struct.TYPE_35__* %398)
  %400 = icmp sge i64 %399, 0
  %401 = zext i1 %400 to i32
  %402 = call i32 @Assert(i32 %401)
  %403 = load i32*, i32** %10, align 8
  %404 = load i64, i64* %8, align 8
  %405 = trunc i64 %404 to i32
  %406 = call i32 @PLACE_RIGHT(i32* %403, i32 %405)
  br label %407

407:                                              ; preds = %395, %394
  br label %408

408:                                              ; preds = %407
  %409 = load i64, i64* %8, align 8
  %410 = call i64 @OffsetNumberNext(i64 %409)
  store i64 %410, i64* %8, align 8
  br label %320

411:                                              ; preds = %320
  %412 = load i32, i32* %13, align 4
  %413 = icmp sgt i32 %412, 0
  br i1 %413, label %414, label %457

414:                                              ; preds = %411
  %415 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %416 = load i32, i32* %13, align 4
  %417 = load i32, i32* @common_entry_cmp, align 4
  %418 = call i32 @qsort(%struct.TYPE_40__* %415, i32 %416, i32 16, i32 %417)
  store i64 0, i64* %8, align 8
  br label %419

419:                                              ; preds = %453, %414
  %420 = load i64, i64* %8, align 8
  %421 = load i32, i32* %13, align 4
  %422 = sext i32 %421 to i64
  %423 = icmp ult i64 %420, %422
  br i1 %423, label %424, label %456

424:                                              ; preds = %419
  %425 = load %struct.TYPE_40__*, %struct.TYPE_40__** %16, align 8
  %426 = load i64, i64* %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %425, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = trunc i64 %429 to i32
  store i32 %430, i32* %27, align 4
  %431 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %431, i32 0, i32 1
  %433 = load %struct.TYPE_33__*, %struct.TYPE_33__** %432, align 8
  %434 = load i32, i32* %27, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = call i32* @DatumGetRangeTypeP(i32 %438)
  store i32* %439, i32** %10, align 8
  %440 = load i64, i64* %8, align 8
  %441 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 2
  %442 = load i64, i64* %441, align 8
  %443 = icmp ult i64 %440, %442
  br i1 %443, label %444, label %448

444:                                              ; preds = %424
  %445 = load i32*, i32** %10, align 8
  %446 = load i32, i32* %27, align 4
  %447 = call i32 @PLACE_LEFT(i32* %445, i32 %446)
  br label %452

448:                                              ; preds = %424
  %449 = load i32*, i32** %10, align 8
  %450 = load i32, i32* %27, align 4
  %451 = call i32 @PLACE_RIGHT(i32* %449, i32 %450)
  br label %452

452:                                              ; preds = %448, %444
  br label %453

453:                                              ; preds = %452
  %454 = load i64, i64* %8, align 8
  %455 = add i64 %454, 1
  store i64 %455, i64* %8, align 8
  br label %419

456:                                              ; preds = %419
  br label %457

457:                                              ; preds = %456, %411
  %458 = load i32*, i32** %11, align 8
  %459 = call i8* @PointerGetDatum(i32* %458)
  %460 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %461 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %460, i32 0, i32 3
  store i8* %459, i8** %461, align 8
  %462 = load i32*, i32** %12, align 8
  %463 = call i8* @PointerGetDatum(i32* %462)
  %464 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %464, i32 0, i32 2
  store i8* %463, i8** %465, align 8
  br label %466

466:                                              ; preds = %457, %287
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_39__*, i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @DatumGetRangeTypeP(i32) #1

declare dso_local i32 @range_deserialize(%struct.TYPE_34__*, i32*, %struct.TYPE_35__*, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_36__*, %struct.TYPE_36__*, i32) #1

declare dso_local i32 @qsort_arg(%struct.TYPE_36__*, i32, i32, i32, %struct.TYPE_34__*) #1

declare dso_local i64 @range_cmp_bounds(%struct.TYPE_34__*, %struct.TYPE_35__*, %struct.TYPE_35__*) #1

declare dso_local i32 @range_gist_consider_split(%struct.TYPE_39__*, %struct.TYPE_35__*, i32, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @range_gist_fallback_split(%struct.TYPE_34__*, %struct.TYPE_37__*, %struct.TYPE_38__*) #1

declare dso_local i64 @call_subtype_diff(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @PLACE_LEFT(i32*, i32) #1

declare dso_local i32 @PLACE_RIGHT(i32*, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_40__*, i32, i32, i32) #1

declare dso_local i8* @PointerGetDatum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
