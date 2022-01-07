; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/amstream/extr_mediastream.c_ddrawmediastream_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/amstream/extr_mediastream.c_ddrawmediastream_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i32, i32, i32*, %struct.TYPE_12__*, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i8*, i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c"(%p,%s,%p)\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@DirectDrawMediaStreamImpl_IAMMediaStream_Vtbl = common dso_local global i32 0, align 4
@DirectDrawMediaStreamImpl_IDirectDrawMediaStream_Vtbl = common dso_local global i32 0, align 4
@PINDIR_INPUT = common dso_local global i32 0, align 4
@MAX_PIN_NAME = common dso_local global i64 0, align 8
@DirectDrawMediaStreamInputPin_IPin_Vtbl = common dso_local global i32 0, align 4
@DirectDrawMediaStreamInputPin_FuncTable = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddrawmediastream_create(i32* %0, i32* %1, i32 %2, %struct.TYPE_14__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @debugstr_guid(i32* %14)
  %16 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %13, i32 %15, %struct.TYPE_14__** %16)
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %20 = call %struct.TYPE_15__* @HeapAlloc(i32 %18, i32 %19, i32 56)
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %10, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %24, i32* %5, align 4
  br label %85

25:                                               ; preds = %4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i32* @DirectDrawMediaStreamImpl_IAMMediaStream_Vtbl, i32** %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i32* @DirectDrawMediaStreamImpl_IDirectDrawMediaStream_Vtbl, i32** %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 6
  %36 = call i32 @InitializeCriticalSection(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @PINDIR_INPUT, align 4
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 73, i8* %42, align 1
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i64, i64* @MAX_PIN_NAME, align 8
  %48 = sub nsw i64 %47, 1
  %49 = call i32 @StringFromGUID2(i32* %43, i8* %46, i64 %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 5
  %54 = bitcast %struct.TYPE_12__** %53 to i32**
  %55 = call i32 @BaseInputPin_Construct(i32* @DirectDrawMediaStreamInputPin_IPin_Vtbl, i32 4, %struct.TYPE_13__* %11, i32* @DirectDrawMediaStreamInputPin_FuncTable, i32* %51, i32* null, i32** %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %25
  br label %80

60:                                               ; preds = %25
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %65, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %78, align 8
  %79 = load i32, i32* @S_OK, align 4
  store i32 %79, i32* %5, align 4
  br label %85

80:                                               ; preds = %59
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %83 = call i32 @HeapFree(i32 %81, i32 0, %struct.TYPE_15__* %82)
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %60, %23
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @TRACE(i8*, i32*, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local %struct.TYPE_15__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @InitializeCriticalSection(i32*) #1

declare dso_local i32 @StringFromGUID2(i32*, i8*, i64) #1

declare dso_local i32 @BaseInputPin_Construct(i32*, i32, %struct.TYPE_13__*, i32*, i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
