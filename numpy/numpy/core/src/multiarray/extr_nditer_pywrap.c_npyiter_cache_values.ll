; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_cache_values.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_cache_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @npyiter_cache_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_cache_values(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 9
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @NpyIter_GetIterNext(i32* %8, i32* null)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 8
  store i32* %9, i32** %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %74

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @NpyIter_HasMultiIndex(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @NpyIter_HasDelayedBufAlloc(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = call i32* @NpyIter_GetGetMultiIndex(i32* %26, i32* null)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 7
  store i32* %27, i32** %29, align 8
  br label %33

30:                                               ; preds = %21, %17
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 7
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @NpyIter_GetDataPtrArray(i32* %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @NpyIter_GetDescrArray(i32* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @NpyIter_GetOperandArray(i32* %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @NpyIter_HasExternalLoop(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %33
  %50 = load i32*, i32** %4, align 8
  %51 = call i32* @NpyIter_GetInnerStrideArray(i32* %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32* @NpyIter_GetInnerLoopSizePtr(i32* %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  br label %63

58:                                               ; preds = %33
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %58, %49
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @NpyIter_GetReadFlags(i32* %64, i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @NpyIter_GetWriteFlags(i32* %69, i32 %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %63, %16
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32* @NpyIter_GetIterNext(i32*, i32*) #1

declare dso_local i64 @NpyIter_HasMultiIndex(i32*) #1

declare dso_local i32 @NpyIter_HasDelayedBufAlloc(i32*) #1

declare dso_local i32* @NpyIter_GetGetMultiIndex(i32*, i32*) #1

declare dso_local i32 @NpyIter_GetDataPtrArray(i32*) #1

declare dso_local i32 @NpyIter_GetDescrArray(i32*) #1

declare dso_local i32 @NpyIter_GetOperandArray(i32*) #1

declare dso_local i64 @NpyIter_HasExternalLoop(i32*) #1

declare dso_local i32* @NpyIter_GetInnerStrideArray(i32*) #1

declare dso_local i32* @NpyIter_GetInnerLoopSizePtr(i32*) #1

declare dso_local i32 @NpyIter_GetReadFlags(i32*, i32) #1

declare dso_local i32 @NpyIter_GetWriteFlags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
