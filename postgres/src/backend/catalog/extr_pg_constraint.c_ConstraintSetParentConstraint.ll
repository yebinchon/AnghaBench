; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_ConstraintSetParentConstraint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_ConstraintSetParentConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@ConstraintRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@CONSTROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cache lookup failed for constraint %u\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"constraint %u already has a parent constraint\00", align 1
@DEPENDENCY_PARTITION_PRI = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_PARTITION_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConstraintSetParentConstraint(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @ConstraintRelationId, align 4
  %14 = load i32, i32* @RowExclusiveLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @CONSTROID, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @ObjectIdGetDatum(i64 %17)
  %19 = call %struct.TYPE_10__* @SearchSysCache1(i32 %16, i32 %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = call i32 @HeapTupleIsValid(%struct.TYPE_10__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = call %struct.TYPE_10__* @heap_copytuple(%struct.TYPE_10__* %28)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %10, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = call i64 @GETSTRUCT(%struct.TYPE_10__* %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %8, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @OidIsValid(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %83

36:                                               ; preds = %27
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @InvalidOid, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %48, %36
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = call i32 @CatalogTupleUpdate(i32 %62, i32* %64, %struct.TYPE_10__* %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @ConstraintRelationId, align 4
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @ObjectAddressSet(i32 %67, i32 %68, i64 %69)
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @ConstraintRelationId, align 4
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @ObjectAddressSet(i32 %71, i32 %72, i64 %73)
  %75 = load i32, i32* @DEPENDENCY_PARTITION_PRI, align 4
  %76 = call i32 @recordDependencyOn(i32* %11, i32* %12, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @RelationRelationId, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @ObjectAddressSet(i32 %77, i32 %78, i64 %79)
  %81 = load i32, i32* @DEPENDENCY_PARTITION_SEC, align 4
  %82 = call i32 @recordDependencyOn(i32* %11, i32* %12, i32 %81)
  br label %114

83:                                               ; preds = %27
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  %90 = load i64, i64* @InvalidOid, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @Assert(i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = call i32 @CatalogTupleUpdate(i32 %99, i32* %101, %struct.TYPE_10__* %102)
  %104 = load i32, i32* @ConstraintRelationId, align 4
  %105 = load i64, i64* %4, align 8
  %106 = load i32, i32* @ConstraintRelationId, align 4
  %107 = load i32, i32* @DEPENDENCY_PARTITION_PRI, align 4
  %108 = call i32 @deleteDependencyRecordsForClass(i32 %104, i64 %105, i32 %106, i32 %107)
  %109 = load i32, i32* @ConstraintRelationId, align 4
  %110 = load i64, i64* %4, align 8
  %111 = load i32, i32* @RelationRelationId, align 4
  %112 = load i32, i32* @DEPENDENCY_PARTITION_SEC, align 4
  %113 = call i32 @deleteDependencyRecordsForClass(i32 %109, i64 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %83, %52
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = call i32 @ReleaseSysCache(%struct.TYPE_10__* %115)
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @RowExclusiveLock, align 4
  %119 = call i32 @table_close(i32 %117, i32 %118)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_10__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_10__*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local %struct.TYPE_10__* @heap_copytuple(%struct.TYPE_10__*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_10__*) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i64) #1

declare dso_local i32 @recordDependencyOn(i32*, i32*, i32) #1

declare dso_local i32 @deleteDependencyRecordsForClass(i32, i64, i32, i32) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_10__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
