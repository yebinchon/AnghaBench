; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_notify.c_NewDirectSoundNotify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_notify.c_NewDirectSoundNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32*, i32, i8*, i8* }

@DSERR_OUTOFMEMORY = common dso_local global i32 0, align 4
@vt_DirectSoundNotify = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NewDirectSoundNotify(i64* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  store i64* %0, i64** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = call i32 (...) @GetProcessHeap()
  %14 = call %struct.TYPE_3__* @HeapAlloc(i32 %13, i32 0, i32 4)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %12, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %18, i32* %6, align 4
  br label %43

19:                                               ; preds = %5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32* @vt_DirectSoundNotify, i32** %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = ptrtoint i32** %39 to i64
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @DS_OK, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %19, %17
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_3__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
