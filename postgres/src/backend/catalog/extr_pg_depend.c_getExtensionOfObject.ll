; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_getExtensionOfObject.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_getExtensionOfObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@DependRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_depend_classid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_depend_objid = common dso_local global i32 0, align 4
@DependDependerIndexId = common dso_local global i32 0, align 4
@ExtensionRelationId = common dso_local global i64 0, align 8
@DEPENDENCY_EXTENSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getExtensionOfObject(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @InvalidOid, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @DependRelationId, align 4
  %13 = load i32, i32* @AccessShareLock, align 4
  %14 = call i32 @table_open(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %16 = load i32, i32* @Anum_pg_depend_classid, align 4
  %17 = load i32, i32* @BTEqualStrategyNumber, align 4
  %18 = load i32, i32* @F_OIDEQ, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ObjectIdGetDatum(i32 %19)
  %21 = call i32 @ScanKeyInit(i32* %15, i32 %16, i32 %17, i32 %18, i32 %20)
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %23 = load i32, i32* @Anum_pg_depend_objid, align 4
  %24 = load i32, i32* @BTEqualStrategyNumber, align 4
  %25 = load i32, i32* @F_OIDEQ, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ObjectIdGetDatum(i32 %26)
  %28 = call i32 @ScanKeyInit(i32* %22, i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DependDependerIndexId, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %32 = call i32 @systable_beginscan(i32 %29, i32 %30, i32 1, i32* null, i32 2, i32* %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %58, %2
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @systable_getnext(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = call i64 @HeapTupleIsValid(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @GETSTRUCT(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %10, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ExtensionRelationId, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DEPENDENCY_EXTENSION, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %5, align 4
  br label %59

58:                                               ; preds = %48, %38
  br label %33

59:                                               ; preds = %54, %33
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @systable_endscan(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @AccessShareLock, align 4
  %64 = call i32 @table_close(i32 %62, i32 %63)
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
