; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_toast_internals.c_toast_delete_datum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_toast_internals.c_toast_delete_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlena = type { i32 }
%struct.varatt_external = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toast_delete_datum(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.varlena*, align 8
  %8 = alloca %struct.varatt_external, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @DatumGetPointer(i32 %17)
  %19 = inttoptr i64 %18 to %struct.varlena*
  store %struct.varlena* %19, %struct.varlena** %7, align 8
  %20 = load %struct.varlena*, %struct.varlena** %7, align 8
  %21 = call i32 @VARATT_IS_EXTERNAL_ONDISK(%struct.varlena* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %79

24:                                               ; preds = %3
  %25 = load %struct.varlena*, %struct.varlena** %7, align 8
  %26 = bitcast %struct.varatt_external* %8 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = call i32 @VARATT_EXTERNAL_GET_POINTER(i64 %27, %struct.varlena* %25)
  %29 = getelementptr inbounds %struct.varatt_external, %struct.varatt_external* %8, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RowExclusiveLock, align 4
  %32 = call i32 @table_open(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @RowExclusiveLock, align 4
  %35 = call i32 @toast_open_indexes(i32 %33, i32 %34, i32** %10, i32* %14)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* @BTEqualStrategyNumber, align 4
  %37 = load i32, i32* @F_OIDEQ, align 4
  %38 = getelementptr inbounds %struct.varatt_external, %struct.varatt_external* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ObjectIdGetDatum(i32 %39)
  %41 = call i32 @ScanKeyInit(i32* %11, i32 1, i32 %36, i32 %37, i32 %40)
  %42 = call i32 @init_toast_snapshot(i32* %16)
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @systable_beginscan_ordered(i32 %43, i32 %48, i32* %16, i32 1, i32* %11)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %68, %24
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @ForwardScanDirection, align 4
  %53 = call %struct.TYPE_3__* @systable_getnext_ordered(i32 %51, i32 %52)
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %13, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @heap_abort_speculative(i32 %59, i32* %61)
  br label %68

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @simple_heap_delete(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %58
  br label %50

69:                                               ; preds = %50
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @systable_endscan_ordered(i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @RowExclusiveLock, align 4
  %75 = call i32 @toast_close_indexes(i32* %72, i32 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @RowExclusiveLock, align 4
  %78 = call i32 @table_close(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %69, %23
  ret void
}

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @VARATT_IS_EXTERNAL_ONDISK(%struct.varlena*) #1

declare dso_local i32 @VARATT_EXTERNAL_GET_POINTER(i64, %struct.varlena*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @toast_open_indexes(i32, i32, i32**, i32*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @init_toast_snapshot(i32*) #1

declare dso_local i32 @systable_beginscan_ordered(i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @systable_getnext_ordered(i32, i32) #1

declare dso_local i32 @heap_abort_speculative(i32, i32*) #1

declare dso_local i32 @simple_heap_delete(i32, i32*) #1

declare dso_local i32 @systable_endscan_ordered(i32) #1

declare dso_local i32 @toast_close_indexes(i32*, i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
