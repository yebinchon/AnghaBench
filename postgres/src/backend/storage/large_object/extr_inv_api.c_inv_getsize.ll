; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_inv_getsize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_inv_getsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@Anum_pg_largeobject_loid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@lo_heap_r = common dso_local global i32 0, align 4
@lo_index_r = common dso_local global i32 0, align 4
@BackwardScanDirection = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"null field found in pg_largeobject\00", align 1
@LOBLKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @inv_getsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_getsize(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = call i32 @PointerIsValid(%struct.TYPE_6__* %11)
  %13 = call i32 @Assert(i32 %12)
  %14 = call i32 (...) @open_lo_relation()
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %16 = load i32, i32* @Anum_pg_largeobject_loid, align 4
  %17 = load i32, i32* @BTEqualStrategyNumber, align 4
  %18 = load i32, i32* @F_OIDEQ, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ObjectIdGetDatum(i32 %21)
  %23 = call i32 @ScanKeyInit(i32* %15, i32 %16, i32 %17, i32 %18, i32 %22)
  %24 = load i32, i32* @lo_heap_r, align 4
  %25 = load i32, i32* @lo_index_r, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %30 = call i32 @systable_beginscan_ordered(i32 %24, i32 %25, i32 %28, i32 1, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @BackwardScanDirection, align 4
  %33 = call i32 @systable_getnext_ordered(i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @HeapTupleIsValid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %1
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @HeapTupleHasNulls(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @GETSTRUCT(i32 %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %7, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = call i32 @getdatafield(%struct.TYPE_7__* %48, i32** %8, i32* %9, i32* %10)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @LOBLKSIZE, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @pfree(i32* %61)
  br label %63

63:                                               ; preds = %60, %44
  br label %64

64:                                               ; preds = %63, %1
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @systable_endscan_ordered(i32 %65)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PointerIsValid(%struct.TYPE_6__*) #1

declare dso_local i32 @open_lo_relation(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan_ordered(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @systable_getnext_ordered(i32, i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @HeapTupleHasNulls(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @getdatafield(%struct.TYPE_7__*, i32**, i32*, i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @systable_endscan_ordered(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
