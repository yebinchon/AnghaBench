; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_filemap.c_calculate_totals.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_filemap.c_calculate_totals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { i64 }

@filemap = common dso_local global %struct.TYPE_5__* null, align 8
@FILE_TYPE_REGULAR = common dso_local global i64 0, align 8
@FILE_ACTION_COPY = common dso_local global i64 0, align 8
@FILE_ACTION_COPY_TAIL = common dso_local global i64 0, align 8
@BLCKSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calculate_totals() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @filemap, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %94, %0
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %97

17:                                               ; preds = %11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %1, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FILE_TYPE_REGULAR, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %94

31:                                               ; preds = %17
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FILE_ACTION_COPY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %94

52:                                               ; preds = %31
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FILE_ACTION_COPY_TAIL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %58, %52
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = call i32* @datapagemap_iterate(%struct.TYPE_7__* %78)
  store i32* %79, i32** %4, align 8
  br label %80

80:                                               ; preds = %84, %76
  %81 = load i32*, i32** %4, align 8
  %82 = call i64 @datapagemap_next(i32* %81, i32* %5)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i64, i64* @BLCKSZ, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  br label %80

90:                                               ; preds = %80
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @pg_free(i32* %91)
  br label %93

93:                                               ; preds = %90, %70
  br label %94

94:                                               ; preds = %93, %44, %30
  %95 = load i32, i32* %2, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %2, align 4
  br label %11

97:                                               ; preds = %11
  ret void
}

declare dso_local i32* @datapagemap_iterate(%struct.TYPE_7__*) #1

declare dso_local i64 @datapagemap_next(i32*, i32*) #1

declare dso_local i32 @pg_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
