; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecSetTableSpaceNoStorage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecSetTableSpaceNoStorage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64 }

@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"only shared relations can be placed in pg_global tablespace\00", align 1
@MyDatabaseTableSpace = common dso_local global i64 0, align 8
@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i64)* @ATExecSetTableSpaceNoStorage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATExecSetTableSpaceNoStorage(%struct.TYPE_16__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = call i64 @RelationGetRelid(%struct.TYPE_16__* %10)
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @RELKIND_HAS_STORAGE(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @GLOBALTABLESPACE_OID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @MyDatabaseTableSpace, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %31
  %48 = load i32, i32* @RelationRelationId, align 4
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @InvokeObjectPostAlterHook(i32 %48, i64 %49, i32 0)
  br label %95

51:                                               ; preds = %44, %40
  %52 = load i32, i32* @RelationRelationId, align 4
  %53 = load i32, i32* @RowExclusiveLock, align 4
  %54 = call %struct.TYPE_16__* @table_open(i32 %52, i32 %53)
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %7, align 8
  %55 = load i32, i32* @RELOID, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @ObjectIdGetDatum(i64 %56)
  %58 = call %struct.TYPE_17__* @SearchSysCacheCopy1(i32 %55, i32 %57)
  store %struct.TYPE_17__* %58, %struct.TYPE_17__** %5, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = call i32 @HeapTupleIsValid(%struct.TYPE_17__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @elog(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %62, %51
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = call i64 @GETSTRUCT(%struct.TYPE_17__* %67)
  %69 = inttoptr i64 %68 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %8, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @MyDatabaseTableSpace, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i64, i64* @InvalidOid, align 8
  br label %77

75:                                               ; preds = %66
  %76 = load i64, i64* %4, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = call i32 @CatalogTupleUpdate(%struct.TYPE_16__* %81, i32* %83, %struct.TYPE_17__* %84)
  %86 = load i32, i32* @RelationRelationId, align 4
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @InvokeObjectPostAlterHook(i32 %86, i64 %87, i32 0)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = call i32 @heap_freetuple(%struct.TYPE_17__* %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = load i32, i32* @RowExclusiveLock, align 4
  %93 = call i32 @table_close(%struct.TYPE_16__* %91, i32 %92)
  %94 = call i32 (...) @CommandCounterIncrement()
  br label %95

95:                                               ; preds = %77, %47
  ret void
}

declare dso_local i64 @RelationGetRelid(%struct.TYPE_16__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RELKIND_HAS_STORAGE(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i64, i32) #1

declare dso_local %struct.TYPE_16__* @table_open(i32, i32) #1

declare dso_local %struct.TYPE_17__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_17__*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_17__*) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_16__*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_17__*) #1

declare dso_local i32 @table_close(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
