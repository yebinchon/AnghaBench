; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_deleteOneObject.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_deleteOneObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@PERFORM_DELETION_CONCURRENTLY = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@DependRelationId = common dso_local global i32 0, align 4
@Anum_pg_depend_classid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_depend_objid = common dso_local global i32 0, align 4
@Anum_pg_depend_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@DependDependerIndexId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32)* @deleteOneObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deleteOneObject(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @InvokeObjectDropHookArg(i32 %13, i32 %16, i64 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PERFORM_DELETION_CONCURRENTLY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RowExclusiveLock, align 4
  %30 = call i32 @table_close(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @doDeletion(%struct.TYPE_9__* %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @PERFORM_DELETION_CONCURRENTLY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* @DependRelationId, align 4
  %41 = load i32, i32* @RowExclusiveLock, align 4
  %42 = call i32 @table_open(i32 %40, i32 %41)
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %31
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %46 = load i32, i32* @Anum_pg_depend_classid, align 4
  %47 = load i32, i32* @BTEqualStrategyNumber, align 4
  %48 = load i32, i32* @F_OIDEQ, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ObjectIdGetDatum(i32 %51)
  %53 = call i32 @ScanKeyInit(i32* %45, i32 %46, i32 %47, i32 %48, i32 %52)
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %55 = load i32, i32* @Anum_pg_depend_objid, align 4
  %56 = load i32, i32* @BTEqualStrategyNumber, align 4
  %57 = load i32, i32* @F_OIDEQ, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ObjectIdGetDatum(i32 %60)
  %62 = call i32 @ScanKeyInit(i32* %54, i32 %55, i32 %56, i32 %57, i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %44
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %69 = load i32, i32* @Anum_pg_depend_objsubid, align 4
  %70 = load i32, i32* @BTEqualStrategyNumber, align 4
  %71 = load i32, i32* @F_INT4EQ, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @Int32GetDatum(i64 %74)
  %76 = call i32 @ScanKeyInit(i32* %68, i32 %69, i32 %70, i32 %71, i32 %75)
  store i32 3, i32* %8, align 4
  br label %78

77:                                               ; preds = %44
  store i32 2, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %67
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DependDependerIndexId, align 4
  %82 = load i32, i32* %8, align 4
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %84 = call i32 @systable_beginscan(i32 %80, i32 %81, i32 1, i32* null, i32 %82, i32* %83)
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %90, %78
  %86 = load i32, i32* %9, align 4
  %87 = call %struct.TYPE_10__* @systable_getnext(i32 %86)
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %10, align 8
  %88 = call i64 @HeapTupleIsValid(%struct.TYPE_10__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = call i32 @CatalogTupleDelete(i32 %92, i32* %94)
  br label %85

96:                                               ; preds = %85
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @systable_endscan(i32 %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @deleteSharedDependencyRecordsFor(i32 %101, i32 %104, i64 %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @DeleteComments(i32 %111, i32 %114, i64 %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = call i32 @DeleteSecurityLabel(%struct.TYPE_9__* %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = call i32 @DeleteInitPrivs(%struct.TYPE_9__* %121)
  %123 = call i32 (...) @CommandCounterIncrement()
  ret void
}

declare dso_local i32 @InvokeObjectDropHookArg(i32, i32, i64, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @doDeletion(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @systable_getnext(i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @deleteSharedDependencyRecordsFor(i32, i32, i64) #1

declare dso_local i32 @DeleteComments(i32, i32, i64) #1

declare dso_local i32 @DeleteSecurityLabel(%struct.TYPE_9__*) #1

declare dso_local i32 @DeleteInitPrivs(%struct.TYPE_9__*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
