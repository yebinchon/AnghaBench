; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound.c_IDirectSound8_IDirectSound_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound.c_IDirectSound8_IDirectSound_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i32* }

@.str = private unnamed_addr constant [9 x i8] c"(%p,%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid parameter: ppds == NULL\0A\00", align 1
@DSERR_INVALIDPARAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid parameter: pds == NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@DSERR_OUTOFMEMORY = common dso_local global i32 0, align 4
@DirectSound8_DirectSound_Vtbl = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @IDirectSound8_IDirectSound_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IDirectSound8_IDirectSound_Create(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32**, i32*** %5, align 8
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %7, i32** %8)
  %10 = load i32**, i32*** %5, align 8
  %11 = icmp eq i32** %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32**, i32*** %5, align 8
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %15
  %23 = call i32 (...) @GetProcessHeap()
  %24 = call %struct.TYPE_3__* @HeapAlloc(i32 %23, i32 0, i32 24)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %6, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 @WARN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32**, i32*** %5, align 8
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %22
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32* @DirectSound8_DirectSound_Vtbl, i32** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @IDirectSoundImpl_AddRef(i32* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = bitcast %struct.TYPE_3__* %41 to i32*
  %43 = load i32**, i32*** %5, align 8
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* @DS_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %31, %27, %18, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @TRACE(i8*, i32*, i32**) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.TYPE_3__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @IDirectSoundImpl_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
