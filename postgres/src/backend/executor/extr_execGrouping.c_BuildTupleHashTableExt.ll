; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execGrouping.c_BuildTupleHashTableExt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execGrouping.c_BuildTupleHashTableExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i32*, i32, i64, i32*, i32*, i32*, i64, i64, i32*, i32*, i32* }

@work_mem = common dso_local global i64 0, align 8
@ParallelWorkerNumber = common dso_local global i32 0, align 4
@TTSOpsMinimalTuple = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @BuildTupleHashTableExt(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_4__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store i32* %5, i32** %19, align 8
  store i32* %6, i32** %20, align 8
  store i64 %7, i64* %21, align 8
  store i64 %8, i64* %22, align 8
  store i64 %9, i64* %23, align 8
  store i64 %10, i64* %24, align 8
  store i64 %11, i64* %25, align 8
  store i32 %12, i32* %26, align 4
  %31 = load i64, i64* %22, align 8
  %32 = add i64 4, %31
  store i64 %32, i64* %28, align 8
  %33 = load i64, i64* %21, align 8
  %34 = icmp sgt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load i64, i64* %21, align 8
  %38 = load i64, i64* @work_mem, align 8
  %39 = mul nsw i64 %38, 1024
  %40 = load i64, i64* %28, align 8
  %41 = sdiv i64 %39, %40
  %42 = call i64 @Min(i64 %37, i64 %41)
  store i64 %42, i64* %21, align 8
  %43 = load i64, i64* %23, align 8
  %44 = call i64 @MemoryContextSwitchTo(i64 %43)
  store i64 %44, i64* %29, align 8
  %45 = call i64 @palloc(i32 4)
  %46 = inttoptr i64 %45 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %27, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 14
  store i32* %50, i32** %52, align 8
  %53 = load i32*, i32** %19, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 13
  store i32* %53, i32** %55, align 8
  %56 = load i32*, i32** %20, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 12
  store i32* %56, i32** %58, align 8
  %59 = load i64, i64* %24, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 11
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %25, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 10
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %28, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  store i32* null, i32** %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 9
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 8
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 7
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* %26, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %13
  %79 = load i32, i32* @ParallelWorkerNumber, align 4
  %80 = call i64 @murmurhash32(i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 6
  store i64 %80, i64* %82, align 8
  br label %86

83:                                               ; preds = %13
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i64, i64* %23, align 8
  %88 = load i64, i64* %21, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %90 = call i32 @tuplehash_create(i64 %87, i64 %88, %struct.TYPE_4__* %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @CreateTupleDescCopy(i32 %93)
  %95 = call i32* @MakeSingleTupleTableSlot(i32 %94, i32* @TTSOpsMinimalTuple)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  store i32* %95, i32** %97, align 8
  %98 = load i64, i64* %23, align 8
  %99 = load i64, i64* %24, align 8
  %100 = icmp ne i64 %98, %99
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %30, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32*, i32** %17, align 8
  %106 = load i32*, i32** %18, align 8
  %107 = load i32*, i32** %20, align 8
  %108 = load i32, i32* %30, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %86
  %111 = load i32*, i32** %14, align 8
  br label %113

112:                                              ; preds = %86
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32* [ %111, %110 ], [ null, %112 ]
  %115 = call i32 @ExecBuildGroupingEqual(i32 %102, i32 %103, i32* @TTSOpsMinimalTuple, i32* @TTSOpsMinimalTuple, i32 %104, i32* %105, i32* %106, i32* %107, i32* %114)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = call i32 (...) @CreateStandaloneExprContext()
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i64, i64* %29, align 8
  %122 = call i64 @MemoryContextSwitchTo(i64 %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  ret %struct.TYPE_4__* %123
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @Min(i64, i64) #1

declare dso_local i64 @MemoryContextSwitchTo(i64) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @murmurhash32(i32) #1

declare dso_local i32 @tuplehash_create(i64, i64, %struct.TYPE_4__*) #1

declare dso_local i32* @MakeSingleTupleTableSlot(i32, i32*) #1

declare dso_local i32 @CreateTupleDescCopy(i32) #1

declare dso_local i32 @ExecBuildGroupingEqual(i32, i32, i32*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CreateStandaloneExprContext(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
