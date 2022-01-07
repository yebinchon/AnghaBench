; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_changeDependenciesOn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_changeDependenciesOn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i64, i8* }
%struct.TYPE_15__ = type { i8* }

@DependRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"cannot remove dependency on %s because it is a system object\00", align 1
@Anum_pg_depend_refclassid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_depend_refobjid = common dso_local global i32 0, align 4
@DependReferenceIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @changeDependenciesOn(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load i32, i32* @DependRelationId, align 4
  %16 = load i32, i32* @RowExclusiveLock, align 4
  %17 = call i32 @table_open(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @isObjectPinned(%struct.TYPE_13__* %12, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 @getObjectDescription(%struct.TYPE_13__* %12)
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @ereport(i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %26, %3
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @isObjectPinned(%struct.TYPE_13__* %12, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %39 = load i32, i32* @Anum_pg_depend_refclassid, align 4
  %40 = load i32, i32* @BTEqualStrategyNumber, align 4
  %41 = load i32, i32* @F_OIDEQ, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @ObjectIdGetDatum(i8* %42)
  %44 = call i32 @ScanKeyInit(i32* %38, i32 %39, i32 %40, i32 %41, i32 %43)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %46 = load i32, i32* @Anum_pg_depend_refobjid, align 4
  %47 = load i32, i32* @BTEqualStrategyNumber, align 4
  %48 = load i32, i32* @F_OIDEQ, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @ObjectIdGetDatum(i8* %49)
  %51 = call i32 @ScanKeyInit(i32* %45, i32 %46, i32 %47, i32 %48, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @DependReferenceIndexId, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %55 = call i32 @systable_beginscan(i32 %52, i32 %53, i32 1, i32* null, i32 2, i32* %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %88, %33
  %57 = load i32, i32* %10, align 4
  %58 = call %struct.TYPE_14__* @systable_getnext(i32 %57)
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %11, align 8
  %59 = call i64 @HeapTupleIsValid(%struct.TYPE_14__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = call i64 @GETSTRUCT(%struct.TYPE_14__* %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %14, align 8
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = call i32 @CatalogTupleDelete(i32 %68, i32* %70)
  br label %88

72:                                               ; preds = %61
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = call %struct.TYPE_14__* @heap_copytuple(%struct.TYPE_14__* %73)
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %11, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %76 = call i64 @GETSTRUCT(%struct.TYPE_14__* %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %14, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %85 = call i32 @CatalogTupleUpdate(i32 %81, i32* %83, %struct.TYPE_14__* %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %87 = call i32 @heap_freetuple(%struct.TYPE_14__* %86)
  br label %88

88:                                               ; preds = %72, %67
  %89 = load i64, i64* %7, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %56

91:                                               ; preds = %56
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @systable_endscan(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @RowExclusiveLock, align 4
  %96 = call i32 @table_close(i32 %94, i32 %95)
  %97 = load i64, i64* %7, align 8
  ret i64 %97
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @isObjectPinned(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @getObjectDescription(%struct.TYPE_13__*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_14__*) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local %struct.TYPE_14__* @heap_copytuple(%struct.TYPE_14__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_14__*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
