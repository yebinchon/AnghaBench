; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_amutils.c_indexam_property.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_amutils.c_indexam_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 (i64, i32, i32, i8*, i32*, i32*)* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@RELOID = common dso_local global i32 0, align 4
@RELKIND_INDEX = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@INDEXRELID = common dso_local global i32 0, align 4
@INDOPTION_DESC = common dso_local global i32 0, align 4
@INDOPTION_NULLS_FIRST = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i64, i32)* @indexam_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indexam_property(i32 %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @lookup_prop_name(i8* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @OidIsValid(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @OidIsValid(i64 %29)
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load i32, i32* @RELOID, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @ObjectIdGetDatum(i64 %36)
  %38 = call i32 @SearchSysCache1(i32 %35, i32 %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @HeapTupleIsValid(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %28
  %43 = call i32 (...) @PG_RETURN_NULL()
  br label %44

44:                                               ; preds = %42, %28
  %45 = load i32, i32* %17, align 4
  %46 = call i64 @GETSTRUCT(i32 %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %18, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RELKIND_INDEX, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @ReleaseSysCache(i32 %60)
  %62 = call i32 (...) @PG_RETURN_NULL()
  br label %63

63:                                               ; preds = %59, %53, %44
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %9, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @ReleaseSysCache(i32 %70)
  br label %72

72:                                               ; preds = %63, %5
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %72
  %80 = call i32 (...) @PG_RETURN_NULL()
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i64, i64* %9, align 8
  %83 = call %struct.TYPE_5__* @GetIndexAmRoutineByAmId(i64 %82, i32 1)
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %16, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %85 = icmp eq %struct.TYPE_5__* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (...) @PG_RETURN_NULL()
  br label %88

88:                                               ; preds = %86, %81
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 12
  %91 = load i64 (i64, i32, i32, i8*, i32*, i32*)*, i64 (i64, i32, i32, i8*, i32*, i32*)** %90, align 8
  %92 = icmp ne i64 (i64, i32, i32, i8*, i32*, i32*)* %91, null
  br i1 %92, label %93, label %111

93:                                               ; preds = %88
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 12
  %96 = load i64 (i64, i32, i32, i8*, i32*, i32*)*, i64 (i64, i32, i32, i8*, i32*, i32*)** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 %96(i64 %97, i32 %98, i32 %99, i8* %100, i32* %12, i32* %13)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %93
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 (...) @PG_RETURN_NULL()
  br label %108

108:                                              ; preds = %106, %103
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @PG_RETURN_BOOL(i32 %109)
  br label %111

111:                                              ; preds = %108, %93, %88
  %112 = load i32, i32* %11, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %281

114:                                              ; preds = %111
  store i32 1, i32* %21, align 4
  %115 = load i32, i32* @INDEXRELID, align 4
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @ObjectIdGetDatum(i64 %116)
  %118 = call i32 @SearchSysCache1(i32 %115, i32 %117)
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @HeapTupleIsValid(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %114
  %123 = call i32 (...) @PG_RETURN_NULL()
  br label %124

124:                                              ; preds = %122, %114
  %125 = load i32, i32* %19, align 4
  %126 = call i64 @GETSTRUCT(i32 %125)
  %127 = inttoptr i64 %126 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %127, %struct.TYPE_6__** %20, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @Assert(i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %124
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp sle i32 %138, %141
  br label %143

143:                                              ; preds = %137, %124
  %144 = phi i1 [ false, %124 ], [ %142, %137 ]
  %145 = zext i1 %144 to i32
  %146 = call i32 @Assert(i32 %145)
  store i32 1, i32* %13, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %143
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %152, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 0, i32* %21, align 4
  br label %158

158:                                              ; preds = %157, %151, %143
  %159 = load i32, i32* %15, align 4
  switch i32 %159, label %270 [
    i32 145, label %160
    i32 136, label %174
    i32 133, label %189
    i32 132, label %204
    i32 131, label %218
    i32 135, label %228
    i32 130, label %238
    i32 129, label %254
    i32 128, label %262
  ]

160:                                              ; preds = %158
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @INDOPTION_DESC, align 4
  %170 = call i32 @test_indoption(i32 %164, i32 %165, i32 %168, i32 %169, i32 0, i32* %12)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  store i32 0, i32* %13, align 4
  br label %173

173:                                              ; preds = %172, %163, %160
  br label %271

174:                                              ; preds = %158
  %175 = load i32, i32* %21, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %174
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @INDOPTION_DESC, align 4
  %184 = load i32, i32* @INDOPTION_DESC, align 4
  %185 = call i32 @test_indoption(i32 %178, i32 %179, i32 %182, i32 %183, i32 %184, i32* %12)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  store i32 0, i32* %13, align 4
  br label %188

188:                                              ; preds = %187, %177, %174
  br label %271

189:                                              ; preds = %158
  %190 = load i32, i32* %21, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %189
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @INDOPTION_NULLS_FIRST, align 4
  %199 = load i32, i32* @INDOPTION_NULLS_FIRST, align 4
  %200 = call i32 @test_indoption(i32 %193, i32 %194, i32 %197, i32 %198, i32 %199, i32* %12)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  store i32 0, i32* %13, align 4
  br label %203

203:                                              ; preds = %202, %192, %189
  br label %271

204:                                              ; preds = %158
  %205 = load i32, i32* %21, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %204
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @INDOPTION_NULLS_FIRST, align 4
  %214 = call i32 @test_indoption(i32 %208, i32 %209, i32 %212, i32 %213, i32 0, i32* %12)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %207
  store i32 0, i32* %13, align 4
  br label %217

217:                                              ; preds = %216, %207, %204
  br label %271

218:                                              ; preds = %158
  %219 = load i32, i32* %21, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  br label %226

225:                                              ; preds = %218
  br label %226

226:                                              ; preds = %225, %221
  %227 = phi i32 [ %224, %221 ], [ 0, %225 ]
  store i32 %227, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %271

228:                                              ; preds = %158
  %229 = load i32, i32* %21, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 11
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %231, %228
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %237

237:                                              ; preds = %236, %231
  br label %271

238:                                              ; preds = %158
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 10
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %238
  %244 = load i64, i64* %10, align 8
  %245 = load i32, i32* @AccessShareLock, align 4
  %246 = call i32 @index_open(i64 %244, i32 %245)
  store i32 %246, i32* %22, align 4
  %247 = load i32, i32* %22, align 4
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @index_can_return(i32 %247, i32 %248)
  store i32 %249, i32* %12, align 4
  %250 = load i32, i32* %22, align 4
  %251 = load i32, i32* @AccessShareLock, align 4
  %252 = call i32 @index_close(i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %243, %238
  br label %271

254:                                              ; preds = %158
  %255 = load i32, i32* %21, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  store i32 %260, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %261

261:                                              ; preds = %257, %254
  br label %271

262:                                              ; preds = %158
  %263 = load i32, i32* %21, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %269

269:                                              ; preds = %265, %262
  br label %271

270:                                              ; preds = %158
  br label %271

271:                                              ; preds = %270, %269, %261, %253, %237, %226, %217, %203, %188, %173
  %272 = load i32, i32* %19, align 4
  %273 = call i32 @ReleaseSysCache(i32 %272)
  %274 = load i32, i32* %13, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %271
  %277 = load i32, i32* %12, align 4
  %278 = call i32 @PG_RETURN_BOOL(i32 %277)
  br label %279

279:                                              ; preds = %276, %271
  %280 = call i32 (...) @PG_RETURN_NULL()
  br label %281

281:                                              ; preds = %279, %111
  %282 = load i64, i64* %10, align 8
  %283 = call i64 @OidIsValid(i64 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %316

285:                                              ; preds = %281
  %286 = load i32, i32* %15, align 4
  switch i32 %286, label %313 [
    i32 137, label %287
    i32 134, label %292
    i32 143, label %300
    i32 144, label %308
  ]

287:                                              ; preds = %285
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @PG_RETURN_BOOL(i32 %290)
  br label %292

292:                                              ; preds = %285, %287
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 8
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %295, 0
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i32 1, i32 0
  %299 = call i32 @PG_RETURN_BOOL(i32 %298)
  br label %300

300:                                              ; preds = %285, %292
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 9
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i32 1, i32 0
  %307 = call i32 @PG_RETURN_BOOL(i32 %306)
  br label %308

308:                                              ; preds = %285, %300
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @PG_RETURN_BOOL(i32 %311)
  br label %313

313:                                              ; preds = %285, %308
  %314 = call i32 (...) @PG_RETURN_NULL()
  br label %315

315:                                              ; preds = %313
  br label %316

316:                                              ; preds = %315, %281
  %317 = load i32, i32* %15, align 4
  switch i32 %317, label %346 [
    i32 139, label %318
    i32 138, label %323
    i32 140, label %328
    i32 142, label %333
    i32 141, label %341
  ]

318:                                              ; preds = %316
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @PG_RETURN_BOOL(i32 %321)
  br label %323

323:                                              ; preds = %316, %318
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 6
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @PG_RETURN_BOOL(i32 %326)
  br label %328

328:                                              ; preds = %316, %323
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @PG_RETURN_BOOL(i32 %331)
  br label %333

333:                                              ; preds = %316, %328
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 8
  %336 = load i32, i32* %335, align 8
  %337 = icmp ne i32 %336, 0
  %338 = zext i1 %337 to i64
  %339 = select i1 %337, i32 1, i32 0
  %340 = call i32 @PG_RETURN_BOOL(i32 %339)
  br label %341

341:                                              ; preds = %316, %333
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @PG_RETURN_BOOL(i32 %344)
  br label %346

346:                                              ; preds = %316, %341
  %347 = call i32 (...) @PG_RETURN_NULL()
  br label %348

348:                                              ; preds = %346
  %349 = load i32, i32* %6, align 4
  ret i32 %349
}

declare dso_local i32 @lookup_prop_name(i8*) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @PG_RETURN_NULL(...) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local %struct.TYPE_5__* @GetIndexAmRoutineByAmId(i64, i32) #1

declare dso_local i32 @PG_RETURN_BOOL(i32) #1

declare dso_local i32 @test_indoption(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @index_open(i64, i32) #1

declare dso_local i32 @index_can_return(i32, i32) #1

declare dso_local i32 @index_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
