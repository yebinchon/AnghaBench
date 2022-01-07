; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecDropOf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecDropOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\22%s\22 is not a typed table\00", align 1
@TypeRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32)* @ATExecDropOf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATExecDropOf(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = call i32 @RelationGetRelid(%struct.TYPE_17__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @OidIsValid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = call i32 @RelationGetRelationName(%struct.TYPE_17__* %21)
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @ereport(i32 %18, i32 %23)
  br label %25

25:                                               ; preds = %17, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TypeRelationId, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %34 = call i32 @drop_parent_dependency(i32 %26, i32 %27, i32 %32, i32 %33)
  %35 = load i32, i32* @RelationRelationId, align 4
  %36 = load i32, i32* @RowExclusiveLock, align 4
  %37 = call %struct.TYPE_17__* @table_open(i32 %35, i32 %36)
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %6, align 8
  %38 = load i32, i32* @RELOID, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ObjectIdGetDatum(i32 %39)
  %41 = call %struct.TYPE_18__* @SearchSysCacheCopy1(i32 %38, i32 %40)
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %7, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = call i32 @HeapTupleIsValid(%struct.TYPE_18__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %25
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @elog(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %25
  %50 = load i32, i32* @InvalidOid, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = call i64 @GETSTRUCT(%struct.TYPE_18__* %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_19__*
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = call i32 @CatalogTupleUpdate(%struct.TYPE_17__* %55, i32* %57, %struct.TYPE_18__* %58)
  %60 = load i32, i32* @RelationRelationId, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @InvokeObjectPostAlterHook(i32 %60, i32 %61, i32 0)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = call i32 @heap_freetuple(%struct.TYPE_18__* %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = load i32, i32* @RowExclusiveLock, align 4
  %67 = call i32 @table_close(%struct.TYPE_17__* %65, i32 %66)
  ret void
}

declare dso_local i32 @RelationGetRelid(%struct.TYPE_17__*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_17__*) #1

declare dso_local i32 @drop_parent_dependency(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_17__* @table_open(i32, i32) #1

declare dso_local %struct.TYPE_18__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_18__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_18__*) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_17__*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_18__*) #1

declare dso_local i32 @table_close(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
