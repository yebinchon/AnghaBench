; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_heap_drop_with_catalog.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_heap_drop_with_catalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@InvalidOid = common dso_local global i64 0, align 8
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@AccessExclusiveLock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"DROP TABLE\00", align 1
@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8
@ForeignTableRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@FOREIGNTABLEREL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"cache lookup failed for foreign table %u\00", align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@RELKIND_VIEW = common dso_local global i64 0, align 8
@RELKIND_COMPOSITE_TYPE = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_drop_with_catalog(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* @InvalidOid, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* @InvalidOid, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* @RELOID, align 4
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @ObjectIdGetDatum(i64 %12)
  %14 = call %struct.TYPE_19__* @SearchSysCache1(i32 %11, i32 %13)
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %4, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = call i32 @HeapTupleIsValid(%struct.TYPE_19__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = call i64 @GETSTRUCT(%struct.TYPE_19__* %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_20__*
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load i64, i64* %2, align 8
  %31 = call i64 @get_partition_parent(i64 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @AccessExclusiveLock, align 4
  %34 = call i32 @LockRelationOid(i64 %32, i32 %33)
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @get_default_partition_oid(i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @OidIsValid(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %29
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @AccessExclusiveLock, align 4
  %47 = call i32 @LockRelationOid(i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %40, %29
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = call i32 @ReleaseSysCache(%struct.TYPE_19__* %50)
  %52 = load i64, i64* %2, align 8
  %53 = load i32, i32* @AccessExclusiveLock, align 4
  %54 = call %struct.TYPE_18__* @relation_open(i64 %52, i32 %53)
  store %struct.TYPE_18__* %54, %struct.TYPE_18__** %3, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = call i32 @CheckTableNotInUse(%struct.TYPE_18__* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = call i32 @CheckTableForSerializableConflictIn(%struct.TYPE_18__* %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %49
  %67 = load i32, i32* @ForeignTableRelationId, align 4
  %68 = load i32, i32* @RowExclusiveLock, align 4
  %69 = call %struct.TYPE_18__* @table_open(i32 %67, i32 %68)
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %7, align 8
  %70 = load i32, i32* @FOREIGNTABLEREL, align 4
  %71 = load i64, i64* %2, align 8
  %72 = call i32 @ObjectIdGetDatum(i64 %71)
  %73 = call %struct.TYPE_19__* @SearchSysCache1(i32 %70, i32 %72)
  store %struct.TYPE_19__* %73, %struct.TYPE_19__** %8, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %75 = call i32 @HeapTupleIsValid(%struct.TYPE_19__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i64, i64* %2, align 8
  %80 = call i32 @elog(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %77, %66
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = call i32 @CatalogTupleDelete(%struct.TYPE_18__* %82, i32* %84)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = call i32 @ReleaseSysCache(%struct.TYPE_19__* %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %89 = load i32, i32* @RowExclusiveLock, align 4
  %90 = call i32 @table_close(%struct.TYPE_18__* %88, i32 %89)
  br label %91

91:                                               ; preds = %81, %49
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i64, i64* %2, align 8
  %101 = call i32 @RemovePartitionKeyByRelId(i64 %100)
  br label %102

102:                                              ; preds = %99, %91
  %103 = load i64, i64* %2, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* @InvalidOid, align 8
  %109 = call i32 @update_default_partition_oid(i64 %107, i64 %108)
  br label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @RELKIND_VIEW, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %145

118:                                              ; preds = %110
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @RELKIND_COMPOSITE_TYPE, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %118
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %126
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %144 = call i32 @RelationDropStorage(%struct.TYPE_18__* %143)
  br label %145

145:                                              ; preds = %142, %134, %126, %118, %110
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = load i32, i32* @NoLock, align 4
  %148 = call i32 @relation_close(%struct.TYPE_18__* %146, i32 %147)
  %149 = load i64, i64* @InvalidOid, align 8
  %150 = load i64, i64* %2, align 8
  %151 = call i32 @RemoveSubscriptionRel(i64 %149, i64 %150)
  %152 = load i64, i64* %2, align 8
  %153 = call i32 @remove_on_commit_action(i64 %152)
  %154 = load i64, i64* %2, align 8
  %155 = call i32 @RelationForgetRelation(i64 %154)
  %156 = load i64, i64* %2, align 8
  %157 = call i32 @RelationRemoveInheritance(i64 %156)
  %158 = load i64, i64* %2, align 8
  %159 = call i32 @RemoveStatistics(i64 %158, i32 0)
  %160 = load i64, i64* %2, align 8
  %161 = call i32 @DeleteAttributeTuples(i64 %160)
  %162 = load i64, i64* %2, align 8
  %163 = call i32 @DeleteRelationTuple(i64 %162)
  %164 = load i64, i64* %5, align 8
  %165 = call i64 @OidIsValid(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %145
  %168 = load i64, i64* %6, align 8
  %169 = call i64 @OidIsValid(i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = load i64, i64* %2, align 8
  %173 = load i64, i64* %6, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i64, i64* %6, align 8
  %177 = call i32 @CacheInvalidateRelcacheByRelid(i64 %176)
  br label %178

178:                                              ; preds = %175, %171, %167
  %179 = load i64, i64* %5, align 8
  %180 = call i32 @CacheInvalidateRelcacheByRelid(i64 %179)
  br label %181

181:                                              ; preds = %178, %145
  ret void
}

declare dso_local %struct.TYPE_19__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_19__*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_19__*) #1

declare dso_local i64 @get_partition_parent(i64) #1

declare dso_local i32 @LockRelationOid(i64, i32) #1

declare dso_local i64 @get_default_partition_oid(i64) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @relation_open(i64, i32) #1

declare dso_local i32 @CheckTableNotInUse(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @CheckTableForSerializableConflictIn(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @table_open(i32, i32) #1

declare dso_local i32 @CatalogTupleDelete(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @table_close(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @RemovePartitionKeyByRelId(i64) #1

declare dso_local i32 @update_default_partition_oid(i64, i64) #1

declare dso_local i32 @RelationDropStorage(%struct.TYPE_18__*) #1

declare dso_local i32 @relation_close(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @RemoveSubscriptionRel(i64, i64) #1

declare dso_local i32 @remove_on_commit_action(i64) #1

declare dso_local i32 @RelationForgetRelation(i64) #1

declare dso_local i32 @RelationRemoveInheritance(i64) #1

declare dso_local i32 @RemoveStatistics(i64, i32) #1

declare dso_local i32 @DeleteAttributeTuples(i64) #1

declare dso_local i32 @DeleteRelationTuple(i64) #1

declare dso_local i32 @CacheInvalidateRelcacheByRelid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
