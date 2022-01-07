; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_deleteDependencyRecordsForClass.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_deleteDependencyRecordsForClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i8 }

@DependRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_depend_classid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_depend_objid = common dso_local global i32 0, align 4
@DependDependerIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @deleteDependencyRecordsForClass(i64 %0, i64 %1, i64 %2, i8 signext %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  store i64 0, i64* %9, align 8
  %15 = load i32, i32* @DependRelationId, align 4
  %16 = load i32, i32* @RowExclusiveLock, align 4
  %17 = call i32 @table_open(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %19 = load i32, i32* @Anum_pg_depend_classid, align 4
  %20 = load i32, i32* @BTEqualStrategyNumber, align 4
  %21 = load i32, i32* @F_OIDEQ, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @ObjectIdGetDatum(i64 %22)
  %24 = call i32 @ScanKeyInit(i32* %18, i32 %19, i32 %20, i32 %21, i32 %23)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %26 = load i32, i32* @Anum_pg_depend_objid, align 4
  %27 = load i32, i32* @BTEqualStrategyNumber, align 4
  %28 = load i32, i32* @F_OIDEQ, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @ObjectIdGetDatum(i64 %29)
  %31 = call i32 @ScanKeyInit(i32* %25, i32 %26, i32 %27, i32 %28, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @DependDependerIndexId, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %35 = call i32 @systable_beginscan(i32 %32, i32 %33, i32 1, i32* null, i32 2, i32* %34)
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %66, %4
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.TYPE_6__* @systable_getnext(i32 %37)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %13, align 8
  %39 = call i64 @HeapTupleIsValid(%struct.TYPE_6__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = call i32 @GETSTRUCT(%struct.TYPE_6__* %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %14, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %41
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i8, i8* %53, align 8
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @CatalogTupleDelete(i32 %60, i32* %62)
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %59, %51, %41
  br label %36

67:                                               ; preds = %36
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @systable_endscan(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @RowExclusiveLock, align 4
  %72 = call i32 @table_close(i32 %70, i32 %71)
  %73 = load i64, i64* %9, align 8
  ret i64 %73
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(%struct.TYPE_6__*) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
