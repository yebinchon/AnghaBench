; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_configure_created_swapchain.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_configure_created_swapchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.mp_colorspace = type { i32 }

@DXGI_FORMAT_UNKNOWN = common dso_local global i64 0, align 8
@DXGI_COLOR_SPACE_RGB_FULL_G22_NONE_P709 = common dso_local global i32 0, align 4
@DXGI_FORMAT_R8G8B8A8_UNORM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Selected swapchain format %s (%d), attempting to utilize it.\0A\00", align 1
@.str.1 = private unnamed_addr constant [159 x i8] c"User selected a D3D11 color space %s (%d), but configuration of color spaces is only supportedfrom Windows 10! The default configuration has been left as-is.\0A\00", align 1
@.str.2 = private unnamed_addr constant [92 x i8] c"Color space %s (%d) does not have an mpv color space mapping! Overriding to standard sRGB!\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Selected swapchain color space %s (%d), attempting to utilize it.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32*, i64, i32, %struct.mp_colorspace*)* @configure_created_swapchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_created_swapchain(%struct.mp_log* %0, i32* %1, i64 %2, i32 %3, %struct.mp_colorspace* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_log*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_colorspace*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.mp_colorspace, align 4
  %19 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.mp_colorspace* %4, %struct.mp_colorspace** %11, align 8
  %20 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  store i64 %21, i64* %13, align 8
  %22 = load i32, i32* @DXGI_COLOR_SPACE_RGB_FULL_G22_NONE_P709, align 4
  store i32 %22, i32* %14, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %23 = bitcast %struct.mp_colorspace* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  store i32 0, i32* %19, align 4
  %24 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @query_output_format_and_colorspace(%struct.mp_log* %24, i32* %25, i64* %12, i32* %14)
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i64, i64* %9, align 8
  br label %42

32:                                               ; preds = %5
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* %12, align 8
  br label %40

38:                                               ; preds = %32
  %39 = load i64, i64* @DXGI_FORMAT_R8G8B8A8_UNORM, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  br label %42

42:                                               ; preds = %40, %30
  %43 = phi i64 [ %31, %30 ], [ %41, %40 ]
  store i64 %43, i64* %13, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %14, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %15, align 4
  %52 = load i64, i64* %13, align 8
  %53 = call i8* @d3d11_get_format_name(i64 %52)
  store i8* %53, i8** %16, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i8* @d3d11_get_csp_name(i32 %54)
  store i8* %55, i8** %17, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @d3d11_get_mp_csp(i32 %56, %struct.mp_colorspace* %18)
  store i32 %57, i32* %19, align 4
  %58 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = load i64, i64* %13, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @mp_verbose(%struct.mp_log* %58, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %61)
  %63 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @update_swapchain_format(%struct.mp_log* %63, i32* %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %111

69:                                               ; preds = %50
  %70 = call i32 (...) @IsWindows10OrGreater()
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @mp_warn(%struct.mp_log* %76, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.1, i64 0, i64 0), i8* %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  store i32 1, i32* %6, align 4
  br label %111

81:                                               ; preds = %69
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @mp_warn(%struct.mp_log* %85, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0), i8* %86, i32 %87)
  %89 = load i32, i32* @DXGI_COLOR_SPACE_RGB_FULL_G22_NONE_P709, align 4
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @d3d11_get_mp_csp(i32 %90, %struct.mp_colorspace* %18)
  br label %92

92:                                               ; preds = %84, %81
  %93 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @mp_verbose(%struct.mp_log* %93, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* %94, i32 %95)
  %97 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @update_swapchain_color_space(%struct.mp_log* %97, i32* %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  br label %111

103:                                              ; preds = %92
  %104 = load %struct.mp_colorspace*, %struct.mp_colorspace** %11, align 8
  %105 = icmp ne %struct.mp_colorspace* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.mp_colorspace*, %struct.mp_colorspace** %11, align 8
  %108 = bitcast %struct.mp_colorspace* %107 to i8*
  %109 = bitcast %struct.mp_colorspace* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 %109, i64 4, i1 false)
  br label %110

110:                                              ; preds = %106, %103
  store i32 1, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %102, %80, %68
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @query_output_format_and_colorspace(%struct.mp_log*, i32*, i64*, i32*) #2

declare dso_local i8* @d3d11_get_format_name(i64) #2

declare dso_local i8* @d3d11_get_csp_name(i32) #2

declare dso_local i32 @d3d11_get_mp_csp(i32, %struct.mp_colorspace*) #2

declare dso_local i32 @mp_verbose(%struct.mp_log*, i8*, i8*, i32) #2

declare dso_local i32 @update_swapchain_format(%struct.mp_log*, i32*, i64) #2

declare dso_local i32 @IsWindows10OrGreater(...) #2

declare dso_local i32 @mp_warn(%struct.mp_log*, i8*, i8*, i32) #2

declare dso_local i32 @update_swapchain_color_space(%struct.mp_log*, i32*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
