; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_buffer.c_DMUSIC_CreateDirectMusicBufferImpl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_buffer.c_DMUSIC_CreateDirectMusicBufferImpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"(%p, %p)\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@DirectMusicBuffer_Vtbl = common dso_local global i32 0, align 4
@GUID_NULL = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_MIDI = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMUSIC_CreateDirectMusicBufferImpl(%struct.TYPE_10__* %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %7, %struct.TYPE_9__** %8)
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %11 = call i32 (...) @GetProcessHeap()
  %12 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %13 = call i8* @HeapAlloc(i32 %11, i32 %12, i32 32)
  %14 = bitcast i8* %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %18, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32* @DirectMusicBuffer_Vtbl, i32** %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = call i64 @IsEqualGUID(i32* %26, i32* @GUID_NULL)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @KSDATAFORMAT_SUBTYPE_MIDI, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  br label %39

33:                                               ; preds = %19
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %33, %29
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 3
  %44 = and i32 %43, -4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @HeapAlloc(i32 %47, i32 0, i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %39
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = call i32 @HeapFree(i32 %59, i32 0, %struct.TYPE_11__* %60)
  %62 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %62, i32* %3, align 4
  br label %69

63:                                               ; preds = %39
  %64 = call i32 (...) @DMUSIC_LockModule()
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %67, align 8
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %58, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_10__*, %struct.TYPE_9__**) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @DMUSIC_LockModule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
