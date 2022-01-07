; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_RemoveFunctionById.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_functioncmds.c_RemoveFunctionById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8 }

@ProcedureRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@PROKIND_AGGREGATE = common dso_local global i8 0, align 1
@AggregateRelationId = common dso_local global i32 0, align 4
@AGGFNOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"cache lookup failed for pg_aggregate tuple for function %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveFunctionById(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @ProcedureRelationId, align 4
  %7 = load i32, i32* @RowExclusiveLock, align 4
  %8 = call i32 @table_open(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @PROCOID, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @ObjectIdGetDatum(i32 %10)
  %12 = call %struct.TYPE_7__* @SearchSysCache1(i32 %9, i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i32 @HeapTupleIsValid(%struct.TYPE_7__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = call i64 @GETSTRUCT(%struct.TYPE_7__* %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_8__*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %5, align 1
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = call i32 @CatalogTupleDelete(i32 %26, i32* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = call i32 @ReleaseSysCache(%struct.TYPE_7__* %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @RowExclusiveLock, align 4
  %34 = call i32 @table_close(i32 %32, i32 %33)
  %35 = load i8, i8* %5, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @PROKIND_AGGREGATE, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %20
  %41 = load i32, i32* @AggregateRelationId, align 4
  %42 = load i32, i32* @RowExclusiveLock, align 4
  %43 = call i32 @table_open(i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @AGGFNOID, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @ObjectIdGetDatum(i32 %45)
  %47 = call %struct.TYPE_7__* @SearchSysCache1(i32 %44, i32 %46)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %4, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = call i32 @HeapTupleIsValid(%struct.TYPE_7__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @elog(i32 %52, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %40
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i32 @CatalogTupleDelete(i32 %56, i32* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = call i32 @ReleaseSysCache(%struct.TYPE_7__* %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @RowExclusiveLock, align 4
  %64 = call i32 @table_close(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %55, %20
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_7__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_7__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_7__*) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_7__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
