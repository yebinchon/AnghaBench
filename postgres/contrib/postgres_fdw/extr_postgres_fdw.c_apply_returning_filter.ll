; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_apply_returning_filter.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_apply_returning_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, i32, i64, i32 }
%struct.TYPE_18__ = type { i32*, i32* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }

@InvalidTransactionId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_22__*)* @apply_returning_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @apply_returning_filter(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %6, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_19__* @RelationGetDescr(i32 %23)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %8, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call %struct.TYPE_18__* @ExecGetReturningSlot(%struct.TYPE_22__* %25, i32* %26)
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %9, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = call i32 @slot_getallattrs(%struct.TYPE_18__* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %12, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %13, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %37 = call i32 @ExecClearTuple(%struct.TYPE_18__* %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %10, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %11, align 8
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %91, %3
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %44
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 0, i32* %64, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 1, i32* %68, align 4
  br label %90

69:                                               ; preds = %50
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %69, %60
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %44

94:                                               ; preds = %44
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %96 = call i32 @ExecStoreVirtualTuple(%struct.TYPE_18__* %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %139

101:                                              ; preds = %94
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %103 = call %struct.TYPE_21__* @ExecFetchSlotHeapTuple(%struct.TYPE_18__* %102, i32 1, i32* null)
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %16, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %101
  store i32* null, i32** %17, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %109, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @DatumGetPointer(i32 %116)
  %118 = inttoptr i64 %117 to i32*
  store i32* %118, i32** %17, align 8
  %119 = load i32*, i32** %17, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %108, %101
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @InvalidTransactionId, align 4
  %128 = call i32 @HeapTupleHeaderSetXmin(i32 %126, i32 %127)
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @InvalidTransactionId, align 4
  %133 = call i32 @HeapTupleHeaderSetXmax(i32 %131, i32 %132)
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @InvalidTransactionId, align 4
  %138 = call i32 @HeapTupleHeaderSetCmin(i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %123, %94
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  ret %struct.TYPE_18__* %140
}

declare dso_local %struct.TYPE_19__* @RelationGetDescr(i32) #1

declare dso_local %struct.TYPE_18__* @ExecGetReturningSlot(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @slot_getallattrs(%struct.TYPE_18__*) #1

declare dso_local i32 @ExecClearTuple(%struct.TYPE_18__*) #1

declare dso_local i32 @ExecStoreVirtualTuple(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_21__* @ExecFetchSlotHeapTuple(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @HeapTupleHeaderSetXmin(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderSetXmax(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderSetCmin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
