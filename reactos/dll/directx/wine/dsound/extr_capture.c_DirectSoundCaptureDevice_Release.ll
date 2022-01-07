; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_capture.c_DirectSoundCaptureDevice_Release.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_capture.c_DirectSoundCaptureDevice_Release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_10__, %struct.TYPE_9__*, i64, i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64* }

@.str = private unnamed_addr constant [17 x i8] c"(%p) ref was %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"deleting object\0A\00", align 1
@DSOUND_capture = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"(%p) released\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @DirectSoundCaptureDevice_Release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DirectSoundCaptureDevice_Release(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  %6 = call i64 @InterlockedDecrement(i32* %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %7, i64 %9)
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %66, label %13

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @IDirectSoundCaptureBufferImpl_Release(i32 %23)
  br label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @IDsCaptureDriver_Close(i64 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @IDsCaptureDriver_Release(i64 %37)
  br label %39

39:                                               ; preds = %30, %25
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = call i32 @HeapFree(i32 %40, i32 0, %struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = call i32 @DeleteCriticalSection(%struct.TYPE_10__* %53)
  %55 = load i32**, i32*** @DSOUND_capture, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32*, i32** %55, i64 %59
  store i32* null, i32** %60, align 8
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = call i32 @HeapFree(i32 %61, i32 0, %struct.TYPE_9__* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %64)
  br label %66

66:                                               ; preds = %39, %1
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

declare dso_local i64 @InterlockedDecrement(i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @IDirectSoundCaptureBufferImpl_Release(i32) #1

declare dso_local i32 @IDsCaptureDriver_Close(i64) #1

declare dso_local i32 @IDsCaptureDriver_Release(i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @DeleteCriticalSection(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
