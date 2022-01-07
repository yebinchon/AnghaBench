; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_capture.c_IDirectSoundCaptureNotifyImpl_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_capture.c_IDirectSoundCaptureNotifyImpl_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"(%p,%p)\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@DSERR_OUTOFMEMORY = common dso_local global i32 0, align 4
@dscnvt = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__**)* @IDirectSoundCaptureNotifyImpl_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IDirectSoundCaptureNotifyImpl_Create(%struct.TYPE_9__* %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %7, %struct.TYPE_8__** %8)
  %10 = call i32 (...) @GetProcessHeap()
  %11 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %12 = call %struct.TYPE_8__* @HeapAlloc(i32 %10, i32 %11, i32 24)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @WARN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32* @dscnvt, i32** %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = ptrtoint %struct.TYPE_9__* %29 to i32
  %31 = call i32 @IDirectSoundCaptureBuffer_AddRef(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %33, align 8
  %34 = load i32, i32* @DS_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %18, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_9__*, %struct.TYPE_8__**) #1

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @IDirectSoundCaptureBuffer_AddRef(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
