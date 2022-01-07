; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_secondary.c_NewSecondarySoundBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_secondary.c_NewSecondarySoundBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32*, %struct.TYPE_7__*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DSERR_OUTOFMEMORY = common dso_local global i32 0, align 4
@vt_DirectSoundBuffer8 = common dso_local global i32 0, align 4
@KSSTATE_STOP = common dso_local global i32 0, align 4
@DSBVOLUME_MAX = common dso_local global i32 0, align 4
@DSBPAN_CENTER = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NewSecondarySoundBuffer(i64* %0, i32 %1, i32 %2, %struct.TYPE_8__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = call i32 (...) @GetProcessHeap()
  %15 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %16 = call i8* @HeapAlloc(i32 %14, i32 %15, i32 4)
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %13, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %21, i32* %6, align 4
  br label %144

22:                                               ; preds = %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 4, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i32, i32* %12, align 4
  %33 = call i8* @HeapAlloc(i32 %31, i32 0, i32 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_7__*
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %22
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %44 = call i32 @HeapFree(i32 %42, i32 0, %struct.TYPE_7__* %43)
  %45 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %45, i32* %6, align 4
  br label %144

46:                                               ; preds = %22
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ASSERT(i32 %49)
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @HeapAlloc(i32 %51, i32 0, i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 14
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 14
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %46
  %63 = call i32 (...) @GetProcessHeap()
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = call i32 @HeapFree(i32 %63, i32 0, %struct.TYPE_7__* %66)
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %70 = call i32 @HeapFree(i32 %68, i32 0, %struct.TYPE_7__* %69)
  %71 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %71, i32* %6, align 4
  br label %144

72:                                               ; preds = %46
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 14
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 8
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 128, i32 0
  %87 = call i32 @FillMemory(i8* %75, i32 %78, i32 %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  store i32* @vt_DirectSoundBuffer8, i32** %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 13
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 12
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 11
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 10
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @KSSTATE_STOP, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @DSBVOLUME_MAX, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @DSBPAN_CENTER, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 6
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 5
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i64, i64* %11, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @CopyMemory(%struct.TYPE_7__* %133, %struct.TYPE_9__* %136, i32 %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = ptrtoint i32** %140 to i64
  %142 = load i64*, i64** %7, align 8
  store i64 %141, i64* %142, align 8
  %143 = load i32, i32* @DS_OK, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %72, %62, %41, %20
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @FillMemory(i8*, i32, i32) #1

declare dso_local i32 @CopyMemory(%struct.TYPE_7__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
