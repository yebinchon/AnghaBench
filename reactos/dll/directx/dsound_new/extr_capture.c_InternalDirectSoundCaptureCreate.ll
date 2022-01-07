; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_capture.c_InternalDirectSoundCaptureCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_capture.c_InternalDirectSoundCaptureCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@DSERR_INVALIDPARAM = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DSERR_OUTOFMEMORY = common dso_local global i64 0, align 8
@vt_DirectSoundCapture = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Failed to initialize DirectSoundCapture object with %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"DirectSoundCapture object %p\0A\00", align 1
@DS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @InternalDirectSoundCaptureCreate(i32 %0, i64* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  store i64 %16, i64* %4, align 8
  br label %55

17:                                               ; preds = %12
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %20 = call %struct.TYPE_3__* @HeapAlloc(i32 %18, i32 %19, i32 4)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %8, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* @DSERR_OUTOFMEMORY, align 8
  store i64 %24, i64* %4, align 8
  br label %55

25:                                               ; preds = %17
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32* @vt_DirectSoundCapture, i32** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = ptrtoint i32** %31 to i64
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @IDirectSoundCapture_Initialize(i64 %32, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @SUCCEEDED(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %25
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @DPRINT(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = ptrtoint i32** %42 to i32
  %44 = call i32 @IDirectSoundCapture_Release(i32 %43)
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %4, align 8
  br label %55

46:                                               ; preds = %25
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = ptrtoint i32** %48 to i64
  %50 = load i64*, i64** %6, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i64, i64* @DS_OK, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %46, %38, %23, %15
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local %struct.TYPE_3__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @IDirectSoundCapture_Initialize(i64, i32) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i32 @DPRINT(i8*, i64) #1

declare dso_local i32 @IDirectSoundCapture_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
