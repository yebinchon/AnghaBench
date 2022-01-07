; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_get_tex_from_handle.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_get_tex_from_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*, i32*, i32**)* }
%struct.nvenc_data = type { %struct.TYPE_12__, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { i64, %struct.handle_tex* }
%struct.handle_tex = type { i64, i64, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_16__*, i32, i32*, %struct.TYPE_15__**)* }

@IID_ID3D11Texture2D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"OpenSharedResource failed\00", align 1
@IID_IDXGIKeyedMutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"QueryInterface(IDXGIKeyedMutex) failed\00", align 1
@DXGI_RESOURCE_PRIORITY_MAXIMUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.nvenc_data*, i64, i32**)* @get_tex_from_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @get_tex_from_handle(%struct.nvenc_data* %0, i64 %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.nvenc_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.handle_tex*, align 8
  %14 = alloca %struct.handle_tex, align 8
  store %struct.nvenc_data* %0, %struct.nvenc_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %15 = load %struct.nvenc_data*, %struct.nvenc_data** %5, align 8
  %16 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %8, align 8
  store i64 0, i64* %12, align 8
  br label %18

18:                                               ; preds = %46, %3
  %19 = load i64, i64* %12, align 8
  %20 = load %struct.nvenc_data*, %struct.nvenc_data** %5, align 8
  %21 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %18
  %26 = load %struct.nvenc_data*, %struct.nvenc_data** %5, align 8
  %27 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.handle_tex*, %struct.handle_tex** %28, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds %struct.handle_tex, %struct.handle_tex* %29, i64 %30
  store %struct.handle_tex* %31, %struct.handle_tex** %13, align 8
  %32 = load %struct.handle_tex*, %struct.handle_tex** %13, align 8
  %33 = getelementptr inbounds %struct.handle_tex, %struct.handle_tex* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.handle_tex*, %struct.handle_tex** %13, align 8
  %39 = getelementptr inbounds %struct.handle_tex, %struct.handle_tex* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load i32**, i32*** %7, align 8
  store i32* %40, i32** %41, align 8
  %42 = load %struct.handle_tex*, %struct.handle_tex** %13, align 8
  %43 = getelementptr inbounds %struct.handle_tex, %struct.handle_tex* %42, i32 0, i32 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %4, align 8
  br label %114

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %12, align 8
  br label %18

49:                                               ; preds = %18
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_16__*, i32, i32*, %struct.TYPE_15__**)*, i32 (%struct.TYPE_16__*, i32, i32*, %struct.TYPE_15__**)** %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 %54(%struct.TYPE_16__* %55, i32 %57, i32* @IID_ID3D11Texture2D, %struct.TYPE_15__** %10)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = call i32 @error_hr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %114

64:                                               ; preds = %49
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i32 (%struct.TYPE_15__*, i32*, i32**)*, i32 (%struct.TYPE_15__*, i32*, i32**)** %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %71 = call i32 %69(%struct.TYPE_15__* %70, i32* @IID_IDXGIKeyedMutex, i32** %9)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @FAILED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %64
  %76 = call i32 @error_hr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %80, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %83 = call i32 %81(%struct.TYPE_15__* %82)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %114

84:                                               ; preds = %64
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %91 = load i32, i32* @DXGI_RESOURCE_PRIORITY_MAXIMUM, align 4
  %92 = call i32 %89(%struct.TYPE_15__* %90, i32 %91)
  %93 = load i32*, i32** %9, align 8
  %94 = load i32**, i32*** %7, align 8
  store i32* %93, i32** %94, align 8
  %95 = getelementptr inbounds %struct.handle_tex, %struct.handle_tex* %14, i32 0, i32 0
  %96 = load i64, i64* %6, align 8
  store i64 %96, i64* %95, align 8
  %97 = getelementptr inbounds %struct.handle_tex, %struct.handle_tex* %14, i32 0, i32 1
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = ptrtoint %struct.TYPE_15__* %98 to i64
  store i64 %99, i64* %97, align 8
  %100 = getelementptr inbounds %struct.handle_tex, %struct.handle_tex* %14, i32 0, i32 2
  %101 = load i32*, i32** %9, align 8
  store i32* %101, i32** %100, align 8
  %102 = getelementptr inbounds %struct.handle_tex, %struct.handle_tex* %14, i32 0, i32 3
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %102, align 8
  %103 = getelementptr inbounds %struct.handle_tex, %struct.handle_tex* %14, i32 0, i32 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %103, align 8
  %104 = getelementptr inbounds %struct.handle_tex, %struct.handle_tex* %14, i32 0, i32 5
  store i32* null, i32** %104, align 8
  %105 = load %struct.nvenc_data*, %struct.nvenc_data** %5, align 8
  %106 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %105, i32 0, i32 0
  %107 = bitcast %struct.TYPE_12__* %106 to { i64, %struct.handle_tex* }*
  %108 = getelementptr inbounds { i64, %struct.handle_tex* }, { i64, %struct.handle_tex* }* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds { i64, %struct.handle_tex* }, { i64, %struct.handle_tex* }* %107, i32 0, i32 1
  %111 = load %struct.handle_tex*, %struct.handle_tex** %110, align 8
  %112 = call i32 @da_push_back(i64 %109, %struct.handle_tex* %111, %struct.handle_tex* %14)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %113, %struct.TYPE_15__** %4, align 8
  br label %114

114:                                              ; preds = %84, %75, %62, %37
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %115
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @error_hr(i8*) #1

declare dso_local i32 @da_push_back(i64, %struct.handle_tex*, %struct.handle_tex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
