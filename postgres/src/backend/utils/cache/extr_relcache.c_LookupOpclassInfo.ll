; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_LookupOpclassInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_LookupOpclassInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64, i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32 }

@OpClassCache = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Operator class cache\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@criticalRelcachesBuilt = common dso_local global i64 0, align 8
@OID_BTREE_OPS_OID = common dso_local global i64 0, align 8
@INT2_BTREE_OPS_OID = common dso_local global i64 0, align 8
@Anum_pg_opclass_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@OperatorClassRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@OpclassOidIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not find tuple for opclass %u\00", align 1
@Anum_pg_amproc_amprocfamily = common dso_local global i32 0, align 4
@Anum_pg_amproc_amproclefttype = common dso_local global i32 0, align 4
@Anum_pg_amproc_amprocrighttype = common dso_local global i32 0, align 4
@AccessMethodProcedureRelationId = common dso_local global i32 0, align 4
@AccessMethodProcedureIndexId = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"invalid amproc number %d for opclass %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i64, i64)* @LookupOpclassInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @LookupOpclassInfo(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i32*, i32** @OpClassCache, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = call i32 @MemSet(%struct.TYPE_9__* %13, i32 0, i32 8)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 8, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i32 40, i32* %21, align 4
  %22 = load i32, i32* @HASH_ELEM, align 4
  %23 = load i32, i32* @HASH_BLOBS, align 4
  %24 = or i32 %22, %23
  %25 = call i32* @hash_create(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 64, %struct.TYPE_9__* %13, i32 %24)
  store i32* %25, i32** @OpClassCache, align 8
  %26 = load i32, i32* @CacheMemoryContext, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = call i32 (...) @CreateCacheMemoryContext()
  br label %30

30:                                               ; preds = %28, %18
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32*, i32** @OpClassCache, align 8
  %33 = bitcast i64* %4 to i8*
  %34 = load i32, i32* @HASH_ENTER, align 4
  %35 = call i64 @hash_search(i32* %32, i8* %33, i32 %34, i32* %7)
  %36 = inttoptr i64 %35 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load i32, i32* @CacheMemoryContext, align 4
  %49 = load i64, i64* %5, align 8
  %50 = mul i64 %49, 4
  %51 = call i64 @MemoryContextAllocZero(i32 %48, i64 %50)
  %52 = inttoptr i64 %51 to i32*
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  br label %58

55:                                               ; preds = %39
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %55, %47
  br label %67

59:                                               ; preds = %31
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @Assert(i32 %65)
  br label %67

67:                                               ; preds = %59, %58
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %3, align 8
  br label %224

74:                                               ; preds = %67
  %75 = load i64, i64* @criticalRelcachesBuilt, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @OID_BTREE_OPS_OID, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @INT2_BTREE_OPS_OID, align 8
  %84 = icmp ne i64 %82, %83
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i1 [ false, %77 ], [ %84, %81 ]
  br label %87

87:                                               ; preds = %85, %74
  %88 = phi i1 [ true, %74 ], [ %86, %85 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %12, align 4
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %91 = load i32, i32* @Anum_pg_opclass_oid, align 4
  %92 = load i32, i32* @BTEqualStrategyNumber, align 4
  %93 = load i32, i32* @F_OIDEQ, align 4
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @ObjectIdGetDatum(i64 %94)
  %96 = call i32 @ScanKeyInit(i32* %90, i32 %91, i32 %92, i32 %93, i32 %95)
  %97 = load i32, i32* @OperatorClassRelationId, align 4
  %98 = load i32, i32* @AccessShareLock, align 4
  %99 = call i32 @table_open(i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @OpclassOidIndexId, align 4
  %102 = load i32, i32* %12, align 4
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %104 = call i32 @systable_beginscan(i32 %100, i32 %101, i32 %102, i32* null, i32 1, i32* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @systable_getnext(i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = call i64 @HeapTupleIsValid(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %87
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @GETSTRUCT(i32 %110)
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %113, %struct.TYPE_10__** %14, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  store i64 %121, i64* %123, align 8
  br label %129

124:                                              ; preds = %87
  %125 = load i32, i32* @ERROR, align 4
  %126 = load i64, i64* %4, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 (i32, i8*, i32, ...) @elog(i32 %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %124, %109
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @systable_endscan(i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @AccessShareLock, align 4
  %134 = call i32 @table_close(i32 %132, i32 %133)
  %135 = load i64, i64* %5, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %220

137:                                              ; preds = %129
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %139 = load i32, i32* @Anum_pg_amproc_amprocfamily, align 4
  %140 = load i32, i32* @BTEqualStrategyNumber, align 4
  %141 = load i32, i32* @F_OIDEQ, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @ObjectIdGetDatum(i64 %144)
  %146 = call i32 @ScanKeyInit(i32* %138, i32 %139, i32 %140, i32 %141, i32 %145)
  %147 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %148 = load i32, i32* @Anum_pg_amproc_amproclefttype, align 4
  %149 = load i32, i32* @BTEqualStrategyNumber, align 4
  %150 = load i32, i32* @F_OIDEQ, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @ObjectIdGetDatum(i64 %153)
  %155 = call i32 @ScanKeyInit(i32* %147, i32 %148, i32 %149, i32 %150, i32 %154)
  %156 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %157 = load i32, i32* @Anum_pg_amproc_amprocrighttype, align 4
  %158 = load i32, i32* @BTEqualStrategyNumber, align 4
  %159 = load i32, i32* @F_OIDEQ, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @ObjectIdGetDatum(i64 %162)
  %164 = call i32 @ScanKeyInit(i32* %156, i32 %157, i32 %158, i32 %159, i32 %163)
  %165 = load i32, i32* @AccessMethodProcedureRelationId, align 4
  %166 = load i32, i32* @AccessShareLock, align 4
  %167 = call i32 @table_open(i32 %165, i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @AccessMethodProcedureIndexId, align 4
  %170 = load i32, i32* %12, align 4
  %171 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %172 = call i32 @systable_beginscan(i32 %168, i32 %169, i32 %170, i32* null, i32 3, i32* %171)
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %201, %137
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @systable_getnext(i32 %174)
  store i32 %175, i32* %11, align 4
  %176 = call i64 @HeapTupleIsValid(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %214

178:                                              ; preds = %173
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @GETSTRUCT(i32 %179)
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %182, %struct.TYPE_11__** %15, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp sle i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %178
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* %5, align 8
  %193 = icmp sgt i64 %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %187, %178
  %195 = load i32, i32* @ERROR, align 4
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i64, i64* %4, align 8
  %200 = call i32 (i32, i8*, i32, ...) @elog(i32 %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %198, i64 %199)
  br label %201

201:                                              ; preds = %194, %187
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %207, i64 %212
  store i32 %204, i32* %213, align 4
  br label %173

214:                                              ; preds = %173
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @systable_endscan(i32 %215)
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @AccessShareLock, align 4
  %219 = call i32 @table_close(i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %214, %129
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  store i32 1, i32* %222, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %223, %struct.TYPE_8__** %3, align 8
  br label %224

224:                                              ; preds = %220, %72
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %225
}

declare dso_local i32 @MemSet(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @CreateCacheMemoryContext(...) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
