; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_validatePartitionedIndex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_validatePartitionedIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@InheritsRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhparent = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InheritsParentIndexId = common dso_local global i32 0, align 4
@INDEXRELID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cache lookup failed for index %u\00", align 1
@IndexRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_22__*)* @validatePartitionedIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validatePartitionedIndex(%struct.TYPE_22__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32, i32* @InheritsRelationId, align 4
  %30 = load i32, i32* @AccessShareLock, align 4
  %31 = call %struct.TYPE_22__* @table_open(i32 %29, i32 %30)
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %5, align 8
  %32 = load i32, i32* @Anum_pg_inherits_inhparent, align 4
  %33 = load i32, i32* @BTEqualStrategyNumber, align 4
  %34 = load i32, i32* @F_OIDEQ, align 4
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %36 = call i32 @RelationGetRelid(%struct.TYPE_22__* %35)
  %37 = call i32 @ObjectIdGetDatum(i32 %36)
  %38 = call i32 @ScanKeyInit(i32* %7, i32 %32, i32 %33, i32 %34, i32 %37)
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = load i32, i32* @InheritsParentIndexId, align 4
  %41 = call i32 @systable_beginscan(%struct.TYPE_22__* %39, i32 %40, i32 1, i32* null, i32 1, i32* %7)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %76, %2
  %43 = load i32, i32* %6, align 4
  %44 = call i32* @systable_getnext(i32 %43)
  store i32* %44, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @GETSTRUCT(i32* %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %11, align 8
  %50 = load i32, i32* @INDEXRELID, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ObjectIdGetDatum(i32 %53)
  %55 = call i32* @SearchSysCache1(i32 %50, i32 %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @HeapTupleIsValid(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* @ERROR, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @elog(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %46
  %66 = load i32*, i32** %12, align 8
  %67 = call i64 @GETSTRUCT(i32* %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %68, %struct.TYPE_24__** %13, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @ReleaseSysCache(i32* %77)
  br label %42

79:                                               ; preds = %42
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @systable_endscan(i32 %80)
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %83 = load i32, i32* @AccessShareLock, align 4
  %84 = call i32 @table_close(%struct.TYPE_22__* %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %87 = call %struct.TYPE_19__* @RelationGetPartitionDesc(%struct.TYPE_22__* %86)
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %85, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %79
  %92 = load i32, i32* @IndexRelationId, align 4
  %93 = load i32, i32* @RowExclusiveLock, align 4
  %94 = call %struct.TYPE_22__* @table_open(i32 %92, i32 %93)
  store %struct.TYPE_22__* %94, %struct.TYPE_22__** %14, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = call i32* @heap_copytuple(%struct.TYPE_18__* %97)
  store i32* %98, i32** %15, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i64 @GETSTRUCT(i32* %99)
  %101 = inttoptr i64 %100 to %struct.TYPE_24__*
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  store i32 1, i32* %10, align 4
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @CatalogTupleUpdate(%struct.TYPE_22__* %103, i32* %107, i32* %108)
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %111 = load i32, i32* @RowExclusiveLock, align 4
  %112 = call i32 @table_close(%struct.TYPE_22__* %110, i32 %111)
  br label %113

113:                                              ; preds = %91, %79
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %113
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %154

123:                                              ; preds = %116
  %124 = call i32 (...) @CommandCounterIncrement()
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %126 = call i32 @RelationGetRelid(%struct.TYPE_22__* %125)
  %127 = call i32 @get_partition_parent(i32 %126)
  store i32 %127, i32* %16, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %129 = call i32 @RelationGetRelid(%struct.TYPE_22__* %128)
  %130 = call i32 @get_partition_parent(i32 %129)
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @AccessExclusiveLock, align 4
  %133 = call %struct.TYPE_22__* @relation_open(i32 %131, i32 %132)
  store %struct.TYPE_22__* %133, %struct.TYPE_22__** %18, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @AccessExclusiveLock, align 4
  %136 = call %struct.TYPE_22__* @relation_open(i32 %134, i32 %135)
  store %struct.TYPE_22__* %136, %struct.TYPE_22__** %19, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i32 @Assert(i32 %144)
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  call void @validatePartitionedIndex(%struct.TYPE_22__* %146, %struct.TYPE_22__* %147)
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %149 = load i32, i32* @AccessExclusiveLock, align 4
  %150 = call i32 @relation_close(%struct.TYPE_22__* %148, i32 %149)
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %152 = load i32, i32* @AccessExclusiveLock, align 4
  %153 = call i32 @relation_close(%struct.TYPE_22__* %151, i32 %152)
  br label %154

154:                                              ; preds = %123, %116, %113
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_22__* @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_22__*) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_22__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_19__* @RelationGetPartitionDesc(%struct.TYPE_22__*) #1

declare dso_local i32* @heap_copytuple(%struct.TYPE_18__*) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @get_partition_parent(i32) #1

declare dso_local %struct.TYPE_22__* @relation_open(i32, i32) #1

declare dso_local i32 @relation_close(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
