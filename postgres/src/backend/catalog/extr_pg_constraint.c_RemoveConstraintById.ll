; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_RemoveConstraintById.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_RemoveConstraintById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@ConstraintRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@CONSTROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cache lookup failed for constraint %u\00", align 1
@AccessExclusiveLock = common dso_local global i32 0, align 4
@CONSTRAINT_CHECK = common dso_local global i64 0, align 8
@RelationRelationId = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"relation \22%s\22 has relchecks = 0\00", align 1
@NoLock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"constraint %u is not of a known type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveConstraintById(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @ConstraintRelationId, align 4
  %11 = load i32, i32* @RowExclusiveLock, align 4
  %12 = call i32 @table_open(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @CONSTROID, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = call %struct.TYPE_11__* @SearchSysCache1(i32 %13, i32 %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %4, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call i32 @HeapTupleIsValid(%struct.TYPE_11__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = call i64 @GETSTRUCT(%struct.TYPE_11__* %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %5, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @OidIsValid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %24
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AccessExclusiveLock, align 4
  %38 = call i32 @table_open(i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CONSTRAINT_CHECK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %91

44:                                               ; preds = %33
  %45 = load i32, i32* @RelationRelationId, align 4
  %46 = load i32, i32* @RowExclusiveLock, align 4
  %47 = call i32 @table_open(i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @RELOID, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ObjectIdGetDatum(i32 %51)
  %53 = call %struct.TYPE_11__* @SearchSysCacheCopy1(i32 %48, i32 %52)
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %8, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = call i32 @HeapTupleIsValid(%struct.TYPE_11__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @ERROR, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @elog(i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %44
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = call i64 @GETSTRUCT(%struct.TYPE_11__* %64)
  %66 = inttoptr i64 %65 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %9, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @RelationGetRelationName(i32 %73)
  %75 = call i32 @elog(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %71, %63
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %78, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = call i32 @CatalogTupleUpdate(i32 %81, i32* %83, %struct.TYPE_11__* %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = call i32 @heap_freetuple(%struct.TYPE_11__* %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @RowExclusiveLock, align 4
  %90 = call i32 @table_close(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %76, %33
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @NoLock, align 4
  %94 = call i32 @table_close(i32 %92, i32 %93)
  br label %107

95:                                               ; preds = %24
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @OidIsValid(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @ERROR, align 4
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @elog(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %101
  br label %107

107:                                              ; preds = %106, %91
  %108 = load i32, i32* %3, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = call i32 @CatalogTupleDelete(i32 %108, i32* %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = call i32 @ReleaseSysCache(%struct.TYPE_11__* %112)
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @RowExclusiveLock, align 4
  %116 = call i32 @table_close(i32 %114, i32 %115)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_11__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_11__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_11__*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local %struct.TYPE_11__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_11__*) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
