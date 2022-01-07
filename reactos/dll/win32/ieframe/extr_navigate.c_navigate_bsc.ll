; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_navigate_bsc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_navigate_bsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }

@VARIANT_FALSE = common dso_local global i8* null, align 8
@READYSTATE_LOADING = common dso_local global i32 0, align 4
@VT_UI1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Navigation canceled\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CSC_NAVIGATEBACK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CSC_NAVIGATEFORWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*)* @navigate_bsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navigate_bsc(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** @VARIANT_FALSE, align 8
  store i8* %12, i8** %8, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = load i32, i32* @READYSTATE_LOADING, align 4
  %15 = call i32 @set_doc_state(%struct.TYPE_17__* %13, i32 %14)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load i32, i32* @VT_UI1, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_16__* @SafeArrayCreateVector(i32 %21, i32 0, i32 %24)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %9, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32 %28, %struct.TYPE_16__* %29, i32 %32)
  br label %34

34:                                               ; preds = %20, %3
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @on_before_navigate2(%struct.TYPE_17__* %35, i32 %38, %struct.TYPE_16__* %39, i32 %42, i8** %8)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %45 = icmp ne %struct.TYPE_16__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %48 = call i32 @SafeArrayDestroy(%struct.TYPE_16__* %47)
  br label %49

49:                                               ; preds = %46, %34
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @S_OK, align 4
  store i32 %54, i32* %4, align 4
  br label %115

55:                                               ; preds = %49
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i32 @notify_download_state(%struct.TYPE_17__* %56, i32 %57)
  %59 = load i8*, i8** @VARIANT_FALSE, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = load i32, i32* @CSC_NAVIGATEBACK, align 4
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @on_commandstate_change(%struct.TYPE_17__* %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = load i32, i32* @CSC_NAVIGATEFORWARD, align 4
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @on_commandstate_change(%struct.TYPE_17__* %66, i32 %67, i32 %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %55
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = call i32 @deactivate_document(%struct.TYPE_17__* %75)
  br label %77

77:                                               ; preds = %74, %55
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = call i32 @CreateAsyncBindCtx(i32 0, i32* %79, i32 0, i32** %10)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @FALSE, align 4
  %90 = call i32 @IOleInPlaceFrame_EnableModeless(i64 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %77
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = call i32 @bind_to_object(%struct.TYPE_17__* %92, i32* %93, i32 %96, i32* %97, i32* %99)
  store i32 %100, i32* %11, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %91
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @TRUE, align 4
  %110 = call i32 @IOleInPlaceFrame_EnableModeless(i64 %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %91
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @IBindCtx_Release(i32* %112)
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %52
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @set_doc_state(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_16__* @SafeArrayCreateVector(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @on_before_navigate2(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, i32, i8**) #1

declare dso_local i32 @SafeArrayDestroy(%struct.TYPE_16__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @notify_download_state(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @on_commandstate_change(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @deactivate_document(%struct.TYPE_17__*) #1

declare dso_local i32 @CreateAsyncBindCtx(i32, i32*, i32, i32**) #1

declare dso_local i32 @IOleInPlaceFrame_EnableModeless(i64, i32) #1

declare dso_local i32 @bind_to_object(%struct.TYPE_17__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
