; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_icmstream.c_AVIFILE_CreateICMStream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_icmstream.c_AVIFILE_CreateICMStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@AVIERR_MEMORY = common dso_local global i32 0, align 4
@iicmst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AVIFILE_CreateICMStream(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32**, i32*** %5, align 8
  %12 = icmp ne i32** %11, null
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32**, i32*** %5, align 8
  store i32* null, i32** %17, align 8
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %20 = call %struct.TYPE_6__* @HeapAlloc(i32 %18, i32 %19, i32 8)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @AVIERR_MEMORY, align 4
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %13
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32* @iicmst, i32** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = call i32 @AVIFILE_Reset(%struct.TYPE_6__* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %4, align 8
  %34 = load i32**, i32*** %5, align 8
  %35 = call i32 @IAVIStream_QueryInterface(%struct.TYPE_7__* %32, i32* %33, i32** %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = call i32 @HeapFree(i32 %40, i32 0, %struct.TYPE_6__* %41)
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %23
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @AVIFILE_Reset(%struct.TYPE_6__*) #1

declare dso_local i32 @IAVIStream_QueryInterface(%struct.TYPE_7__*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
