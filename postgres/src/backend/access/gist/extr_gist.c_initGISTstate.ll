; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_initGISTstate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_initGISTstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8**, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_11__*, i8*, i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i8** }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"numberOfAttributes %d > %d\00", align 1
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"GiST scan context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@GIST_CONSISTENT_PROC = common dso_local global i32 0, align 4
@GIST_UNION_PROC = common dso_local global i32 0, align 4
@GIST_COMPRESS_PROC = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@GIST_DECOMPRESS_PROC = common dso_local global i32 0, align 4
@GIST_PENALTY_PROC = common dso_local global i32 0, align 4
@GIST_PICKSPLIT_PROC = common dso_local global i32 0, align 4
@GIST_EQUAL_PROC = common dso_local global i32 0, align 4
@GIST_DISTANCE_PROC = common dso_local global i32 0, align 4
@GIST_FETCH_PROC = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @initGISTstate(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %22 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load i32, i32* @CurrentMemoryContext, align 4
  %25 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %26 = call i8* @AllocSetContextCreate(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @MemoryContextSwitchTo(i8* %27)
  store i8* %28, i8** %5, align 8
  %29 = call i64 @palloc(i32 112)
  %30 = inttoptr i64 %29 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 13
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 12
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 11
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call %struct.TYPE_15__* @CreateTupleDescCopyConstr(%struct.TYPE_11__* %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 10
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_12__* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 10
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %281, %23
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_12__* %56)
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %284

59:                                               ; preds = %54
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 9
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i64 %64
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* @GIST_CONSISTENT_PROC, align 4
  %70 = call i32 @index_getprocinfo(%struct.TYPE_12__* %66, i32 %68, i32 %69)
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @fmgr_info_copy(%struct.TYPE_14__* %65, i32 %70, i8* %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i64 %77
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* @GIST_UNION_PROC, align 4
  %83 = call i32 @index_getprocinfo(%struct.TYPE_12__* %79, i32 %81, i32 %82)
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @fmgr_info_copy(%struct.TYPE_14__* %78, i32 %83, i8* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* @GIST_COMPRESS_PROC, align 4
  %90 = call i8* @index_getprocid(%struct.TYPE_12__* %86, i32 %88, i32 %89)
  %91 = call i64 @OidIsValid(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %59
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 7
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i64 %98
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* @GIST_COMPRESS_PROC, align 4
  %104 = call i32 @index_getprocinfo(%struct.TYPE_12__* %100, i32 %102, i32 %103)
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @fmgr_info_copy(%struct.TYPE_14__* %99, i32 %104, i8* %105)
  br label %116

107:                                              ; preds = %59
  %108 = load i8*, i8** @InvalidOid, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 7
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  store i8* %108, i8** %115, align 8
  br label %116

116:                                              ; preds = %107, %93
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* @GIST_DECOMPRESS_PROC, align 4
  %121 = call i8* @index_getprocid(%struct.TYPE_12__* %117, i32 %119, i32 %120)
  %122 = call i64 @OidIsValid(i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %116
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %129
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* @GIST_DECOMPRESS_PROC, align 4
  %135 = call i32 @index_getprocinfo(%struct.TYPE_12__* %131, i32 %133, i32 %134)
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 @fmgr_info_copy(%struct.TYPE_14__* %130, i32 %135, i8* %136)
  br label %147

138:                                              ; preds = %116
  %139 = load i8*, i8** @InvalidOid, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  store i8* %139, i8** %146, align 8
  br label %147

147:                                              ; preds = %138, %124
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i64 %152
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* @GIST_PENALTY_PROC, align 4
  %158 = call i32 @index_getprocinfo(%struct.TYPE_12__* %154, i32 %156, i32 %157)
  %159 = load i8*, i8** %4, align 8
  %160 = call i32 @fmgr_info_copy(%struct.TYPE_14__* %153, i32 %158, i8* %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i64 %165
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  %170 = load i32, i32* @GIST_PICKSPLIT_PROC, align 4
  %171 = call i32 @index_getprocinfo(%struct.TYPE_12__* %167, i32 %169, i32 %170)
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 @fmgr_info_copy(%struct.TYPE_14__* %166, i32 %171, i8* %172)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 %178
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  %183 = load i32, i32* @GIST_EQUAL_PROC, align 4
  %184 = call i32 @index_getprocinfo(%struct.TYPE_12__* %180, i32 %182, i32 %183)
  %185 = load i8*, i8** %4, align 8
  %186 = call i32 @fmgr_info_copy(%struct.TYPE_14__* %179, i32 %184, i8* %185)
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  %190 = load i32, i32* @GIST_DISTANCE_PROC, align 4
  %191 = call i8* @index_getprocid(%struct.TYPE_12__* %187, i32 %189, i32 %190)
  %192 = call i64 @OidIsValid(i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %147
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i64 %199
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* @GIST_DISTANCE_PROC, align 4
  %205 = call i32 @index_getprocinfo(%struct.TYPE_12__* %201, i32 %203, i32 %204)
  %206 = load i8*, i8** %4, align 8
  %207 = call i32 @fmgr_info_copy(%struct.TYPE_14__* %200, i32 %205, i8* %206)
  br label %217

208:                                              ; preds = %147
  %209 = load i8*, i8** @InvalidOid, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  store i8* %209, i8** %216, align 8
  br label %217

217:                                              ; preds = %208, %194
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, 1
  %221 = load i32, i32* @GIST_FETCH_PROC, align 4
  %222 = call i8* @index_getprocid(%struct.TYPE_12__* %218, i32 %220, i32 %221)
  %223 = call i64 @OidIsValid(i8* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %217
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i64 %230
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  %235 = load i32, i32* @GIST_FETCH_PROC, align 4
  %236 = call i32 @index_getprocinfo(%struct.TYPE_12__* %232, i32 %234, i32 %235)
  %237 = load i8*, i8** %4, align 8
  %238 = call i32 @fmgr_info_copy(%struct.TYPE_14__* %231, i32 %236, i8* %237)
  br label %248

239:                                              ; preds = %217
  %240 = load i8*, i8** @InvalidOid, align 8
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  store i8* %240, i8** %247, align 8
  br label %248

248:                                              ; preds = %239, %225
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  %251 = load i8**, i8*** %250, align 8
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = call i64 @OidIsValid(i8* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %272

258:                                              ; preds = %248
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 1
  %261 = load i8**, i8*** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = load i8**, i8*** %267, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %268, i64 %270
  store i8* %265, i8** %271, align 8
  br label %280

272:                                              ; preds = %248
  %273 = load i8*, i8** @DEFAULT_COLLATION_OID, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load i8**, i8*** %275, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %276, i64 %278
  store i8* %273, i8** %279, align 8
  br label %280

280:                                              ; preds = %272, %258
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %6, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %6, align 4
  br label %54

284:                                              ; preds = %54
  br label %285

285:                                              ; preds = %373, %284
  %286 = load i32, i32* %6, align 4
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp slt i32 %286, %291
  br i1 %292, label %293, label %376

293:                                              ; preds = %285
  %294 = load i8*, i8** @InvalidOid, align 8
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 9
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %296, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 0
  store i8* %294, i8** %301, align 8
  %302 = load i8*, i8** @InvalidOid, align 8
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 8
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %304, align 8
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  store i8* %302, i8** %309, align 8
  %310 = load i8*, i8** @InvalidOid, align 8
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 7
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %312, align 8
  %314 = load i32, i32* %6, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 0
  store i8* %310, i8** %317, align 8
  %318 = load i8*, i8** @InvalidOid, align 8
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 6
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %320, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 0
  store i8* %318, i8** %325, align 8
  %326 = load i8*, i8** @InvalidOid, align 8
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 5
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %328, align 8
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 0
  store i8* %326, i8** %333, align 8
  %334 = load i8*, i8** @InvalidOid, align 8
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 4
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %336, align 8
  %338 = load i32, i32* %6, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 0
  store i8* %334, i8** %341, align 8
  %342 = load i8*, i8** @InvalidOid, align 8
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 3
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %344, align 8
  %346 = load i32, i32* %6, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 0
  store i8* %342, i8** %349, align 8
  %350 = load i8*, i8** @InvalidOid, align 8
  %351 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 2
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %352, align 8
  %354 = load i32, i32* %6, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 0
  store i8* %350, i8** %357, align 8
  %358 = load i8*, i8** @InvalidOid, align 8
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %360, align 8
  %362 = load i32, i32* %6, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 0
  store i8* %358, i8** %365, align 8
  %366 = load i8*, i8** @InvalidOid, align 8
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 0
  %369 = load i8**, i8*** %368, align 8
  %370 = load i32, i32* %6, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8*, i8** %369, i64 %371
  store i8* %366, i8** %372, align 8
  br label %373

373:                                              ; preds = %293
  %374 = load i32, i32* %6, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %6, align 4
  br label %285

376:                                              ; preds = %285
  %377 = load i8*, i8** %5, align 8
  %378 = call i8* @MemoryContextSwitchTo(i8* %377)
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %379
}

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i8* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i8* @MemoryContextSwitchTo(i8*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local %struct.TYPE_15__* @CreateTupleDescCopyConstr(%struct.TYPE_11__*) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_12__*) #1

declare dso_local i32 @fmgr_info_copy(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @index_getprocinfo(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @OidIsValid(i8*) #1

declare dso_local i8* @index_getprocid(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
