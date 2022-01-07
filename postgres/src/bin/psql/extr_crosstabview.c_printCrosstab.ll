; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_printCrosstab.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_printCrosstab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i32, i32 }
%struct.TYPE_15__ = type { i64, i8* }
%struct.TYPE_13__ = type { i8**, i32 }

@pset = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pivotFieldCompare = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"\\crosstabview: query result contains multiple data values for row \22%s\22, column \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_15__*, i32, i32, %struct.TYPE_15__*, i32, i32)* @printCrosstab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printCrosstab(i32* %0, i32 %1, %struct.TYPE_15__* %2, i32 %3, i32 %4, %struct.TYPE_15__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__, align 8
  %18 = alloca %struct.TYPE_13__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_15__*, align 8
  %29 = alloca %struct.TYPE_15__*, align 8
  %30 = alloca %struct.TYPE_15__, align 8
  %31 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %32 = bitcast %struct.TYPE_14__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @pset, i32 0, i32 2) to i8*), i64 16, i1 false)
  store i32 0, i32* %23, align 4
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @printTableInit(%struct.TYPE_13__* %18, i32* %33, i32 %35, i32 %37, i32 %38)
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i8* @PQfname(i32* %40, i32 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @PQftype(i32* %43, i32 %44)
  %46 = call signext i8 @column_type_alignment(i32 %45)
  %47 = call i32 @printTableAddHeader(%struct.TYPE_13__* %18, i8* %42, i32 0, i8 signext %46)
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = call i64 @pg_malloc(i32 %51)
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %22, align 8
  store i32 0, i32* %19, align 4
  br label %54

54:                                               ; preds = %68, %8
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i32, i32* %19, align 4
  %60 = load i32*, i32** %22, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  store i32 %59, i32* %67, align 4
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %19, align 4
  br label %54

71:                                               ; preds = %54
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @PQftype(i32* %72, i32 %73)
  %75 = call signext i8 @column_type_alignment(i32 %74)
  store i8 %75, i8* %21, align 1
  store i32 0, i32* %19, align 4
  br label %76

76:                                               ; preds = %118, %71
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %76
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %82 = load i32*, i32** %22, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %80
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %94 = load i32*, i32** %22, align 8
  %95 = load i32, i32* %19, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  br label %113

103:                                              ; preds = %80
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  br label %111

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %107
  %112 = phi i8* [ %109, %107 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %110 ]
  br label %113

113:                                              ; preds = %111, %92
  %114 = phi i8* [ %102, %92 ], [ %112, %111 ]
  store i8* %114, i8** %24, align 8
  %115 = load i8*, i8** %24, align 8
  %116 = load i8, i8* %21, align 1
  %117 = call i32 @printTableAddHeader(%struct.TYPE_13__* %18, i8* %115, i32 0, i8 signext %116)
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %19, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %19, align 4
  br label %76

121:                                              ; preds = %76
  %122 = load i32*, i32** %22, align 8
  %123 = call i32 @pg_free(i32* %122)
  store i32 0, i32* %19, align 4
  br label %124

124:                                              ; preds = %170, %121
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %173

128:                                              ; preds = %124
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %130 = load i32, i32* %19, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %25, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %137 = load i32, i32* %19, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %128
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  br label %160

150:                                              ; preds = %128
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  br label %158

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %154
  %159 = phi i8* [ %156, %154 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %157 ]
  br label %160

160:                                              ; preds = %158, %143
  %161 = phi i8* [ %149, %143 ], [ %159, %158 ]
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %25, align 4
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  %167 = mul nsw i32 %164, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %163, i64 %168
  store i8* %161, i8** %169, align 8
  br label %170

170:                                              ; preds = %160
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %19, align 4
  br label %124

173:                                              ; preds = %124
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  %177 = mul nsw i32 %174, %176
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  store i32 %177, i32* %178, align 8
  store i32 0, i32* %20, align 4
  br label %179

179:                                              ; preds = %330, %173
  %180 = load i32, i32* %20, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 @PQntuples(i32* %181)
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %333

184:                                              ; preds = %179
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @PQgetisnull(i32* %185, i32 %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %184
  %191 = load i32*, i32** %9, align 8
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %15, align 4
  %194 = call i8* @PQgetvalue(i32* %191, i32 %192, i32 %193)
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  store i8* %194, i8** %195, align 8
  br label %198

196:                                              ; preds = %184
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  store i8* null, i8** %197, align 8
  br label %198

198:                                              ; preds = %196, %190
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* @pivotFieldCompare, align 4
  %202 = call i64 @bsearch(%struct.TYPE_15__* %30, %struct.TYPE_15__* %199, i32 %200, i32 16, i32 %201)
  %203 = inttoptr i64 %202 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %203, %struct.TYPE_15__** %28, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %205 = icmp ne %struct.TYPE_15__* %204, null
  %206 = zext i1 %205 to i32
  %207 = call i32 @Assert(i32 %206)
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %26, align 4
  %212 = load i32*, i32** %9, align 8
  %213 = load i32, i32* %20, align 4
  %214 = load i32, i32* %12, align 4
  %215 = call i32 @PQgetisnull(i32* %212, i32 %213, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %198
  %218 = load i32*, i32** %9, align 8
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %12, align 4
  %221 = call i8* @PQgetvalue(i32* %218, i32 %219, i32 %220)
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  store i8* %221, i8** %222, align 8
  br label %225

223:                                              ; preds = %198
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  store i8* null, i8** %224, align 8
  br label %225

225:                                              ; preds = %223, %217
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @pivotFieldCompare, align 4
  %229 = call i64 @bsearch(%struct.TYPE_15__* %30, %struct.TYPE_15__* %226, i32 %227, i32 16, i32 %228)
  %230 = inttoptr i64 %229 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %230, %struct.TYPE_15__** %29, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %232 = icmp ne %struct.TYPE_15__* %231, null
  %233 = zext i1 %232 to i32
  %234 = call i32 @Assert(i32 %233)
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %27, align 4
  %239 = load i32, i32* %27, align 4
  %240 = icmp sge i32 %239, 0
  br i1 %240, label %241, label %329

241:                                              ; preds = %225
  %242 = load i32, i32* %26, align 4
  %243 = icmp sge i32 %242, 0
  br i1 %243, label %244, label %329

244:                                              ; preds = %241
  %245 = load i32, i32* %27, align 4
  %246 = add nsw i32 1, %245
  %247 = load i32, i32* %26, align 4
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  %250 = mul nsw i32 %247, %249
  %251 = add nsw i32 %246, %250
  store i32 %251, i32* %31, align 4
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %253 = load i8**, i8*** %252, align 8
  %254 = load i32, i32* %31, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %253, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %301

259:                                              ; preds = %244
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 1
  %267 = load i8*, i8** %266, align 8
  br label %278

268:                                              ; preds = %259
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  br label %276

275:                                              ; preds = %268
  br label %276

276:                                              ; preds = %275, %272
  %277 = phi i8* [ %274, %272 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %275 ]
  br label %278

278:                                              ; preds = %276, %264
  %279 = phi i8* [ %267, %264 ], [ %277, %276 ]
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = load i8*, i8** %281, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %278
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 1
  %287 = load i8*, i8** %286, align 8
  br label %298

288:                                              ; preds = %278
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  br label %296

295:                                              ; preds = %288
  br label %296

296:                                              ; preds = %295, %292
  %297 = phi i8* [ %294, %292 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %295 ]
  br label %298

298:                                              ; preds = %296, %284
  %299 = phi i8* [ %287, %284 ], [ %297, %296 ]
  %300 = call i32 @pg_log_error(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i8* %279, i8* %299)
  br label %361

301:                                              ; preds = %244
  %302 = load i32*, i32** %9, align 8
  %303 = load i32, i32* %20, align 4
  %304 = load i32, i32* %16, align 4
  %305 = call i32 @PQgetisnull(i32* %302, i32 %303, i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %301
  %308 = load i32*, i32** %9, align 8
  %309 = load i32, i32* %20, align 4
  %310 = load i32, i32* %16, align 4
  %311 = call i8* @PQgetvalue(i32* %308, i32 %309, i32 %310)
  br label %322

312:                                              ; preds = %301
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %319

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  br label %320

319:                                              ; preds = %312
  br label %320

320:                                              ; preds = %319, %316
  %321 = phi i8* [ %318, %316 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %319 ]
  br label %322

322:                                              ; preds = %320, %307
  %323 = phi i8* [ %311, %307 ], [ %321, %320 ]
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %325 = load i8**, i8*** %324, align 8
  %326 = load i32, i32* %31, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8*, i8** %325, i64 %327
  store i8* %323, i8** %328, align 8
  br label %329

329:                                              ; preds = %322, %241, %225
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %20, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %20, align 4
  br label %179

333:                                              ; preds = %179
  store i32 0, i32* %19, align 4
  br label %334

334:                                              ; preds = %354, %333
  %335 = load i32, i32* %19, align 4
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = icmp slt i32 %335, %337
  br i1 %338, label %339, label %357

339:                                              ; preds = %334
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %341 = load i8**, i8*** %340, align 8
  %342 = load i32, i32* %19, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8*, i8** %341, i64 %343
  %345 = load i8*, i8** %344, align 8
  %346 = icmp eq i8* %345, null
  br i1 %346, label %347, label %353

347:                                              ; preds = %339
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %349 = load i8**, i8*** %348, align 8
  %350 = load i32, i32* %19, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8*, i8** %349, i64 %351
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %352, align 8
  br label %353

353:                                              ; preds = %347, %339
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %19, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %19, align 4
  br label %334

357:                                              ; preds = %334
  %358 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @pset, i32 0, i32 1), align 4
  %359 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @pset, i32 0, i32 0), align 8
  %360 = call i32 @printTable(%struct.TYPE_13__* %18, i32 %358, i32 0, i32 %359)
  store i32 1, i32* %23, align 4
  br label %361

361:                                              ; preds = %357, %298
  %362 = call i32 @printTableCleanup(%struct.TYPE_13__* %18)
  %363 = load i32, i32* %23, align 4
  ret i32 %363
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printTableInit(%struct.TYPE_13__*, i32*, i32, i32, i32) #2

declare dso_local i32 @printTableAddHeader(%struct.TYPE_13__*, i8*, i32, i8 signext) #2

declare dso_local i8* @PQfname(i32*, i32) #2

declare dso_local signext i8 @column_type_alignment(i32) #2

declare dso_local i32 @PQftype(i32*, i32) #2

declare dso_local i64 @pg_malloc(i32) #2

declare dso_local i32 @pg_free(i32*) #2

declare dso_local i32 @PQntuples(i32*) #2

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #2

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #2

declare dso_local i64 @bsearch(%struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @pg_log_error(i8*, i8*, i8*) #2

declare dso_local i32 @printTable(%struct.TYPE_13__*, i32, i32, i32) #2

declare dso_local i32 @printTableCleanup(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
