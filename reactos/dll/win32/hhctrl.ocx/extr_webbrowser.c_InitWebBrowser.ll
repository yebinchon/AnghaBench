; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_webbrowser.c_InitWebBrowser.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_webbrowser.c_InitWebBrowser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64, %struct.TYPE_16__, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.IUnknown = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@OleClientSiteVtbl = common dso_local global i32 0, align 4
@OleInPlaceSiteVtbl = common dso_local global i32 0, align 4
@OleInPlaceFrameVtbl = common dso_local global i32 0, align 4
@DocHostUIHandlerVtbl = common dso_local global i32 0, align 4
@CLSID_WebBrowser = common dso_local global i32 0, align 4
@IID_IOleObject = common dso_local global i32 0, align 4
@OLERENDER_DRAW = common dso_local global i32 0, align 4
@MyIStorage = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OLEIVERB_SHOW = common dso_local global i32 0, align 4
@IID_IOleInPlaceObject = common dso_local global i32 0, align 4
@IID_IWebBrowser2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitWebBrowser(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call %struct.TYPE_14__* @heap_alloc_zero(i32 56)
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %105

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i32* @OleClientSiteVtbl, i32** %18, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i32* @OleInPlaceSiteVtbl, i32** %21, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i32* @OleInPlaceFrameVtbl, i32** %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i32* @DocHostUIHandlerVtbl, i32** %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %35, align 8
  %36 = load i32, i32* @OLERENDER_DRAW, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = bitcast i64* %40 to i8**
  %42 = call i32 @OleCreate(i32* @CLSID_WebBrowser, i32* @IID_IOleObject, i32 %36, i32 0, %struct.TYPE_16__* %38, i32* @MyIStorage, i8** %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %15
  br label %101

47:                                               ; preds = %15
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @GetClientRect(i32 %48, i32* %9)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.IUnknown*
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @OleSetContainedObject(%struct.IUnknown* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %101

60:                                               ; preds = %47
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @OLEIVERB_SHOW, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @IOleObject_DoVerb(i64 %63, i32 %64, i32* null, %struct.TYPE_16__* %66, i32 -1, i32 %67, i32* %9)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @FAILED(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %101

73:                                               ; preds = %60
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = bitcast i32** %7 to i8**
  %78 = call i32 @IOleObject_QueryInterface(i64 %76, i32* @IID_IOleInPlaceObject, i8** %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %101

83:                                               ; preds = %73
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @IOleInPlaceObject_SetObjectRects(i32* %84, i32* %9, i32* %9)
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @IOleInPlaceObject_Release(i32* %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = bitcast i32* %92 to i8**
  %94 = call i32 @IOleObject_QueryInterface(i64 %90, i32* @IID_IWebBrowser2, i8** %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @SUCCEEDED(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %83
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %3, align 4
  br label %105

100:                                              ; preds = %83
  br label %101

101:                                              ; preds = %100, %82, %72, %59, %46
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = call i32 @ReleaseWebBrowser(%struct.TYPE_15__* %102)
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %98, %13
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_14__* @heap_alloc_zero(i32) #1

declare dso_local i32 @OleCreate(i32*, i32*, i32, i32, %struct.TYPE_16__*, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @OleSetContainedObject(%struct.IUnknown*, i32) #1

declare dso_local i32 @IOleObject_DoVerb(i64, i32, i32*, %struct.TYPE_16__*, i32, i32, i32*) #1

declare dso_local i32 @IOleObject_QueryInterface(i64, i32*, i8**) #1

declare dso_local i32 @IOleInPlaceObject_SetObjectRects(i32*, i32*, i32*) #1

declare dso_local i32 @IOleInPlaceObject_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @ReleaseWebBrowser(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
