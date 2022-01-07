; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationBuildTupleDesc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationBuildTupleDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_29__*, %struct.TYPE_30__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32* }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i64, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_23__ = type { i32 }

@CacheMemoryContext = common dso_local global i32 0, align 4
@Anum_pg_attribute_attrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_attribute_attnum = common dso_local global i32 0, align 4
@BTGreaterStrategyNumber = common dso_local global i32 0, align 4
@F_INT2GT = common dso_local global i32 0, align 4
@AttributeRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@AttributeRelidNumIndexId = common dso_local global i32 0, align 4
@criticalRelcachesBuilt = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"invalid attribute number %d for %s\00", align 1
@ATTRIBUTE_FIXED_PART_SIZE = common dso_local global i32 0, align 4
@ATTRIBUTE_GENERATED_STORED = common dso_local global i64 0, align 8
@Anum_pg_attribute_attmissingval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"catalog is missing %d attribute(s) for relid %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*)* @RelationBuildTupleDesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RelationBuildTupleDesc(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %9, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 2
  store i32 %24, i32* %28, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load i32, i32* @CacheMemoryContext, align 4
  %34 = call i64 @MemoryContextAlloc(i32 %33, i32 40)
  %35 = inttoptr i64 %34 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %35, %struct.TYPE_26__** %8, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %41 = load i32, i32* @Anum_pg_attribute_attrelid, align 4
  %42 = load i32, i32* @BTEqualStrategyNumber, align 4
  %43 = load i32, i32* @F_OIDEQ, align 4
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %45 = call i32 @RelationGetRelid(%struct.TYPE_27__* %44)
  %46 = call i32 @ObjectIdGetDatum(i32 %45)
  %47 = call i32 @ScanKeyInit(i32* %40, i32 %41, i32 %42, i32 %43, i32 %46)
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %49 = load i32, i32* @Anum_pg_attribute_attnum, align 4
  %50 = load i32, i32* @BTGreaterStrategyNumber, align 4
  %51 = load i32, i32* @F_INT2GT, align 4
  %52 = call i32 @Int16GetDatum(i32 0)
  %53 = call i32 @ScanKeyInit(i32* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @AttributeRelationId, align 4
  %55 = load i32, i32* @AccessShareLock, align 4
  %56 = call %struct.TYPE_27__* @table_open(i32 %54, i32 %55)
  store %struct.TYPE_27__* %56, %struct.TYPE_27__** %4, align 8
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %58 = load i32, i32* @AttributeRelidNumIndexId, align 4
  %59 = load i32, i32* @criticalRelcachesBuilt, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %61 = call i32 @systable_beginscan(%struct.TYPE_27__* %57, i32 %58, i32 %59, i32* null, i32 2, i32* %60)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %63 = call i32 @RelationGetNumberOfAttributes(%struct.TYPE_27__* %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %239, %1
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @systable_getnext(i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = call i64 @HeapTupleIsValid(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %240

69:                                               ; preds = %64
  %70 = load i32, i32* %3, align 4
  %71 = call i64 @GETSTRUCT(i32 %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %72, %struct.TYPE_28__** %12, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %81 = call i32 @RelationGetNumberOfAttributes(%struct.TYPE_27__* %80)
  %82 = icmp sgt i32 %79, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %78, %69
  %84 = load i32, i32* @ERROR, align 4
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %89 = call i32 @RelationGetRelationName(%struct.TYPE_27__* %88)
  %90 = call i32 @elog(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %83, %78
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %95, 1
  %97 = call %struct.TYPE_23__* @TupleDescAttr(%struct.TYPE_24__* %94, i32 %96)
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %99 = load i32, i32* @ATTRIBUTE_FIXED_PART_SIZE, align 4
  %100 = call i32 @memcpy(%struct.TYPE_23__* %97, %struct.TYPE_28__* %98, i32 %99)
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %91
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %91
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ATTRIBUTE_GENERATED_STORED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %108
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %117
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %124 = icmp eq %struct.TYPE_30__* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32, i32* @CacheMemoryContext, align 4
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %128 = call i32 @RelationGetNumberOfAttributes(%struct.TYPE_27__* %127)
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 16
  %131 = trunc i64 %130 to i32
  %132 = call i64 @MemoryContextAllocZero(i32 %126, i32 %131)
  %133 = inttoptr i64 %132 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %133, %struct.TYPE_30__** %9, align 8
  br label %134

134:                                              ; preds = %125, %122
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 0
  store i32 %135, i32* %140, align 8
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 1
  store i32* null, i32** %145, align 8
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %134, %117
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %233

153:                                              ; preds = %148
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %157, align 8
  %159 = call i32 @heap_getattr(i32 %154, i32 %155, %struct.TYPE_24__* %158, i32* %15)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %232, label %162

162:                                              ; preds = %153
  store i32 1, i32* %18, align 4
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %164 = icmp eq %struct.TYPE_29__* %163, null
  br i1 %164, label %165, label %177

165:                                              ; preds = %162
  %166 = load i32, i32* @CacheMemoryContext, align 4
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 8
  %174 = trunc i64 %173 to i32
  %175 = call i64 @MemoryContextAllocZero(i32 %166, i32 %174)
  %176 = inttoptr i64 %175 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %176, %struct.TYPE_29__** %10, align 8
  br label %177

177:                                              ; preds = %165, %162
  %178 = load i32, i32* %14, align 4
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @array_get_element(i32 %178, i32 1, i32* %18, i32 -1, i32 %181, i32 %184, i32 %187, i32* %17)
  store i32 %188, i32* %19, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i32 @Assert(i32 %192)
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %177
  %199 = load i32, i32* %19, align 4
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 1
  store i32 %199, i32* %205, align 4
  br label %225

206:                                              ; preds = %177
  %207 = load i32, i32* @CacheMemoryContext, align 4
  %208 = call i32 @MemoryContextSwitchTo(i32 %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %19, align 4
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @datumCopy(i32 %209, i32 %212, i32 %215)
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 1
  store i32 %216, i32* %222, align 4
  %223 = load i32, i32* %16, align 4
  %224 = call i32 @MemoryContextSwitchTo(i32 %223)
  br label %225

225:                                              ; preds = %206, %198
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %230, i32 0, i32 0
  store i32 1, i32* %231, align 4
  br label %232

232:                                              ; preds = %225, %153
  br label %233

233:                                              ; preds = %232, %148
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %240

239:                                              ; preds = %233
  br label %64

240:                                              ; preds = %238, %64
  %241 = load i32, i32* %5, align 4
  %242 = call i32 @systable_endscan(i32 %241)
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %244 = load i32, i32* @AccessShareLock, align 4
  %245 = call i32 @table_close(%struct.TYPE_27__* %243, i32 %244)
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %240
  %249 = load i32, i32* @ERROR, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %252 = call i32 @RelationGetRelid(%struct.TYPE_27__* %251)
  %253 = call i32 @elog(i32 %249, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %250, i32 %252)
  br label %254

254:                                              ; preds = %248, %240
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %256 = call i32 @RelationGetNumberOfAttributes(%struct.TYPE_27__* %255)
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %254
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %260, align 8
  %262 = call %struct.TYPE_23__* @TupleDescAttr(%struct.TYPE_24__* %261, i32 0)
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 0
  store i32 0, i32* %263, align 4
  br label %264

264:                                              ; preds = %258, %254
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %282, label %269

269:                                              ; preds = %264
  %270 = load i32, i32* %11, align 4
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %282, label %272

272:                                              ; preds = %269
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %274 = icmp ne %struct.TYPE_29__* %273, null
  br i1 %274, label %282, label %275

275:                                              ; preds = %272
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %353

282:                                              ; preds = %275, %272, %269, %264
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 1
  store %struct.TYPE_26__* %283, %struct.TYPE_26__** %287, align 8
  %288 = load i32, i32* %11, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %315

290:                                              ; preds = %282
  %291 = load i32, i32* %11, align 4
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %293 = call i32 @RelationGetNumberOfAttributes(%struct.TYPE_27__* %292)
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %305

295:                                              ; preds = %290
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %297 = load i32, i32* %11, align 4
  %298 = sext i32 %297 to i64
  %299 = mul i64 %298, 16
  %300 = trunc i64 %299 to i32
  %301 = call i64 @repalloc(%struct.TYPE_30__* %296, i32 %300)
  %302 = inttoptr i64 %301 to %struct.TYPE_30__*
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 6
  store %struct.TYPE_30__* %302, %struct.TYPE_30__** %304, align 8
  br label %309

305:                                              ; preds = %290
  %306 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 6
  store %struct.TYPE_30__* %306, %struct.TYPE_30__** %308, align 8
  br label %309

309:                                              ; preds = %305, %295
  %310 = load i32, i32* %11, align 4
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 2
  store i32 %310, i32* %312, align 8
  %313 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %314 = call i32 @AttrDefaultFetch(%struct.TYPE_27__* %313)
  br label %318

315:                                              ; preds = %282
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 2
  store i32 0, i32* %317, align 8
  br label %318

318:                                              ; preds = %315, %309
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 5
  store %struct.TYPE_29__* %319, %struct.TYPE_29__** %321, align 8
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_25__*, %struct.TYPE_25__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %349

328:                                              ; preds = %318
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i32 0, i32 3
  store i32 %333, i32* %335, align 4
  %336 = load i32, i32* @CacheMemoryContext, align 4
  %337 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  %341 = mul i64 %340, 4
  %342 = trunc i64 %341 to i32
  %343 = call i64 @MemoryContextAllocZero(i32 %336, i32 %342)
  %344 = inttoptr i64 %343 to i32*
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %345, i32 0, i32 4
  store i32* %344, i32** %346, align 8
  %347 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %348 = call i32 @CheckConstraintFetch(%struct.TYPE_27__* %347)
  br label %352

349:                                              ; preds = %318
  %350 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %350, i32 0, i32 3
  store i32 0, i32* %351, align 4
  br label %352

352:                                              ; preds = %349, %328
  br label %360

353:                                              ; preds = %275
  %354 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %355 = call i32 @pfree(%struct.TYPE_26__* %354)
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %357 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 1
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %359, align 8
  br label %360

360:                                              ; preds = %353, %352
  ret void
}

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_27__*) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local %struct.TYPE_27__* @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_27__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @RelationGetNumberOfAttributes(%struct.TYPE_27__*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_27__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_23__*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_23__* @TupleDescAttr(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @heap_getattr(i32, i32, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @array_get_element(i32, i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @AttrDefaultFetch(%struct.TYPE_27__*) #1

declare dso_local i32 @CheckConstraintFetch(%struct.TYPE_27__*) #1

declare dso_local i32 @pfree(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
