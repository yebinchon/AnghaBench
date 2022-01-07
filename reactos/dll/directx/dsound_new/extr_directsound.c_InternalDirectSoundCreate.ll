; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_directsound.c_InternalDirectSoundCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_directsound.c_InternalDirectSoundCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@DSERR_INVALIDPARAM = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DSERR_OUTOFMEMORY = common dso_local global i64 0, align 8
@vt_DirectSound8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to initialize DirectSound object with %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"DirectSound object %p\0A\00", align 1
@DS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @InternalDirectSoundCreate(i32 %0, i64* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64*, i64** %7, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %4
  %18 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  store i64 %18, i64* %5, align 8
  br label %60

19:                                               ; preds = %14
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %22 = call %struct.TYPE_3__* @HeapAlloc(i32 %20, i32 %21, i32 4)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %10, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* @DSERR_OUTOFMEMORY, align 8
  store i64 %26, i64* %5, align 8
  br label %60

27:                                               ; preds = %19
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32* @vt_DirectSound8, i32** %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = ptrtoint i32** %36 to i64
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @IDirectSound8_Initialize(i64 %37, i32 %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @SUCCEEDED(i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %27
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = ptrtoint i32** %47 to i64
  %49 = call i32 @IDirectSound8_Release(i64 %48)
  %50 = load i64, i64* %11, align 8
  store i64 %50, i64* %5, align 8
  br label %60

51:                                               ; preds = %27
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = ptrtoint i32** %53 to i64
  %55 = load i64*, i64** %7, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* @DS_OK, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %51, %43, %25, %17
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local %struct.TYPE_3__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @IDirectSound8_Initialize(i64, i32) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i32 @DPRINT(i8*, i64) #1

declare dso_local i32 @IDirectSound8_Release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
