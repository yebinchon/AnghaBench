; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_changeDependencyFor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_changeDependencyFor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i64 }

@DependRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@Anum_pg_depend_classid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_depend_objid = common dso_local global i32 0, align 4
@DependDependerIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @changeDependencyFor(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_14__, align 8
  %18 = alloca %struct.TYPE_14__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_16__*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %22 = load i32, i32* @DependRelationId, align 4
  %23 = load i32, i32* @RowExclusiveLock, align 4
  %24 = call i32 @table_open(i32 %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @isObjectPinned(%struct.TYPE_14__* %17, i32 %30)
  store i32 %31, i32* %19, align 4
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @isObjectPinned(%struct.TYPE_14__* %17, i32 %34)
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %5
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @RowExclusiveLock, align 4
  %41 = call i32 @table_close(i32 %39, i32 %40)
  %42 = load i32, i32* %20, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i64 1, i64* %6, align 8
  br label %127

45:                                               ; preds = %38
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  store i64 %46, i64* %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %52 = call i32 @recordDependencyOn(%struct.TYPE_14__* %18, %struct.TYPE_14__* %17, i32 %51)
  store i64 1, i64* %6, align 8
  br label %127

53:                                               ; preds = %5
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %55 = load i32, i32* @Anum_pg_depend_classid, align 4
  %56 = load i32, i32* @BTEqualStrategyNumber, align 4
  %57 = load i32, i32* @F_OIDEQ, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @ObjectIdGetDatum(i64 %58)
  %60 = call i32 @ScanKeyInit(i32* %54, i32 %55, i32 %56, i32 %57, i32 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %62 = load i32, i32* @Anum_pg_depend_objid, align 4
  %63 = load i32, i32* @BTEqualStrategyNumber, align 4
  %64 = load i32, i32* @F_OIDEQ, align 4
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @ObjectIdGetDatum(i64 %65)
  %67 = call i32 @ScanKeyInit(i32* %61, i32 %62, i32 %63, i32 %64, i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @DependDependerIndexId, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %71 = call i32 @systable_beginscan(i32 %68, i32 %69, i32 1, i32* null, i32 2, i32* %70)
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %119, %53
  %73 = load i32, i32* %15, align 4
  %74 = call %struct.TYPE_15__* @systable_getnext(i32 %73)
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %16, align 8
  %75 = call i64 @HeapTupleIsValid(%struct.TYPE_15__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %120

77:                                               ; preds = %72
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %79 = call i64 @GETSTRUCT(%struct.TYPE_15__* %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %21, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %77
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %86
  %93 = load i32, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = call i32 @CatalogTupleDelete(i32 %96, i32* %98)
  br label %116

100:                                              ; preds = %92
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %102 = call %struct.TYPE_15__* @heap_copytuple(%struct.TYPE_15__* %101)
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %16, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %104 = call i64 @GETSTRUCT(%struct.TYPE_15__* %103)
  %105 = inttoptr i64 %104 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %105, %struct.TYPE_16__** %21, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %113 = call i32 @CatalogTupleUpdate(i32 %109, i32* %111, %struct.TYPE_15__* %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %115 = call i32 @heap_freetuple(%struct.TYPE_15__* %114)
  br label %116

116:                                              ; preds = %100, %95
  %117 = load i64, i64* %12, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %12, align 8
  br label %119

119:                                              ; preds = %116, %86, %77
  br label %72

120:                                              ; preds = %72
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @systable_endscan(i32 %121)
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @RowExclusiveLock, align 4
  %125 = call i32 @table_close(i32 %123, i32 %124)
  %126 = load i64, i64* %12, align 8
  store i64 %126, i64* %6, align 8
  br label %127

127:                                              ; preds = %120, %45, %44
  %128 = load i64, i64* %6, align 8
  ret i64 %128
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @isObjectPinned(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @recordDependencyOn(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_15__*) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local %struct.TYPE_15__* @heap_copytuple(%struct.TYPE_15__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_15__*) #1

declare dso_local i32 @systable_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
