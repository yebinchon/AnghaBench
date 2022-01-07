; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_drop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__*, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32 }

@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"DROP INDEX\00", align 1
@InvalidTransactionId = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"DROP INDEX CONCURRENTLY must be first action in transaction\00", align 1
@INDEX_DROP_CLEAR_VALID = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@IndexRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@INDEXRELID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cache lookup failed for index %u\00", align 1
@Anum_pg_index_indexprs = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @index_drop(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__, align 4
  %14 = alloca %struct.TYPE_25__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @IndexGetRelation(i32 %17, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %3
  %25 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @AccessExclusiveLock, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call %struct.TYPE_24__* @table_open(i32 %30, i32 %31)
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %8, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call %struct.TYPE_24__* @index_open(i32 %33, i32 %34)
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %9, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %37 = call i32 @CheckTableNotInUse(%struct.TYPE_24__* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %102

40:                                               ; preds = %28
  %41 = call i64 (...) @GetTopTransactionIdIfAny()
  %42 = load i64, i64* @InvalidTransactionId, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %47 = call i32 @errcode(i32 %46)
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @ereport(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @INDEX_DROP_CLEAR_VALID, align 4
  %53 = call i32 @index_set_state_flags(i32 %51, i32 %52)
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %55 = call i32 @CacheInvalidateRelcache(%struct.TYPE_24__* %54)
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = bitcast %struct.TYPE_25__* %13 to i8*
  %60 = bitcast %struct.TYPE_25__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 8 %60, i64 8, i1 false)
  %61 = load i32, i32* %15, align 4
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SET_LOCKTAG_RELATION(i32 %61, i32 %63, i32 %65)
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = bitcast %struct.TYPE_25__* %14 to i8*
  %71 = bitcast %struct.TYPE_25__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 8 %71, i64 8, i1 false)
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %73 = load i32, i32* @NoLock, align 4
  %74 = call i32 @table_close(%struct.TYPE_24__* %72, i32 %73)
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %76 = load i32, i32* @NoLock, align 4
  %77 = call i32 @index_close(%struct.TYPE_24__* %75, i32 %76)
  %78 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  %79 = call i32 @LockRelationIdForSession(%struct.TYPE_25__* %13, i32 %78)
  %80 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  %81 = call i32 @LockRelationIdForSession(%struct.TYPE_25__* %14, i32 %80)
  %82 = call i32 (...) @PopActiveSnapshot()
  %83 = call i32 (...) @CommitTransactionCommand()
  %84 = call i32 (...) @StartTransactionCommand()
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @AccessExclusiveLock, align 4
  %87 = call i32 @WaitForLockers(i32 %85, i32 %86, i32 1)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @index_concurrently_set_dead(i32 %88, i32 %89)
  %91 = call i32 (...) @CommitTransactionCommand()
  %92 = call i32 (...) @StartTransactionCommand()
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @AccessExclusiveLock, align 4
  %95 = call i32 @WaitForLockers(i32 %93, i32 %94, i32 1)
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  %98 = call %struct.TYPE_24__* @table_open(i32 %96, i32 %97)
  store %struct.TYPE_24__* %98, %struct.TYPE_24__** %8, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @AccessExclusiveLock, align 4
  %101 = call %struct.TYPE_24__* @index_open(i32 %99, i32 %100)
  store %struct.TYPE_24__* %101, %struct.TYPE_24__** %9, align 8
  br label %105

102:                                              ; preds = %28
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %104 = call i32 @TransferPredicateLocksToHeapRelation(%struct.TYPE_24__* %103)
  br label %105

105:                                              ; preds = %102, %50
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %115 = call i32 @RelationDropStorage(%struct.TYPE_24__* %114)
  br label %116

116:                                              ; preds = %113, %105
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %118 = load i32, i32* @NoLock, align 4
  %119 = call i32 @index_close(%struct.TYPE_24__* %117, i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @RelationForgetRelation(i32 %120)
  %122 = load i32, i32* @IndexRelationId, align 4
  %123 = load i32, i32* @RowExclusiveLock, align 4
  %124 = call %struct.TYPE_24__* @table_open(i32 %122, i32 %123)
  store %struct.TYPE_24__* %124, %struct.TYPE_24__** %10, align 8
  %125 = load i32, i32* @INDEXRELID, align 4
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @ObjectIdGetDatum(i32 %126)
  %128 = call %struct.TYPE_26__* @SearchSysCache1(i32 %125, i32 %127)
  store %struct.TYPE_26__* %128, %struct.TYPE_26__** %11, align 8
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %130 = call i32 @HeapTupleIsValid(%struct.TYPE_26__* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %116
  %133 = load i32, i32* @ERROR, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @elog(i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %132, %116
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %138 = load i32, i32* @Anum_pg_index_indexprs, align 4
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %140 = call i32 @RelationGetDescr(%struct.TYPE_24__* %139)
  %141 = call i32 @heap_attisnull(%struct.TYPE_26__* %137, i32 %138, i32 %140)
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %12, align 4
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = call i32 @CatalogTupleDelete(%struct.TYPE_24__* %145, i32* %147)
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %150 = call i32 @ReleaseSysCache(%struct.TYPE_26__* %149)
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %152 = load i32, i32* @RowExclusiveLock, align 4
  %153 = call i32 @table_close(%struct.TYPE_24__* %151, i32 %152)
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %136
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @RemoveStatistics(i32 %157, i32 0)
  br label %159

159:                                              ; preds = %156, %136
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @DeleteAttributeTuples(i32 %160)
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @DeleteRelationTuple(i32 %162)
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @InvalidOid, align 4
  %166 = call i32 @DeleteInheritsTuple(i32 %164, i32 %165)
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %168 = call i32 @CacheInvalidateRelcache(%struct.TYPE_24__* %167)
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %170 = load i32, i32* @NoLock, align 4
  %171 = call i32 @table_close(%struct.TYPE_24__* %169, i32 %170)
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %159
  %175 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  %176 = call i32 @UnlockRelationIdForSession(%struct.TYPE_25__* %13, i32 %175)
  %177 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  %178 = call i32 @UnlockRelationIdForSession(%struct.TYPE_25__* %14, i32 %177)
  br label %179

179:                                              ; preds = %174, %159
  ret void
}

declare dso_local i32 @IndexGetRelation(i32, i32) #1

declare dso_local %struct.TYPE_24__* @table_open(i32, i32) #1

declare dso_local %struct.TYPE_24__* @index_open(i32, i32) #1

declare dso_local i32 @CheckTableNotInUse(%struct.TYPE_24__*, i8*) #1

declare dso_local i64 @GetTopTransactionIdIfAny(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @index_set_state_flags(i32, i32) #1

declare dso_local i32 @CacheInvalidateRelcache(%struct.TYPE_24__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SET_LOCKTAG_RELATION(i32, i32, i32) #1

declare dso_local i32 @table_close(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @index_close(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @LockRelationIdForSession(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @WaitForLockers(i32, i32, i32) #1

declare dso_local i32 @index_concurrently_set_dead(i32, i32) #1

declare dso_local i32 @TransferPredicateLocksToHeapRelation(%struct.TYPE_24__*) #1

declare dso_local i32 @RelationDropStorage(%struct.TYPE_24__*) #1

declare dso_local i32 @RelationForgetRelation(i32) #1

declare dso_local %struct.TYPE_26__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_26__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @heap_attisnull(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_24__*) #1

declare dso_local i32 @CatalogTupleDelete(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_26__*) #1

declare dso_local i32 @RemoveStatistics(i32, i32) #1

declare dso_local i32 @DeleteAttributeTuples(i32) #1

declare dso_local i32 @DeleteRelationTuple(i32) #1

declare dso_local i32 @DeleteInheritsTuple(i32, i32) #1

declare dso_local i32 @UnlockRelationIdForSession(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
