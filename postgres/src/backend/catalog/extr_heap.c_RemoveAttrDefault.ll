; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_RemoveAttrDefault.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_RemoveAttrDefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@AttrDefaultRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_attrdef_adrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_attrdef_adnum = common dso_local global i32 0, align 4
@F_INT2EQ = common dso_local global i32 0, align 4
@AttrDefaultIndexId = common dso_local global i32 0, align 4
@PERFORM_DELETION_INTERNAL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"could not find attrdef tuple for relation %u attnum %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveAttrDefault(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @AttrDefaultRelationId, align 4
  %19 = load i32, i32* @RowExclusiveLock, align 4
  %20 = call i32 @table_open(i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %22 = load i32, i32* @Anum_pg_attrdef_adrelid, align 4
  %23 = load i32, i32* @BTEqualStrategyNumber, align 4
  %24 = load i32, i32* @F_OIDEQ, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ObjectIdGetDatum(i32 %25)
  %27 = call i32 @ScanKeyInit(i32* %21, i32 %22, i32 %23, i32 %24, i32 %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %29 = load i32, i32* @Anum_pg_attrdef_adnum, align 4
  %30 = load i32, i32* @BTEqualStrategyNumber, align 4
  %31 = load i32, i32* @F_INT2EQ, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @Int16GetDatum(i32 %32)
  %34 = call i32 @ScanKeyInit(i32* %28, i32 %29, i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @AttrDefaultIndexId, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %38 = call i32 @systable_beginscan(i32 %35, i32 %36, i32 1, i32* null, i32 2, i32* %37)
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %62, %5
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @systable_getnext(i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = call i64 @HeapTupleIsValid(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @GETSTRUCT(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %17, align 8
  %49 = load i32, i32* @AttrDefaultRelationId, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* @PERFORM_DELETION_INTERNAL, align 4
  br label %62

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = call i32 @performDeletion(%struct.TYPE_4__* %16, i32 %56, i32 %63)
  store i32 1, i32* %15, align 4
  br label %39

65:                                               ; preds = %39
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @systable_endscan(i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @RowExclusiveLock, align 4
  %70 = call i32 @table_close(i32 %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @ERROR, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @elog(i32 %77, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %73, %65
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @performDeletion(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
