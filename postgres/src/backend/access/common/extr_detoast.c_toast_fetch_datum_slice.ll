; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_detoast.c_toast_fetch_datum_slice.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_detoast.c_toast_fetch_datum_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlena = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.varatt_external = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"toast_fetch_datum_slice shouldn't be called for non-ondisk datums\00", align 1
@TOAST_MAX_CHUNK_SIZE = common dso_local global i32 0, align 4
@VARHDRSZ = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@BTGreaterEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4GE = common dso_local global i32 0, align 4
@BTLessEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4LE = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@VARHDRSZ_SHORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"found toasted toast chunk for toast value %u in %s\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"unexpected chunk number %d (expected %d) for toast value %u in %s\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"unexpected chunk size %d (expected %d) in chunk %d of %d for toast value %u in %s when fetching slice\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"unexpected chunk size %d (expected %d) in final chunk %d for toast value %u in %s when fetching slice\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"unexpected chunk number %d (out of range %d..%d) for toast value %u in %s\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"missing chunk number %d for toast value %u in %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.varlena* (%struct.varlena*, i32, i32)* @toast_fetch_datum_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.varlena* @toast_fetch_datum_slice(%struct.varlena* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.varlena*, align 8
  %5 = alloca %struct.varlena*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.varlena*, align 8
  %16 = alloca %struct.varatt_external, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.varlena*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca { i64, i32 }, align 4
  %36 = alloca { i64, i32 }, align 4
  %37 = alloca { i64, i32 }, align 4
  %38 = alloca { i64, i32 }, align 4
  store %struct.varlena* %0, %struct.varlena** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %39 = load %struct.varlena*, %struct.varlena** %5, align 8
  %40 = call i32 @VARATT_IS_EXTERNAL_ONDISK(%struct.varlena* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* @ERROR, align 4
  %44 = call i32 (i32, i8*, ...) @elog(i32 %43, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %3
  %46 = load %struct.varlena*, %struct.varlena** %5, align 8
  %47 = bitcast { i64, i32 }* %35 to i8*
  %48 = bitcast %struct.varatt_external* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 12, i1 false)
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %50 = load i64, i64* %49, align 4
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @VARATT_EXTERNAL_GET_POINTER(i64 %50, i32 %52, %struct.varlena* %46)
  %54 = bitcast { i64, i32 }* %36 to i8*
  %55 = bitcast %struct.varatt_external* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 12, i1 false)
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %57 = load i64, i64* %56, align 4
  %58 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @VARATT_EXTERNAL_IS_COMPRESSED(i64 %57, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 0, %63
  br label %65

65:                                               ; preds = %62, %45
  %66 = phi i1 [ true, %45 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = getelementptr inbounds %struct.varatt_external, %struct.varatt_external* %16, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* @TOAST_MAX_CHUNK_SIZE, align 4
  %74 = sdiv i32 %72, %73
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %25, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %65
  %81 = bitcast { i64, i32 }* %37 to i8*
  %82 = bitcast %struct.varatt_external* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 12, i1 false)
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %84 = load i64, i64* %83, align 4
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @VARATT_EXTERNAL_IS_COMPRESSED(i64 %84, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, 4
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %92, %89, %80
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %17, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103, %97
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @VARHDRSZ, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i64 @palloc(i32 %113)
  %115 = inttoptr i64 %114 to %struct.varlena*
  store %struct.varlena* %115, %struct.varlena** %15, align 8
  %116 = bitcast { i64, i32 }* %38 to i8*
  %117 = bitcast %struct.varatt_external* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 12, i1 false)
  %118 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %119 = load i64, i64* %118, align 4
  %120 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @VARATT_EXTERNAL_IS_COMPRESSED(i64 %119, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %110
  %125 = load %struct.varlena*, %struct.varlena** %15, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @VARHDRSZ, align 4
  %128 = add nsw i32 %126, %127
  %129 = call i32 @SET_VARSIZE_COMPRESSED(%struct.varlena* %125, i32 %128)
  br label %136

130:                                              ; preds = %110
  %131 = load %struct.varlena*, %struct.varlena** %15, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @VARHDRSZ, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i32 @SET_VARSIZE(%struct.varlena* %131, i32 %134)
  br label %136

136:                                              ; preds = %130, %124
  %137 = load i32, i32* %7, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load %struct.varlena*, %struct.varlena** %15, align 8
  store %struct.varlena* %140, %struct.varlena** %4, align 8
  br label %411

141:                                              ; preds = %136
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @TOAST_MAX_CHUNK_SIZE, align 4
  %144 = sdiv i32 %142, %143
  store i32 %144, i32* %21, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %145, %146
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* @TOAST_MAX_CHUNK_SIZE, align 4
  %150 = sdiv i32 %148, %149
  store i32 %150, i32* %22, align 4
  %151 = load i32, i32* %22, align 4
  %152 = load i32, i32* %21, align 4
  %153 = sub nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %20, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @TOAST_MAX_CHUNK_SIZE, align 4
  %157 = srem i32 %155, %156
  store i32 %157, i32* %23, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %158, %159
  %161 = sub nsw i32 %160, 1
  %162 = load i32, i32* @TOAST_MAX_CHUNK_SIZE, align 4
  %163 = srem i32 %161, %162
  store i32 %163, i32* %24, align 4
  %164 = getelementptr inbounds %struct.varatt_external, %struct.varatt_external* %16, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AccessShareLock, align 4
  %167 = call %struct.TYPE_10__* @table_open(i32 %165, i32 %166)
  store %struct.TYPE_10__* %167, %struct.TYPE_10__** %8, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %14, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %172 = load i32, i32* @AccessShareLock, align 4
  %173 = call i32 @toast_open_indexes(%struct.TYPE_10__* %171, i32 %172, %struct.TYPE_10__*** %9, i32* %32)
  store i32 %173, i32* %33, align 4
  %174 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %175 = load i32, i32* @BTEqualStrategyNumber, align 4
  %176 = load i32, i32* @F_OIDEQ, align 4
  %177 = getelementptr inbounds %struct.varatt_external, %struct.varatt_external* %16, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ObjectIdGetDatum(i32 %178)
  %180 = call i32 @ScanKeyInit(i32* %174, i32 1, i32 %175, i32 %176, i32 %179)
  %181 = load i32, i32* %20, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %190

183:                                              ; preds = %141
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %185 = load i32, i32* @BTEqualStrategyNumber, align 4
  %186 = load i32, i32* @F_INT4EQ, align 4
  %187 = load i32, i32* %21, align 4
  %188 = call i32 @Int32GetDatum(i32 %187)
  %189 = call i32 @ScanKeyInit(i32* %184, i32 2, i32 %185, i32 %186, i32 %188)
  store i32 2, i32* %11, align 4
  br label %203

190:                                              ; preds = %141
  %191 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %192 = load i32, i32* @BTGreaterEqualStrategyNumber, align 4
  %193 = load i32, i32* @F_INT4GE, align 4
  %194 = load i32, i32* %21, align 4
  %195 = call i32 @Int32GetDatum(i32 %194)
  %196 = call i32 @ScanKeyInit(i32* %191, i32 2, i32 %192, i32 %193, i32 %195)
  %197 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %198 = load i32, i32* @BTLessEqualStrategyNumber, align 4
  %199 = load i32, i32* @F_INT4LE, align 4
  %200 = load i32, i32* %22, align 4
  %201 = call i32 @Int32GetDatum(i32 %200)
  %202 = call i32 @ScanKeyInit(i32* %197, i32 2, i32 %198, i32 %199, i32 %201)
  store i32 3, i32* %11, align 4
  br label %203

203:                                              ; preds = %190, %183
  %204 = call i32 @init_toast_snapshot(i32* %34)
  %205 = load i32, i32* %21, align 4
  store i32 %205, i32* %19, align 4
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %207 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %208 = load i32, i32* %33, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %207, i64 %209
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = load i32, i32* %11, align 4
  %213 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %214 = call i32 @systable_beginscan_ordered(%struct.TYPE_10__* %206, %struct.TYPE_10__* %211, i32* %34, i32 %212, i32* %213)
  store i32 %214, i32* %12, align 4
  br label %215

215:                                              ; preds = %363, %203
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* @ForwardScanDirection, align 4
  %218 = call i32* @systable_getnext_ordered(i32 %216, i32 %217)
  store i32* %218, i32** %13, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %387

220:                                              ; preds = %215
  %221 = load i32*, i32** %13, align 8
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @fastgetattr(i32* %221, i32 2, i32 %222, i32* %27)
  %224 = call i32 @DatumGetInt32(i32 %223)
  store i32 %224, i32* %18, align 4
  %225 = load i32, i32* %27, align 4
  %226 = icmp ne i32 %225, 0
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = call i32 @Assert(i32 %228)
  %230 = load i32*, i32** %13, align 8
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @fastgetattr(i32* %230, i32 3, i32 %231, i32* %27)
  %233 = call %struct.varlena* @DatumGetPointer(i32 %232)
  store %struct.varlena* %233, %struct.varlena** %26, align 8
  %234 = load i32, i32* %27, align 4
  %235 = icmp ne i32 %234, 0
  %236 = xor i1 %235, true
  %237 = zext i1 %236 to i32
  %238 = call i32 @Assert(i32 %237)
  %239 = load %struct.varlena*, %struct.varlena** %26, align 8
  %240 = call i32 @VARATT_IS_EXTENDED(%struct.varlena* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %220
  %243 = load %struct.varlena*, %struct.varlena** %26, align 8
  %244 = call i32 @VARSIZE(%struct.varlena* %243)
  %245 = load i32, i32* @VARHDRSZ, align 4
  %246 = sub nsw i32 %244, %245
  store i32 %246, i32* %29, align 4
  %247 = load %struct.varlena*, %struct.varlena** %26, align 8
  %248 = call i8* @VARDATA(%struct.varlena* %247)
  store i8* %248, i8** %28, align 8
  br label %268

249:                                              ; preds = %220
  %250 = load %struct.varlena*, %struct.varlena** %26, align 8
  %251 = call i64 @VARATT_IS_SHORT(%struct.varlena* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %249
  %254 = load %struct.varlena*, %struct.varlena** %26, align 8
  %255 = call i32 @VARSIZE_SHORT(%struct.varlena* %254)
  %256 = load i32, i32* @VARHDRSZ_SHORT, align 4
  %257 = sub nsw i32 %255, %256
  store i32 %257, i32* %29, align 4
  %258 = load %struct.varlena*, %struct.varlena** %26, align 8
  %259 = call i8* @VARDATA_SHORT(%struct.varlena* %258)
  store i8* %259, i8** %28, align 8
  br label %267

260:                                              ; preds = %249
  %261 = load i32, i32* @ERROR, align 4
  %262 = getelementptr inbounds %struct.varatt_external, %struct.varatt_external* %16, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %265 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %264)
  %266 = call i32 (i32, i8*, ...) @elog(i32 %261, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %263, i32 %265)
  store i32 0, i32* %29, align 4
  store i8* null, i8** %28, align 8
  br label %267

267:                                              ; preds = %260, %253
  br label %268

268:                                              ; preds = %267, %242
  %269 = load i32, i32* %18, align 4
  %270 = load i32, i32* %19, align 4
  %271 = icmp ne i32 %269, %270
  br i1 %271, label %280, label %272

272:                                              ; preds = %268
  %273 = load i32, i32* %18, align 4
  %274 = load i32, i32* %22, align 4
  %275 = icmp sgt i32 %273, %274
  br i1 %275, label %280, label %276

276:                                              ; preds = %272
  %277 = load i32, i32* %18, align 4
  %278 = load i32, i32* %21, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %289

280:                                              ; preds = %276, %272, %268
  %281 = load i32, i32* @ERROR, align 4
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* %19, align 4
  %284 = getelementptr inbounds %struct.varatt_external, %struct.varatt_external* %16, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %287 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %286)
  %288 = call i32 (i32, i8*, ...) @elog(i32 %281, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %282, i32 %283, i32 %285, i32 %287)
  br label %289

289:                                              ; preds = %280, %276
  %290 = load i32, i32* %18, align 4
  %291 = load i32, i32* %25, align 4
  %292 = sub nsw i32 %291, 1
  %293 = icmp slt i32 %290, %292
  br i1 %293, label %294, label %310

294:                                              ; preds = %289
  %295 = load i32, i32* %29, align 4
  %296 = load i32, i32* @TOAST_MAX_CHUNK_SIZE, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %309

298:                                              ; preds = %294
  %299 = load i32, i32* @ERROR, align 4
  %300 = load i32, i32* %29, align 4
  %301 = load i32, i32* @TOAST_MAX_CHUNK_SIZE, align 4
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* %25, align 4
  %304 = getelementptr inbounds %struct.varatt_external, %struct.varatt_external* %16, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %307 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %306)
  %308 = call i32 (i32, i8*, ...) @elog(i32 %299, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 %300, i32 %301, i32 %302, i32 %303, i32 %305, i32 %307)
  br label %309

309:                                              ; preds = %298, %294
  br label %349

310:                                              ; preds = %289
  %311 = load i32, i32* %18, align 4
  %312 = load i32, i32* %25, align 4
  %313 = sub nsw i32 %312, 1
  %314 = icmp eq i32 %311, %313
  br i1 %314, label %315, label %338

315:                                              ; preds = %310
  %316 = load i32, i32* %18, align 4
  %317 = load i32, i32* @TOAST_MAX_CHUNK_SIZE, align 4
  %318 = mul nsw i32 %316, %317
  %319 = load i32, i32* %29, align 4
  %320 = add nsw i32 %318, %319
  %321 = load i32, i32* %17, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %337

323:                                              ; preds = %315
  %324 = load i32, i32* @ERROR, align 4
  %325 = load i32, i32* %29, align 4
  %326 = load i32, i32* %17, align 4
  %327 = load i32, i32* %18, align 4
  %328 = load i32, i32* @TOAST_MAX_CHUNK_SIZE, align 4
  %329 = mul nsw i32 %327, %328
  %330 = sub nsw i32 %326, %329
  %331 = load i32, i32* %18, align 4
  %332 = getelementptr inbounds %struct.varatt_external, %struct.varatt_external* %16, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %335 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %334)
  %336 = call i32 (i32, i8*, ...) @elog(i32 %324, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 %325, i32 %330, i32 %331, i32 %333, i32 %335)
  br label %337

337:                                              ; preds = %323, %315
  br label %348

338:                                              ; preds = %310
  %339 = load i32, i32* @ERROR, align 4
  %340 = load i32, i32* %18, align 4
  %341 = load i32, i32* %25, align 4
  %342 = sub nsw i32 %341, 1
  %343 = getelementptr inbounds %struct.varatt_external, %struct.varatt_external* %16, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %346 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %345)
  %347 = call i32 (i32, i8*, ...) @elog(i32 %339, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %340, i32 0, i32 %342, i32 %344, i32 %346)
  br label %348

348:                                              ; preds = %338, %337
  br label %349

349:                                              ; preds = %348, %309
  store i32 0, i32* %30, align 4
  %350 = load i32, i32* %29, align 4
  %351 = sub nsw i32 %350, 1
  store i32 %351, i32* %31, align 4
  %352 = load i32, i32* %18, align 4
  %353 = load i32, i32* %21, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %349
  %356 = load i32, i32* %23, align 4
  store i32 %356, i32* %30, align 4
  br label %357

357:                                              ; preds = %355, %349
  %358 = load i32, i32* %18, align 4
  %359 = load i32, i32* %22, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %357
  %362 = load i32, i32* %24, align 4
  store i32 %362, i32* %31, align 4
  br label %363

363:                                              ; preds = %361, %357
  %364 = load %struct.varlena*, %struct.varlena** %15, align 8
  %365 = call i8* @VARDATA(%struct.varlena* %364)
  %366 = load i32, i32* %18, align 4
  %367 = load i32, i32* @TOAST_MAX_CHUNK_SIZE, align 4
  %368 = mul nsw i32 %366, %367
  %369 = load i32, i32* %6, align 4
  %370 = sub nsw i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %365, i64 %371
  %373 = load i32, i32* %30, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %372, i64 %374
  %376 = load i8*, i8** %28, align 8
  %377 = load i32, i32* %30, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, i8* %376, i64 %378
  %380 = load i32, i32* %31, align 4
  %381 = load i32, i32* %30, align 4
  %382 = sub nsw i32 %380, %381
  %383 = add nsw i32 %382, 1
  %384 = call i32 @memcpy(i8* %375, i8* %379, i32 %383)
  %385 = load i32, i32* %19, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %19, align 4
  br label %215

387:                                              ; preds = %215
  %388 = load i32, i32* %19, align 4
  %389 = load i32, i32* %22, align 4
  %390 = add nsw i32 %389, 1
  %391 = icmp ne i32 %388, %390
  br i1 %391, label %392, label %400

392:                                              ; preds = %387
  %393 = load i32, i32* @ERROR, align 4
  %394 = load i32, i32* %19, align 4
  %395 = getelementptr inbounds %struct.varatt_external, %struct.varatt_external* %16, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %398 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %397)
  %399 = call i32 (i32, i8*, ...) @elog(i32 %393, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %394, i32 %396, i32 %398)
  br label %400

400:                                              ; preds = %392, %387
  %401 = load i32, i32* %12, align 4
  %402 = call i32 @systable_endscan_ordered(i32 %401)
  %403 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %404 = load i32, i32* %32, align 4
  %405 = load i32, i32* @AccessShareLock, align 4
  %406 = call i32 @toast_close_indexes(%struct.TYPE_10__** %403, i32 %404, i32 %405)
  %407 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %408 = load i32, i32* @AccessShareLock, align 4
  %409 = call i32 @table_close(%struct.TYPE_10__* %407, i32 %408)
  %410 = load %struct.varlena*, %struct.varlena** %15, align 8
  store %struct.varlena* %410, %struct.varlena** %4, align 8
  br label %411

411:                                              ; preds = %400, %139
  %412 = load %struct.varlena*, %struct.varlena** %4, align 8
  ret %struct.varlena* %412
}

declare dso_local i32 @VARATT_IS_EXTERNAL_ONDISK(%struct.varlena*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @VARATT_EXTERNAL_GET_POINTER(i64, i32, %struct.varlena*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @VARATT_EXTERNAL_IS_COMPRESSED(i64, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @SET_VARSIZE_COMPRESSED(%struct.varlena*, i32) #1

declare dso_local i32 @SET_VARSIZE(%struct.varlena*, i32) #1

declare dso_local %struct.TYPE_10__* @table_open(i32, i32) #1

declare dso_local i32 @toast_open_indexes(%struct.TYPE_10__*, i32, %struct.TYPE_10__***, i32*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @init_toast_snapshot(i32*) #1

declare dso_local i32 @systable_beginscan_ordered(%struct.TYPE_10__*, %struct.TYPE_10__*, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext_ordered(i32, i32) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @fastgetattr(i32*, i32, i32, i32*) #1

declare dso_local %struct.varlena* @DatumGetPointer(i32) #1

declare dso_local i32 @VARATT_IS_EXTENDED(%struct.varlena*) #1

declare dso_local i32 @VARSIZE(%struct.varlena*) #1

declare dso_local i8* @VARDATA(%struct.varlena*) #1

declare dso_local i64 @VARATT_IS_SHORT(%struct.varlena*) #1

declare dso_local i32 @VARSIZE_SHORT(%struct.varlena*) #1

declare dso_local i8* @VARDATA_SHORT(%struct.varlena*) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @systable_endscan_ordered(i32) #1

declare dso_local i32 @toast_close_indexes(%struct.TYPE_10__**, i32, i32) #1

declare dso_local i32 @table_close(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
