; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_extrachunk.c_WriteExtraChunk.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_extrachunk.c_WriteExtraChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@AVIERR_MEMORY = common dso_local global i32 0, align 4
@AVIERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WriteExtraChunk(%struct.TYPE_3__* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %9, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %4
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %35, %36
  %38 = add i64 %37, 8
  %39 = call i64* @HeapReAlloc(i32 %28, i32 %29, i64* %32, i64 %38)
  store i64* %39, i64** %10, align 8
  br label %47

40:                                               ; preds = %4
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i64* @HeapAlloc(i32 %41, i32 %42, i32 %45)
  store i64* %46, i64** %10, align 8
  br label %47

47:                                               ; preds = %40, %27
  %48 = load i64*, i64** %10, align 8
  %49 = icmp eq i64* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %51, i32* %5, align 4
  br label %88

52:                                               ; preds = %47
  %53 = load i64*, i64** %10, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i64* %53, i64** %55, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = ptrtoint i64* %56 to i64
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = inttoptr i64 %61 to i64*
  store i64* %62, i64** %10, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  store i64 %72, i64* %74, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %52
  %78 = load i64, i64* %9, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64*, i64** %10, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  %83 = load i32*, i32** %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @memcpy(i64* %82, i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %80, %77, %52
  %87 = load i32, i32* @AVIERR_OK, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %50
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64* @HeapReAlloc(i32, i32, i64*, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
