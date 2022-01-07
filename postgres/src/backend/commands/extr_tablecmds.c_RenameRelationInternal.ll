; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_RenameRelationInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_RenameRelationInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@ERRCODE_DUPLICATE_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"relation \22%s\22 already exists\00", align 1
@RELKIND_INDEX = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RenameRelationInternal(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @AccessExclusiveLock, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call %struct.TYPE_17__* @relation_open(i32 %15, i32 %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %9, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = call i32 @RelationGetNamespace(%struct.TYPE_17__* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @RelationRelationId, align 4
  %28 = load i32, i32* @RowExclusiveLock, align 4
  %29 = call %struct.TYPE_17__* @table_open(i32 %27, i32 %28)
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %10, align 8
  %30 = load i32, i32* @RELOID, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ObjectIdGetDatum(i32 %31)
  %33 = call %struct.TYPE_18__* @SearchSysCacheCopy1(i32 %30, i32 %32)
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %11, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %35 = call i32 @HeapTupleIsValid(%struct.TYPE_18__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %22
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %22
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %43 = call i64 @GETSTRUCT(%struct.TYPE_18__* %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %12, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i64 @get_relname_relid(i8* %45, i32 %46)
  %48 = load i64, i64* @InvalidOid, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i32, i32* @ERRCODE_DUPLICATE_TABLE, align 4
  %53 = call i32 @errcode(i32 %52)
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = call i32 @ereport(i32 %51, i32 %55)
  br label %57

57:                                               ; preds = %50, %41
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @namestrcpy(i32* %59, i8* %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %66 = call i32 @CatalogTupleUpdate(%struct.TYPE_17__* %62, i32* %64, %struct.TYPE_18__* %65)
  %67 = load i32, i32* @RelationRelationId, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i64, i64* @InvalidOid, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @InvokeObjectPostAlterHookArg(i32 %67, i32 %68, i32 0, i64 %69, i32 %70)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %73 = call i32 @heap_freetuple(%struct.TYPE_18__* %72)
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %75 = load i32, i32* @RowExclusiveLock, align 4
  %76 = call i32 @table_close(%struct.TYPE_17__* %74, i32 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @OidIsValid(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %57
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @RenameTypeInternal(i32 %89, i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %57
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RELKIND_INDEX, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %93
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %101, %93
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @get_index_constraint(i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i64 @OidIsValid(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* %14, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @RenameConstraintById(i32 %116, i8* %117)
  br label %119

119:                                              ; preds = %115, %109
  br label %120

120:                                              ; preds = %119, %101
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %122 = load i32, i32* @NoLock, align 4
  %123 = call i32 @relation_close(%struct.TYPE_17__* %121, i32 %122)
  ret void
}

declare dso_local %struct.TYPE_17__* @relation_open(i32, i32) #1

declare dso_local i32 @RelationGetNamespace(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @table_open(i32, i32) #1

declare dso_local %struct.TYPE_18__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_18__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_18__*) #1

declare dso_local i64 @get_relname_relid(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_17__*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @InvokeObjectPostAlterHookArg(i32, i32, i32, i64, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_18__*) #1

declare dso_local i32 @table_close(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @RenameTypeInternal(i32, i8*, i32) #1

declare dso_local i32 @get_index_constraint(i32) #1

declare dso_local i32 @RenameConstraintById(i32, i8*) #1

declare dso_local i32 @relation_close(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
