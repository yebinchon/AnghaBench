; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nv_texture_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nv_texture_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (i32, %struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*, i32)* }
%struct.nvenc_data = type { i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_21__*, %struct.TYPE_22__*, i32*, %struct.TYPE_20__**)* }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_16__, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.nv_texture = type { %struct.TYPE_20__*, i32 }

@DXGI_FORMAT_NV12 = common dso_local global i32 0, align 4
@D3D11_BIND_RENDER_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to create texture\00", align 1
@DXGI_RESOURCE_PRIORITY_MAXIMUM = common dso_local global i32 0, align 4
@NV_ENC_REGISTER_RESOURCE_VER = common dso_local global i32 0, align 4
@NV_ENC_INPUT_RESOURCE_TYPE_DIRECTX = common dso_local global i32 0, align 4
@NV_ENC_BUFFER_FORMAT_NV12 = common dso_local global i32 0, align 4
@nv = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvenc_data*, %struct.nv_texture*)* @nv_texture_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_texture_init(%struct.nvenc_data* %0, %struct.nv_texture* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvenc_data*, align 8
  %5 = alloca %struct.nv_texture*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca %struct.TYPE_19__, align 8
  store %struct.nvenc_data* %0, %struct.nvenc_data** %4, align 8
  store %struct.nv_texture* %1, %struct.nv_texture** %5, align 8
  %11 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %12 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %11, i32 0, i32 3
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %6, align 8
  %14 = bitcast %struct.TYPE_22__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %16 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 6
  store i32 %17, i32* %18, align 4
  %19 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %20 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 5
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @DXGI_FORMAT_NV12, align 4
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @D3D11_BIND_RENDER_TARGET, align 4
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_21__*, %struct.TYPE_22__*, i32*, %struct.TYPE_20__**)*, i32 (%struct.TYPE_21__*, %struct.TYPE_22__*, i32*, %struct.TYPE_20__**)** %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = call i32 %35(%struct.TYPE_21__* %36, %struct.TYPE_22__* %9, i32* null, %struct.TYPE_20__** %7)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = call i32 @error_hr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

43:                                               ; preds = %2
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %47, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %50 = load i32, i32* @DXGI_RESOURCE_PRIORITY_MAXIMUM, align 4
  %51 = call i32 %48(%struct.TYPE_20__* %49, i32 %50)
  %52 = bitcast %struct.TYPE_19__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %52, i8 0, i64 32, i1 false)
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %54 = load i32, i32* @NV_ENC_REGISTER_RESOURCE_VER, align 4
  store i32 %54, i32* %53, align 8
  %55 = load i32, i32* @NV_ENC_INPUT_RESOURCE_TYPE_DIRECTX, align 4
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 5
  store i32 %55, i32* %56, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 4
  store %struct.TYPE_20__* %57, %struct.TYPE_20__** %58, align 8
  %59 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %60 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  %63 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %64 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* @NV_ENC_BUFFER_FORMAT_NV12, align 4
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i32 (i32, %struct.TYPE_19__*)*, i32 (i32, %struct.TYPE_19__*)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @nv, i32 0, i32 0), align 8
  %70 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %71 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %69(i32 %72, %struct.TYPE_19__* %10)
  %74 = call i64 @NV_FAILED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %43
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %83 = call i32 %81(%struct.TYPE_20__* %82)
  store i32 0, i32* %3, align 4
  br label %92

84:                                               ; preds = %43
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.nv_texture*, %struct.nv_texture** %5, align 8
  %88 = getelementptr inbounds %struct.nv_texture, %struct.nv_texture* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %90 = load %struct.nv_texture*, %struct.nv_texture** %5, align 8
  %91 = getelementptr inbounds %struct.nv_texture, %struct.nv_texture* %90, i32 0, i32 0
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %91, align 8
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %84, %76, %41
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @error_hr(i8*) #2

declare dso_local i64 @NV_FAILED(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
