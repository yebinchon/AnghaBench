; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_indxpath.c_bitmap_and_cost_est.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_indxpath.c_bitmap_and_cost_est.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32*, i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { i32, i32, i64, i8*, i32, %struct.TYPE_11__*, i32, i32 }

@T_BitmapAndPath = common dso_local global i32 0, align 4
@T_BitmapAnd = common dso_local global i32 0, align 4
@NIL = common dso_local global i8* null, align 8
@T_BitmapHeapPath = common dso_local global i32 0, align 4
@T_BitmapHeapScan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32*)* @bitmap_and_cost_est to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_and_cost_est(i32* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @T_BitmapAndPath, align 4
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @T_BitmapAnd, align 4
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load i8*, i8** @NIL, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @cost_bitmap_and_node(%struct.TYPE_13__* %7, i32* %31)
  %33 = bitcast %struct.TYPE_13__* %7 to i32*
  %34 = call i32 @get_bitmap_tree_required_outer(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @T_BitmapHeapPath, align 4
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @T_BitmapHeapScan, align 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 5
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @get_baserel_parampathinfo(i32* %49, %struct.TYPE_11__* %50, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** @NIL, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = bitcast %struct.TYPE_13__* %7 to i32*
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i32* %58, i32** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = bitcast %struct.TYPE_13__* %7 to i32*
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @get_loop_count(i32* %69, i32 %72, i32 %73)
  %75 = call i32 @cost_bitmap_heap_scan(%struct.TYPE_14__* %62, i32* %63, %struct.TYPE_11__* %64, i32 %67, i32* %68, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  ret i32 %78
}

declare dso_local i32 @cost_bitmap_and_node(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @get_bitmap_tree_required_outer(i32*) #1

declare dso_local i32 @get_baserel_parampathinfo(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @cost_bitmap_heap_scan(%struct.TYPE_14__*, i32*, %struct.TYPE_11__*, i32, i32*, i32) #1

declare dso_local i32 @get_loop_count(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
