; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partprune.c_prune_append_rel_partitions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partprune.c_prune_append_rel_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32*, i64 }
%struct.TYPE_11__ = type { i32, i64, i32*, i32*, i32, i32*, i32, i32, i32, i32 }

@enable_partition_pruning = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@PARTTARGET_PLANNER = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @prune_append_rel_partitions(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %107

22:                                               ; preds = %1
  %23 = load i32, i32* @enable_partition_pruning, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** @NIL, align 8
  %28 = icmp eq i32* %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25, %22
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, 1
  %34 = call i32* @bms_add_range(i32* null, i32 0, i64 %33)
  store i32* %34, i32** %2, align 8
  br label %107

35:                                               ; preds = %25
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @PARTTARGET_PLANNER, align 4
  %39 = call i32 @gen_partprune_steps(%struct.TYPE_10__* %36, i32* %37, i32 %38, %struct.TYPE_12__* %6)
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32* null, i32** %2, align 8
  br label %107

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** @NIL, align 8
  %49 = icmp eq i32* %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  %55 = call i32* @bms_add_range(i32* null, i32 0, i64 %54)
  store i32* %55, i32** %2, align 8
  br label %107

56:                                               ; preds = %44
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 9
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i64 %71, i64* %72, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 8
  store i32 %75, i32* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 7
  store i32 %81, i32* %82, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 6
  store i32 %87, i32* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = mul i64 4, %91
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @list_length(i32* %93)
  %95 = sext i32 %94 to i64
  %96 = mul i64 %92, %95
  %97 = trunc i64 %96 to i32
  %98 = call i64 @palloc0(i32 %97)
  %99 = inttoptr i64 %98 to i32*
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 5
  store i32* %99, i32** %100, align 8
  %101 = load i32, i32* @CurrentMemoryContext, align 4
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i32* null, i32** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i32* null, i32** %104, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = call i32* @get_matching_partitions(%struct.TYPE_11__* %7, i32* %105)
  store i32* %106, i32** %2, align 8
  br label %107

107:                                              ; preds = %56, %50, %43, %29, %21
  %108 = load i32*, i32** %2, align 8
  ret i32* %108
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @bms_add_range(i32*, i32, i64) #1

declare dso_local i32 @gen_partprune_steps(%struct.TYPE_10__*, i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32* @get_matching_partitions(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
