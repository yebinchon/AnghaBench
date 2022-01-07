; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_query_output_format_and_colorspace.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_query_output_format_and_colorspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"Failed to get swap chain's containing output: %s!\0A\00", align 1
@IID_IDXGIOutput6 = common dso_local global i32 0, align 4
@MSGL_ERR = common dso_local global i32 0, align 4
@MSGL_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to create a DXGI 1.6 output interface: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Failed to query swap chain's output information: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Queried output: %s, %ldx%ld @ %d bits, colorspace: %s (%d)\0A\00", align 1
@DXGI_FORMAT_R10G10B10A2_UNORM = common dso_local global i32 0, align 4
@DXGI_FORMAT_R8G8B8A8_UNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32*, i32*, i32*)* @query_output_format_and_colorspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_output_format_and_colorspace(%struct.mp_log* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_log*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %16 = bitcast %struct.TYPE_5__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 48, i1 false)
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %4
  store i32 0, i32* %5, align 4
  br label %114

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @IDXGISwapChain_GetContainingOutput(i32* %24, i32** %10)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @mp_HRESULT_to_str(i32 %31)
  %33 = call i32 @mp_err(%struct.mp_log* %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %106

34:                                               ; preds = %23
  %35 = load i32*, i32** %10, align 8
  %36 = bitcast i32** %11 to i8**
  %37 = call i32 @IDXGIOutput_QueryInterface(i32* %35, i32* @IID_IDXGIOutput6, i8** %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %43 = call i64 (...) @IsWindows10OrGreater()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @MSGL_ERR, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @MSGL_V, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @mp_HRESULT_to_str(i32 %51)
  %53 = call i32 @mp_msg(%struct.mp_log* %42, i32 %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %106

54:                                               ; preds = %34
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @IDXGIOutput6_GetDesc1(i32* %55, %struct.TYPE_5__* %12)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @mp_HRESULT_to_str(i32 %62)
  %64 = call i32 @mp_err(%struct.mp_log* %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %106

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @mp_to_utf8(i32* null, i32 %67)
  store i8* %68, i8** %13, align 8
  %69 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @d3d11_get_csp_name(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mp_verbose(%struct.mp_log* %69, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %70, i64 %77, i64 %84, i32 %86, i32 %89, i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 8
  br i1 %98, label %99, label %101

99:                                               ; preds = %65
  %100 = load i32, i32* @DXGI_FORMAT_R10G10B10A2_UNORM, align 4
  br label %103

101:                                              ; preds = %65
  %102 = load i32, i32* @DXGI_FORMAT_R8G8B8A8_UNORM, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  store i32 1, i32* %14, align 4
  br label %106

106:                                              ; preds = %103, %60, %49, %29
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @talloc_free(i8* %107)
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @SAFE_RELEASE(i32* %109)
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @SAFE_RELEASE(i32* %111)
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %106, %22
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IDXGISwapChain_GetContainingOutput(i32*, i32**) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32) #2

declare dso_local i32 @mp_HRESULT_to_str(i32) #2

declare dso_local i32 @IDXGIOutput_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @mp_msg(%struct.mp_log*, i32, i8*, i32) #2

declare dso_local i64 @IsWindows10OrGreater(...) #2

declare dso_local i32 @IDXGIOutput6_GetDesc1(i32*, %struct.TYPE_5__*) #2

declare dso_local i8* @mp_to_utf8(i32*, i32) #2

declare dso_local i32 @mp_verbose(%struct.mp_log*, i8*, i8*, i64, i64, i32, i32, i32) #2

declare dso_local i32 @d3d11_get_csp_name(i32) #2

declare dso_local i32 @talloc_free(i8*) #2

declare dso_local i32 @SAFE_RELEASE(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
