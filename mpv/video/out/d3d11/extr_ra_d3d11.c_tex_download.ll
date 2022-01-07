; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_tex_download.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_tex_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i32 }
%struct.ra_tex_download_params = type { i8*, i32, %struct.ra_tex* }
%struct.ra_tex = type { %struct.TYPE_4__, %struct.d3d_tex* }
%struct.TYPE_4__ = type { i32 }
%struct.d3d_tex = type { i64, i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@D3D11_MAP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to map staging texture: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra*, %struct.ra_tex_download_params*)* @tex_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tex_download(%struct.ra* %0, %struct.ra_tex_download_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.ra_tex_download_params*, align 8
  %6 = alloca %struct.ra_d3d11*, align 8
  %7 = alloca %struct.ra_tex*, align 8
  %8 = alloca %struct.d3d_tex*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.ra_tex_download_params* %1, %struct.ra_tex_download_params** %5, align 8
  %14 = load %struct.ra*, %struct.ra** %4, align 8
  %15 = getelementptr inbounds %struct.ra, %struct.ra* %14, i32 0, i32 0
  %16 = load %struct.ra_d3d11*, %struct.ra_d3d11** %15, align 8
  store %struct.ra_d3d11* %16, %struct.ra_d3d11** %6, align 8
  %17 = load %struct.ra_tex_download_params*, %struct.ra_tex_download_params** %5, align 8
  %18 = getelementptr inbounds %struct.ra_tex_download_params, %struct.ra_tex_download_params* %17, i32 0, i32 2
  %19 = load %struct.ra_tex*, %struct.ra_tex** %18, align 8
  store %struct.ra_tex* %19, %struct.ra_tex** %7, align 8
  %20 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %21 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %20, i32 0, i32 1
  %22 = load %struct.d3d_tex*, %struct.d3d_tex** %21, align 8
  store %struct.d3d_tex* %22, %struct.d3d_tex** %8, align 8
  %23 = load %struct.d3d_tex*, %struct.d3d_tex** %8, align 8
  %24 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %105

28:                                               ; preds = %2
  %29 = load %struct.ra_d3d11*, %struct.ra_d3d11** %6, align 8
  %30 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.d3d_tex*, %struct.d3d_tex** %8, align 8
  %33 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load %struct.d3d_tex*, %struct.d3d_tex** %8, align 8
  %37 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ID3D11DeviceContext_CopyResource(i32 %31, i32* %35, i32 %38)
  %40 = load %struct.ra_d3d11*, %struct.ra_d3d11** %6, align 8
  %41 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.d3d_tex*, %struct.d3d_tex** %8, align 8
  %44 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i32, i32* @D3D11_MAP_READ, align 4
  %48 = call i32 @ID3D11DeviceContext_Map(i32 %42, i32* %46, i32 0, i32 %47, i32 0, %struct.TYPE_5__* %10)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %28
  %53 = load %struct.ra*, %struct.ra** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @mp_HRESULT_to_str(i32 %54)
  %56 = call i32 @MP_ERR(%struct.ra* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 0, i32* %3, align 4
  br label %105

57:                                               ; preds = %28
  %58 = load %struct.ra_tex_download_params*, %struct.ra_tex_download_params** %5, align 8
  %59 = getelementptr inbounds %struct.ra_tex_download_params, %struct.ra_tex_download_params* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %93, %57
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %66 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %63
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.ra_tex_download_params*, %struct.ra_tex_download_params** %5, align 8
  %74 = getelementptr inbounds %struct.ra_tex_download_params, %struct.ra_tex_download_params* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %71, i64 %77
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %80, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  %86 = load %struct.ra_tex_download_params*, %struct.ra_tex_download_params** %5, align 8
  %87 = getelementptr inbounds %struct.ra_tex_download_params, %struct.ra_tex_download_params* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @MPMIN(i32 %88, i32 %90)
  %92 = call i32 @memcpy(i8* %78, i8* %85, i32 %91)
  br label %93

93:                                               ; preds = %70
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %63

96:                                               ; preds = %63
  %97 = load %struct.ra_d3d11*, %struct.ra_d3d11** %6, align 8
  %98 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.d3d_tex*, %struct.d3d_tex** %8, align 8
  %101 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = call i32 @ID3D11DeviceContext_Unmap(i32 %99, i32* %103, i32 0)
  store i32 1, i32* %3, align 4
  br label %105

105:                                              ; preds = %96, %52, %27
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @ID3D11DeviceContext_CopyResource(i32, i32*, i32) #1

declare dso_local i32 @ID3D11DeviceContext_Map(i32, i32*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_ERR(%struct.ra*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @ID3D11DeviceContext_Unmap(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
