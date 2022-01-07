; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_get_d3d11_adapter.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_get_d3d11_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.bstr = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@S_OK = common dso_local global i64 0, align 8
@IID_IDXGIFactory1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to create a DXGI factory: %s\0A\00", align 1
@DXGI_ERROR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to enumerate at adapter %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Failed to get adapter description when listing at adapter %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Adapter %u: vendor: %u, description: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.mp_log*, i64, %struct.bstr*)* @get_d3d11_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_d3d11_adapter(%struct.mp_log* %0, i64 %1, %struct.bstr* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bstr, align 8
  %6 = alloca %struct.mp_log*, align 8
  %7 = alloca %struct.bstr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__, align 4
  %14 = alloca i8*, align 8
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  store i64 %1, i64* %15, align 8
  store %struct.mp_log* %0, %struct.mp_log** %6, align 8
  store %struct.bstr* %2, %struct.bstr** %7, align 8
  %16 = load i64, i64* @S_OK, align 8
  store i64 %16, i64* %8, align 8
  store i32* null, i32** %10, align 8
  %17 = bitcast i32** %9 to i8**
  %18 = call i64 @pCreateDXGIFactory1(i32* @IID_IDXGIFactory1, i8** %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @FAILED(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @mp_HRESULT_to_str(i64 %24)
  %26 = call i32 @mp_fatal(%struct.mp_log* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32* null, i32** %4, align 8
  br label %100

27:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %93, %27
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @DXGI_ERROR_NOT_FOUND, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %28
  store i32* null, i32** %12, align 8
  %33 = bitcast %struct.TYPE_3__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 12, i1 false)
  store i8* null, i8** %14, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @IDXGIFactory1_EnumAdapters1(i32* %34, i32 %35, i32** %12)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @FAILED(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @DXGI_ERROR_NOT_FOUND, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @mp_fatal(%struct.mp_log* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  br label %93

49:                                               ; preds = %32
  %50 = load i32*, i32** %12, align 8
  %51 = call i64 @IDXGIAdapter1_GetDesc1(i32* %50, %struct.TYPE_3__* %13)
  %52 = call i64 @FAILED(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @mp_fatal(%struct.mp_log* %55, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %93

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @mp_to_utf8(i32* null, i32 %60)
  store i8* %61, i8** %14, align 8
  %62 = load %struct.bstr*, %struct.bstr** %7, align 8
  %63 = icmp ne %struct.bstr* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.bstr*, %struct.bstr** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @bstr_xappend_asprintf(i32* null, %struct.bstr* %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %64, %58
  %72 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @bstr0(i8* %76)
  %78 = getelementptr inbounds %struct.bstr, %struct.bstr* %5, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @bstr_case_startswith(i32 %77, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32*, i32** %12, align 8
  store i32* %83, i32** %10, align 8
  br label %84

84:                                               ; preds = %82, %75, %71
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @talloc_free(i8* %85)
  %87 = load i32*, i32** %10, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %96

90:                                               ; preds = %84
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @SAFE_RELEASE(i32* %91)
  br label %93

93:                                               ; preds = %90, %54, %48
  %94 = load i32, i32* %11, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %28

96:                                               ; preds = %89, %28
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @SAFE_RELEASE(i32* %97)
  %99 = load i32*, i32** %10, align 8
  store i32* %99, i32** %4, align 8
  br label %100

100:                                              ; preds = %96, %22
  %101 = load i32*, i32** %4, align 8
  ret i32* %101
}

declare dso_local i64 @pCreateDXGIFactory1(i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @mp_fatal(%struct.mp_log*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @IDXGIFactory1_EnumAdapters1(i32*, i32, i32**) #1

declare dso_local i64 @IDXGIAdapter1_GetDesc1(i32*, %struct.TYPE_3__*) #1

declare dso_local i8* @mp_to_utf8(i32*, i32) #1

declare dso_local i32 @bstr_xappend_asprintf(i32*, %struct.bstr*, i8*, i32, i32, i8*) #1

declare dso_local i64 @bstr_case_startswith(i32, i64) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @SAFE_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
