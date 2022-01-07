; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_filtergraph.c_all_renderers_seek.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_filtergraph.c_all_renderers_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32** }

@TRUE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"(%p)->(%p %08lx)\0A\00", align 1
@IID_IAMFilterMiscFlags = common dso_local global i32 0, align 4
@AM_FILTER_MISC_FLAGS_IS_RENDERER = common dso_local global i64 0, align 8
@IID_IMediaSeeking = common dso_local global i32 0, align 4
@E_NOTIMPL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64 (%struct.TYPE_7__*, i32*, i32)*, i32)* @all_renderers_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @all_renderers_seek(%struct.TYPE_7__* %0, i64 (%struct.TYPE_7__*, i32*, i32)* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64 (%struct.TYPE_7__*, i32*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 (%struct.TYPE_7__*, i32*, i32)* %1, i64 (%struct.TYPE_7__*, i32*, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i64, i64* @TRUE, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* @S_OK, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = load i64 (%struct.TYPE_7__*, i32*, i32)*, i64 (%struct.TYPE_7__*, i32*, i32)** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %18, i64 (%struct.TYPE_7__*, i32*, i32)* %19, i32 %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %90, %3
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %22
  store i32* null, i32** %12, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = bitcast i32** %14 to i8**
  %38 = call i32 @IBaseFilter_QueryInterface(i32* %36, i32* @IID_IAMFilterMiscFlags, i8** %37)
  %39 = load i32*, i32** %14, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %28
  br label %90

42:                                               ; preds = %28
  %43 = load i32*, i32** %14, align 8
  %44 = call i64 @IAMFilterMiscFlags_GetMiscFlags(i32* %43)
  store i64 %44, i64* %15, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @IAMFilterMiscFlags_Release(i32* %45)
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* @AM_FILTER_MISC_FLAGS_IS_RENDERER, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %90

51:                                               ; preds = %42
  %52 = load i32*, i32** %13, align 8
  %53 = bitcast i32** %12 to i8**
  %54 = call i32 @IBaseFilter_QueryInterface(i32* %52, i32* @IID_IMediaSeeking, i8** %53)
  %55 = load i32*, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %90

58:                                               ; preds = %51
  %59 = load i64 (%struct.TYPE_7__*, i32*, i32)*, i64 (%struct.TYPE_7__*, i32*, i32)** %6, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 %59(%struct.TYPE_7__* %60, i32* %61, i32 %62)
  store i64 %63, i64* %10, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @IMediaSeeking_Release(i32* %64)
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @E_NOTIMPL, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %69, %58
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %10, align 8
  %77 = call i64 @FAILED(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @E_NOTIMPL, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i64, i64* %11, align 8
  %85 = call i64 @SUCCEEDED(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %71
  %88 = load i64, i64* %10, align 8
  store i64 %88, i64* %11, align 8
  br label %89

89:                                               ; preds = %87, %83, %79, %75
  br label %90

90:                                               ; preds = %89, %57, %50, %41
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %22

93:                                               ; preds = %22
  %94 = load i64, i64* %8, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i64, i64* @E_NOTIMPL, align 8
  store i64 %97, i64* %4, align 8
  br label %100

98:                                               ; preds = %93
  %99 = load i64, i64* %11, align 8
  store i64 %99, i64* %4, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_7__*, i64 (%struct.TYPE_7__*, i32*, i32)*, i32) #1

declare dso_local i32 @IBaseFilter_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IAMFilterMiscFlags_GetMiscFlags(i32*) #1

declare dso_local i32 @IAMFilterMiscFlags_Release(i32*) #1

declare dso_local i32 @IMediaSeeking_Release(i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @SUCCEEDED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
