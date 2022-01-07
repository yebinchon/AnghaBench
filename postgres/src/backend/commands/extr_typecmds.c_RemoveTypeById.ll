; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_RemoveTypeById.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_RemoveTypeById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@TypeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@TYPTYPE_ENUM = common dso_local global i64 0, align 8
@TYPTYPE_RANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveTypeById(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @TypeRelationId, align 4
  %6 = load i32, i32* @RowExclusiveLock, align 4
  %7 = call i32 @table_open(i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @TYPEOID, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @ObjectIdGetDatum(i32 %9)
  %11 = call %struct.TYPE_7__* @SearchSysCache1(i32 %8, i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = call i32 @HeapTupleIsValid(%struct.TYPE_7__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i32 @CatalogTupleDelete(i32 %20, i32* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i64 @GETSTRUCT(%struct.TYPE_7__* %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_8__*
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TYPTYPE_ENUM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @EnumValuesDelete(i32 %32)
  br label %34

34:                                               ; preds = %31, %19
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i64 @GETSTRUCT(%struct.TYPE_7__* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_8__*
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TYPTYPE_RANGE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @RangeDelete(i32 %43)
  br label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = call i32 @ReleaseSysCache(%struct.TYPE_7__* %46)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @RowExclusiveLock, align 4
  %50 = call i32 @table_close(i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_7__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_7__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_7__*) #1

declare dso_local i32 @EnumValuesDelete(i32) #1

declare dso_local i32 @RangeDelete(i32) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_7__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
