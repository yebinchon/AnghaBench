; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_finish_heap_swap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_finish_heap_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }

@PROGRESS_CLUSTER_PHASE = common dso_local global i32 0, align 4
@PROGRESS_CLUSTER_PHASE_SWAP_REL_FILES = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i64 0, align 8
@REINDEX_REL_SUPPRESS_INDEX_USE = common dso_local global i32 0, align 4
@REINDEX_REL_CHECK_CONSTRAINTS = common dso_local global i32 0, align 4
@RELPERSISTENCE_UNLOGGED = common dso_local global i8 0, align 1
@REINDEX_REL_FORCE_INDEXES_UNLOGGED = common dso_local global i32 0, align 4
@RELPERSISTENCE_PERMANENT = common dso_local global i8 0, align 1
@REINDEX_REL_FORCE_INDEXES_PERMANENT = common dso_local global i32 0, align 4
@PROGRESS_CLUSTER_PHASE_REBUILD_INDEX = common dso_local global i32 0, align 4
@PROGRESS_CLUSTER_PHASE_FINAL_CLEANUP = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@DROP_RESTRICT = common dso_local global i32 0, align 4
@PERFORM_DELETION_INTERNAL = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"pg_toast_%u\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"pg_toast_%u_index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish_heap_swap(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8 signext %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %struct.TYPE_18__, align 8
  %20 = alloca [4 x i64], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca %struct.TYPE_19__*, align 8
  %25 = alloca %struct.TYPE_20__*, align 8
  %26 = alloca %struct.TYPE_17__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_17__*, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8 %8, i8* %18, align 1
  %31 = load i32, i32* @PROGRESS_CLUSTER_PHASE, align 4
  %32 = load i32, i32* @PROGRESS_CLUSTER_PHASE_SWAP_REL_FILES, align 4
  %33 = call i32 @pgstat_progress_update_param(i32 %31, i32 %32)
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %35 = call i32 @memset(i64* %34, i32 0, i32 32)
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @RelationRelationId, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %47 = call i32 @swap_relation_files(i64 %36, i64 %37, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i64* %46)
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %9
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @CacheInvalidateCatalog(i64 %51)
  br label %53

53:                                               ; preds = %50, %9
  %54 = load i32, i32* @REINDEX_REL_SUPPRESS_INDEX_USE, align 4
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @REINDEX_REL_CHECK_CONSTRAINTS, align 4
  %59 = load i32, i32* %21, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %21, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i8, i8* %18, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @RELPERSISTENCE_UNLOGGED, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @REINDEX_REL_FORCE_INDEXES_UNLOGGED, align 4
  %69 = load i32, i32* %21, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %21, align 4
  br label %82

71:                                               ; preds = %61
  %72 = load i8, i8* %18, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* @RELPERSISTENCE_PERMANENT, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @REINDEX_REL_FORCE_INDEXES_PERMANENT, align 4
  %79 = load i32, i32* %21, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %21, align 4
  br label %81

81:                                               ; preds = %77, %71
  br label %82

82:                                               ; preds = %81, %67
  %83 = load i32, i32* @PROGRESS_CLUSTER_PHASE, align 4
  %84 = load i32, i32* @PROGRESS_CLUSTER_PHASE_REBUILD_INDEX, align 4
  %85 = call i32 @pgstat_progress_update_param(i32 %83, i32 %84)
  %86 = load i64, i64* %10, align 8
  %87 = load i32, i32* %21, align 4
  %88 = call i32 @reindex_relation(i64 %86, i32 %87, i32 0)
  %89 = load i32, i32* @PROGRESS_CLUSTER_PHASE, align 4
  %90 = load i32, i32* @PROGRESS_CLUSTER_PHASE_FINAL_CLEANUP, align 4
  %91 = call i32 @pgstat_progress_update_param(i32 %89, i32 %90)
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @RelationRelationId, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %128

95:                                               ; preds = %82
  %96 = load i64, i64* @RelationRelationId, align 8
  %97 = load i32, i32* @RowExclusiveLock, align 4
  %98 = call %struct.TYPE_17__* @table_open(i64 %96, i32 %97)
  store %struct.TYPE_17__* %98, %struct.TYPE_17__** %23, align 8
  %99 = load i32, i32* @RELOID, align 4
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @ObjectIdGetDatum(i64 %100)
  %102 = call %struct.TYPE_19__* @SearchSysCacheCopy1(i32 %99, i32 %101)
  store %struct.TYPE_19__* %102, %struct.TYPE_19__** %24, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %104 = call i32 @HeapTupleIsValid(%struct.TYPE_19__* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %95
  %107 = load i32, i32* @ERROR, align 4
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @elog(i32 %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %108)
  br label %110

110:                                              ; preds = %106, %95
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %112 = call i64 @GETSTRUCT(%struct.TYPE_19__* %111)
  %113 = inttoptr i64 %112 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %113, %struct.TYPE_20__** %25, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %124 = call i32 @CatalogTupleUpdate(%struct.TYPE_17__* %120, i32* %122, %struct.TYPE_19__* %123)
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %126 = load i32, i32* @RowExclusiveLock, align 4
  %127 = call i32 @table_close(%struct.TYPE_17__* %125, i32 %126)
  br label %128

128:                                              ; preds = %110, %82
  %129 = load i64, i64* @RelationRelationId, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  store i64 %129, i64* %130, align 8
  %131 = load i64, i64* %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  store i64 %131, i64* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load i32, i32* @DROP_RESTRICT, align 4
  %135 = load i32, i32* @PERFORM_DELETION_INTERNAL, align 4
  %136 = call i32 @performDeletion(%struct.TYPE_18__* %19, i32 %134, i32 %135)
  store i32 0, i32* %22, align 4
  br label %137

137:                                              ; preds = %150, %128
  %138 = load i32, i32* %22, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @OidIsValid(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %137
  %145 = load i32, i32* %22, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @RelationMapRemoveMapping(i64 %148)
  br label %150

150:                                              ; preds = %144
  %151 = load i32, i32* %22, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %22, align 4
  br label %137

153:                                              ; preds = %137
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %198, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* %10, align 8
  %158 = load i32, i32* @NoLock, align 4
  %159 = call %struct.TYPE_17__* @table_open(i64 %157, i32 %158)
  store %struct.TYPE_17__* %159, %struct.TYPE_17__** %26, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @OidIsValid(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %194

167:                                              ; preds = %156
  %168 = load i32, i32* @NAMEDATALEN, align 4
  %169 = zext i32 %168 to i64
  %170 = call i8* @llvm.stacksave()
  store i8* %170, i8** %28, align 8
  %171 = alloca i8, i64 %169, align 16
  store i64 %169, i64* %29, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* @AccessShareLock, align 4
  %178 = call i64 @toast_get_valid_index(i64 %176, i32 %177)
  store i64 %178, i64* %27, align 8
  %179 = load i32, i32* @NAMEDATALEN, align 4
  %180 = load i64, i64* %10, align 8
  %181 = call i32 @snprintf(i8* %171, i32 %179, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %180)
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @RenameRelationInternal(i64 %186, i8* %171, i32 1, i32 0)
  %188 = load i32, i32* @NAMEDATALEN, align 4
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @snprintf(i8* %171, i32 %188, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %189)
  %191 = load i64, i64* %27, align 8
  %192 = call i32 @RenameRelationInternal(i64 %191, i8* %171, i32 1, i32 1)
  %193 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %193)
  br label %194

194:                                              ; preds = %167, %156
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %196 = load i32, i32* @NoLock, align 4
  %197 = call i32 @relation_close(%struct.TYPE_17__* %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %153
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %210, label %201

201:                                              ; preds = %198
  %202 = load i64, i64* %10, align 8
  %203 = load i32, i32* @NoLock, align 4
  %204 = call %struct.TYPE_17__* @table_open(i64 %202, i32 %203)
  store %struct.TYPE_17__* %204, %struct.TYPE_17__** %30, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %206 = call i32 @RelationClearMissing(%struct.TYPE_17__* %205)
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %208 = load i32, i32* @NoLock, align 4
  %209 = call i32 @relation_close(%struct.TYPE_17__* %207, i32 %208)
  br label %210

210:                                              ; preds = %201, %198
  ret void
}

declare dso_local i32 @pgstat_progress_update_param(i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @swap_relation_files(i64, i64, i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @CacheInvalidateCatalog(i64) #1

declare dso_local i32 @reindex_relation(i64, i32, i32) #1

declare dso_local %struct.TYPE_17__* @table_open(i64, i32) #1

declare dso_local %struct.TYPE_19__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_19__*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_19__*) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_17__*, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @table_close(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @performDeletion(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @RelationMapRemoveMapping(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @toast_get_valid_index(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @RenameRelationInternal(i64, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @relation_close(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @RelationClearMissing(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
