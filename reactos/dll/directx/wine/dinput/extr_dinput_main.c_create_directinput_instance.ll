; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_dinput_main.c_create_directinput_instance.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_dinput_main.c_create_directinput_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@ddi7avt = common dso_local global i32 0, align 4
@ddi7wvt = common dso_local global i32 0, align 4
@ddi8avt = common dso_local global i32 0, align 4
@ddi8wvt = common dso_local global i32 0, align 4
@JoyConfig8vt = common dso_local global i32 0, align 4
@DI_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_14__**)* @create_directinput_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_directinput_instance(i32 %0, i32* %1, %struct.TYPE_14__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %7, align 8
  %10 = call i32 (...) @GetProcessHeap()
  %11 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %12 = call %struct.TYPE_14__* @HeapAlloc(i32 %10, i32 %11, i32 40)
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %8, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i32* @ddi7avt, i32** %20, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32* @ddi7wvt, i32** %23, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32* @ddi8avt, i32** %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i32* @ddi8wvt, i32** %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i32* @JoyConfig8vt, i32** %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @IDirectInput_QueryInterface(%struct.TYPE_15__* %34, i32 %35, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %17
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = call i32 @HeapFree(i32 %42, i32 0, %struct.TYPE_14__* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %54

46:                                               ; preds = %17
  %47 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %48 = icmp ne %struct.TYPE_14__** %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @DI_OK, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %41, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_14__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IDirectInput_QueryInterface(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
