; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_init_d3d11.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_init_d3d11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvenc_data = type { i32*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*, i32, %struct.TYPE_13__**)* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*)* }

@.str = private unnamed_addr constant [9 x i8] c"DXGI.dll\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"D3D11.dll\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"CreateDXGIFactory1\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"D3D11CreateDevice\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to load D3D11/DXGI procedures\00", align 1
@IID_IDXGIFactory1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"CreateDXGIFactory1 failed\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"EnumAdapters failed\00", align 1
@D3D_DRIVER_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@D3D11_SDK_VERSION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"D3D11CreateDevice failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvenc_data*, i32*)* @init_d3d11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_d3d11(%struct.nvenc_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvenc_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, %struct.TYPE_14__**)*, align 8
  %9 = alloca i32 (%struct.TYPE_13__*, i32, i32*, i32, i32*, i32, i32, i32**, i32*, i32**)*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.nvenc_data* %0, %struct.nvenc_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %16 = call i32 @get_lib(%struct.nvenc_data* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %18 = call i32 @get_lib(%struct.nvenc_data* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %92

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @GetProcAddress(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %28 = inttoptr i64 %27 to i32 (i32*, %struct.TYPE_14__**)*
  store i32 (i32*, %struct.TYPE_14__**)* %28, i32 (i32*, %struct.TYPE_14__**)** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @GetProcAddress(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %31 = inttoptr i64 %30 to i32 (%struct.TYPE_13__*, i32, i32*, i32, i32*, i32, i32, i32**, i32*, i32**)*
  store i32 (%struct.TYPE_13__*, i32, i32*, i32, i32*, i32, i32, i32**, i32*, i32**)* %31, i32 (%struct.TYPE_13__*, i32, i32*, i32, i32*, i32, i32, i32**, i32*, i32**)** %9, align 8
  %32 = load i32 (i32*, %struct.TYPE_14__**)*, i32 (i32*, %struct.TYPE_14__**)** %8, align 8
  %33 = icmp ne i32 (i32*, %struct.TYPE_14__**)* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32 (%struct.TYPE_13__*, i32, i32*, i32, i32*, i32, i32, i32**, i32*, i32**)*, i32 (%struct.TYPE_13__*, i32, i32*, i32, i32*, i32, i32, i32**, i32*, i32**)** %9, align 8
  %36 = icmp ne i32 (%struct.TYPE_13__*, i32, i32*, i32, i32*, i32, i32, i32**, i32*, i32**)* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %25
  %38 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

39:                                               ; preds = %34
  %40 = load i32 (i32*, %struct.TYPE_14__**)*, i32 (i32*, %struct.TYPE_14__**)** %8, align 8
  %41 = call i32 %40(i32* @IID_IDXGIFactory1, %struct.TYPE_14__** %10)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 @error_hr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

47:                                               ; preds = %39
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_14__*, i32, %struct.TYPE_13__**)*, i32 (%struct.TYPE_14__*, i32, %struct.TYPE_13__**)** %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = call i32 %52(%struct.TYPE_14__* %53, i32 0, %struct.TYPE_13__** %11)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %61 = call i32 %59(%struct.TYPE_14__* %60)
  %62 = load i32, i32* %14, align 4
  %63 = call i64 @FAILED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %47
  %66 = call i32 @error_hr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

67:                                               ; preds = %47
  %68 = load i32 (%struct.TYPE_13__*, i32, i32*, i32, i32*, i32, i32, i32**, i32*, i32**)*, i32 (%struct.TYPE_13__*, i32, i32*, i32, i32*, i32, i32, i32**, i32*, i32**)** %9, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %70 = load i32, i32* @D3D_DRIVER_TYPE_UNKNOWN, align 4
  %71 = load i32, i32* @D3D11_SDK_VERSION, align 4
  %72 = call i32 %68(%struct.TYPE_13__* %69, i32 %70, i32* null, i32 0, i32* null, i32 0, i32 %71, i32** %12, i32* null, i32** %13)
  store i32 %72, i32* %14, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %79 = call i32 %77(%struct.TYPE_13__* %78)
  %80 = load i32, i32* %14, align 4
  %81 = call i64 @FAILED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %67
  %84 = call i32 @error_hr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

85:                                               ; preds = %67
  %86 = load i32*, i32** %12, align 8
  %87 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %88 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %87, i32 0, i32 1
  store i32* %86, i32** %88, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %91 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %85, %83, %65, %45, %37, %24
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @get_lib(%struct.nvenc_data*, i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @error_hr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
