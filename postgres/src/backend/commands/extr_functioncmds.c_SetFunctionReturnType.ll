; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_SetFunctionReturnType.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_SetFunctionReturnType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@ProcedureRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@OPAQUEOID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"function %u doesn't return OPAQUE\00", align 1
@TypeRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetFunctionReturnType(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @ProcedureRelationId, align 4
  %11 = load i32, i32* @RowExclusiveLock, align 4
  %12 = call i32 @table_open(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @PROCOID, align 4
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @ObjectIdGetDatum(i64 %14)
  %16 = call %struct.TYPE_7__* @SearchSysCacheCopy1(i32 %13, i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = call i32 @HeapTupleIsValid(%struct.TYPE_7__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = call i64 @GETSTRUCT(%struct.TYPE_7__* %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %7, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OPAQUEOID, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @elog(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %33, %24
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = call i32 @CatalogTupleUpdate(i32 %41, i32* %43, %struct.TYPE_7__* %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @RowExclusiveLock, align 4
  %48 = call i32 @table_close(i32 %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @TypeRelationId, align 4
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @ObjectAddressSet(i32 %49, i32 %50, i64 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ProcedureRelationId, align 4
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @ObjectAddressSet(i32 %53, i32 %54, i64 %55)
  %57 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %58 = call i32 @recordDependencyOn(i32* %8, i32* %9, i32 %57)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_7__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_7__*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_7__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i64) #1

declare dso_local i32 @recordDependencyOn(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
