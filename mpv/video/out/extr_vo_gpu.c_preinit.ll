; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_preinit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, i32, i32, %struct.gpu_priv* }
%struct.gpu_priv = type { i32, %struct.TYPE_2__*, i32, i32, %struct.ra_ctx_opts, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ra_ctx_opts = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@m_option_type_choice = common dso_local global i32 0, align 4
@call_request_hwdec_api = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preinit(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.gpu_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ra_ctx_opts, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 4
  %9 = load %struct.gpu_priv*, %struct.gpu_priv** %8, align 8
  store %struct.gpu_priv* %9, %struct.gpu_priv** %4, align 8
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %14 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.vo*, %struct.vo** %3, align 8
  %16 = getelementptr inbounds %struct.vo, %struct.vo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @mp_read_option_raw(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* @m_option_type_choice, i32* %5)
  %19 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %20 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %19, i32 0, i32 4
  %21 = bitcast %struct.ra_ctx_opts* %6 to i8*
  %22 = bitcast %struct.ra_ctx_opts* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 8 %22, i64 4, i1 false)
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.ra_ctx_opts, %struct.ra_ctx_opts* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.vo*, %struct.vo** %3, align 8
  %28 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %29 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %32 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.ra_ctx_opts, %struct.ra_ctx_opts* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_2__* @ra_ctx_create(%struct.vo* %27, i32 %30, i32 %33, i32 %35)
  %37 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %38 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %37, i32 0, i32 1
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %38, align 8
  %39 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %40 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %1
  br label %101

44:                                               ; preds = %1
  %45 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %46 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %52 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %58 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vo*, %struct.vo** %3, align 8
  %63 = getelementptr inbounds %struct.vo, %struct.vo* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vo*, %struct.vo** %3, align 8
  %66 = getelementptr inbounds %struct.vo, %struct.vo* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @gl_video_init(i32 %61, i32 %64, i32 %67)
  %69 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %70 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %72 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vo*, %struct.vo** %3, align 8
  %75 = getelementptr inbounds %struct.vo, %struct.vo* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @gl_video_set_osd_source(i32 %73, i32 %76)
  %78 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %79 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.vo*, %struct.vo** %3, align 8
  %82 = call i32 @gl_video_configure_queue(i32 %80, %struct.vo* %81)
  %83 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %84 = call i32 @get_and_update_icc_profile(%struct.gpu_priv* %83)
  %85 = call i32 (...) @hwdec_devices_create()
  %86 = load %struct.vo*, %struct.vo** %3, align 8
  %87 = getelementptr inbounds %struct.vo, %struct.vo* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.vo*, %struct.vo** %3, align 8
  %89 = getelementptr inbounds %struct.vo, %struct.vo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @call_request_hwdec_api, align 4
  %92 = load %struct.vo*, %struct.vo** %3, align 8
  %93 = call i32 @hwdec_devices_set_loader(i32 %90, i32 %91, %struct.vo* %92)
  %94 = load %struct.gpu_priv*, %struct.gpu_priv** %4, align 8
  %95 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.vo*, %struct.vo** %3, align 8
  %98 = getelementptr inbounds %struct.vo, %struct.vo* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @gl_video_load_hwdecs(i32 %96, i32 %99, i32 0)
  store i32 0, i32* %2, align 4
  br label %104

101:                                              ; preds = %43
  %102 = load %struct.vo*, %struct.vo** %3, align 8
  %103 = call i32 @uninit(%struct.vo* %102)
  store i32 -1, i32* %2, align 4
  br label %104

104:                                              ; preds = %101, %44
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @mp_read_option_raw(i32, i8*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_2__* @ra_ctx_create(%struct.vo*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @gl_video_init(i32, i32, i32) #1

declare dso_local i32 @gl_video_set_osd_source(i32, i32) #1

declare dso_local i32 @gl_video_configure_queue(i32, %struct.vo*) #1

declare dso_local i32 @get_and_update_icc_profile(%struct.gpu_priv*) #1

declare dso_local i32 @hwdec_devices_create(...) #1

declare dso_local i32 @hwdec_devices_set_loader(i32, i32, %struct.vo*) #1

declare dso_local i32 @gl_video_load_hwdecs(i32, i32, i32) #1

declare dso_local i32 @uninit(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
