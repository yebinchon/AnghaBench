; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_begin_datum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_begin_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i32 }

@DATUM_SORT = common dso_local global i32 0, align 4
@comparetup_datum = common dso_local global i32 0, align 4
@copytup_datum = common dso_local global i32 0, align 4
@writetup_datum = common dso_local global i32 0, align 4
@readtup_datum = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@trace_sort = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @tuplesort_begin_datum(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call %struct.TYPE_7__* @tuplesort_begin_common(i32 %19, i32 %20, i32 %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %15, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @MemoryContextSwitchTo(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @DATUM_SORT, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %33 = call i32 @PARALLEL_SORT(%struct.TYPE_7__* %32)
  %34 = call i32 @TRACE_POSTGRESQL_SORT_START(i32 %29, i32 0, i32 1, i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* @comparetup_datum, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @copytup_datum, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @writetup_datum, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @readtup_datum, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 10, i32* %48, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @get_typlenbyval(i8* %52, i32* %17, i32* %18)
  %54 = load i32, i32* %17, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = call i64 @palloc0(i32 4)
  %64 = inttoptr i64 %63 to %struct.TYPE_8__*
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %66, align 8
  %67 = load i32, i32* @CurrentMemoryContext, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 4
  store i32 %67, i32* %71, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  store i8* %72, i8** %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = call i32 @PrepareSortSupportFromOrderingOp(i8* %90, %struct.TYPE_8__* %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %7
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %106, align 8
  br label %107

107:                                              ; preds = %101, %7
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @MemoryContextSwitchTo(i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  ret %struct.TYPE_7__* %110
}

declare dso_local %struct.TYPE_7__* @tuplesort_begin_common(i32, i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_SORT_START(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PARALLEL_SORT(%struct.TYPE_7__*) #1

declare dso_local i32 @get_typlenbyval(i8*, i32*, i32*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @PrepareSortSupportFromOrderingOp(i8*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
