; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"(%p, %p)\0A\00", align 1
@CLASS_E_NOAGGREGATION = common dso_local global i32 0, align 4
@AVISplitterImpl_Vtbl = common dso_local global i32 0, align 4
@CLSID_AviSplitter = common dso_local global i32 0, align 4
@AVISplitter_Sample = common dso_local global i32 0, align 4
@AVISplitter_QueryAccept = common dso_local global i32 0, align 4
@AVISplitter_InputPin_PreConnect = common dso_local global i32 0, align 4
@AVISplitter_Flush = common dso_local global i32 0, align 4
@AVISplitter_Disconnect = common dso_local global i32 0, align 4
@AVISplitter_first_request = common dso_local global i32 0, align 4
@AVISplitter_done_process = common dso_local global i32 0, align 4
@AVISplitter_seek = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AVISplitter_create(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32**, i32*** %5, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %8, i32** %9)
  %11 = load i32**, i32*** %5, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @CLASS_E_NOAGGREGATION, align 4
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = call %struct.TYPE_6__* @CoTaskMemAlloc(i32 24)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* @AVISplitter_Sample, align 4
  %25 = load i32, i32* @AVISplitter_QueryAccept, align 4
  %26 = load i32, i32* @AVISplitter_InputPin_PreConnect, align 4
  %27 = load i32, i32* @AVISplitter_Flush, align 4
  %28 = load i32, i32* @AVISplitter_Disconnect, align 4
  %29 = load i32, i32* @AVISplitter_first_request, align 4
  %30 = load i32, i32* @AVISplitter_done_process, align 4
  %31 = load i32, i32* @AVISplitter_seek, align 4
  %32 = call i32 @Parser_Create(%struct.TYPE_7__* %23, i32* @AVISplitterImpl_Vtbl, i32* @CLSID_AviSplitter, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32* null, i32 %31, i32* null)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %16
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %16
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32**, i32*** %5, align 8
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %36, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @TRACE(i8*, i32*, i32**) #1

declare dso_local %struct.TYPE_6__* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @Parser_Create(%struct.TYPE_7__*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
