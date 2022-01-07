; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_image_writer.c_convert_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_image_writer.c_convert_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { %struct.mp_log*, %struct.mp_image_params }
%struct.mp_image_params = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mpv_global = type { i32 }
%struct.mp_log = type { i32 }
%struct.mp_sws_context = type { %struct.mp_log*, %struct.mp_image_params }

@MP_CSP_RGB = common dso_local global i64 0, align 8
@MP_CSP_BT_601 = common dso_local global i64 0, align 8
@MP_CHROMA_CENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Error when converting image.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_image* (%struct.mp_image*, i32, i32, %struct.mpv_global*, %struct.mp_log*)* @convert_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_image* @convert_image(%struct.mp_image* %0, i32 %1, i32 %2, %struct.mpv_global* %3, %struct.mp_log* %4) #0 {
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.mp_image*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mpv_global*, align 8
  %11 = alloca %struct.mp_log*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mp_image_params, align 8
  %15 = alloca %struct.mp_image*, align 8
  %16 = alloca %struct.mp_sws_context*, align 8
  %17 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.mpv_global* %3, %struct.mpv_global** %10, align 8
  store %struct.mp_log* %4, %struct.mp_log** %11, align 8
  %18 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %19 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %18, i32 0, i32 1
  %20 = call i32 @mp_image_params_get_dsize(%struct.mp_image_params* %19, i32* %12, i32* %13)
  %21 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 1
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 2
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 3
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 4
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 5
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 6
  %31 = bitcast %struct.TYPE_2__* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 16, i1 false)
  %32 = call i32 @mp_image_params_guess_csp(%struct.mp_image_params* %14)
  %33 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MP_CSP_RGB, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* @MP_CSP_BT_601, align 8
  %43 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @MP_CHROMA_CENTER, align 4
  %46 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 5
  store i32 %45, i32* %46, align 4
  %47 = call i32 @mp_image_params_guess_csp(%struct.mp_image_params* %14)
  br label %48

48:                                               ; preds = %38, %5
  %49 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %50 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %49, i32 0, i32 1
  %51 = call i64 @mp_image_params_equal(%struct.mp_image_params* %14, %struct.mp_image_params* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %55 = bitcast %struct.mp_image* %54 to %struct.mp_sws_context*
  %56 = call %struct.mp_sws_context* @mp_image_new_ref(%struct.mp_sws_context* %55)
  %57 = bitcast %struct.mp_sws_context* %56 to %struct.mp_image*
  store %struct.mp_image* %57, %struct.mp_image** %6, align 8
  br label %113

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.mp_sws_context* @mp_image_alloc(i32 %60, i32 %62, i32 %64)
  %66 = bitcast %struct.mp_sws_context* %65 to %struct.mp_image*
  store %struct.mp_image* %66, %struct.mp_image** %15, align 8
  %67 = load %struct.mp_image*, %struct.mp_image** %15, align 8
  %68 = icmp ne %struct.mp_image* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load %struct.mp_log*, %struct.mp_log** %11, align 8
  %71 = call i32 @mp_err(%struct.mp_log* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.mp_image* null, %struct.mp_image** %6, align 8
  br label %113

72:                                               ; preds = %58
  %73 = load %struct.mp_image*, %struct.mp_image** %15, align 8
  %74 = bitcast %struct.mp_image* %73 to %struct.mp_sws_context*
  %75 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %76 = bitcast %struct.mp_image* %75 to %struct.mp_sws_context*
  %77 = call i32 @mp_image_copy_attributes(%struct.mp_sws_context* %74, %struct.mp_sws_context* %76)
  %78 = load %struct.mp_image*, %struct.mp_image** %15, align 8
  %79 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %78, i32 0, i32 1
  %80 = bitcast %struct.mp_image_params* %79 to i8*
  %81 = bitcast %struct.mp_image_params* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 40, i1 false)
  %82 = call %struct.mp_sws_context* @mp_sws_alloc(i32* null)
  store %struct.mp_sws_context* %82, %struct.mp_sws_context** %16, align 8
  %83 = load %struct.mp_log*, %struct.mp_log** %11, align 8
  %84 = load %struct.mp_sws_context*, %struct.mp_sws_context** %16, align 8
  %85 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %84, i32 0, i32 0
  store %struct.mp_log* %83, %struct.mp_log** %85, align 8
  %86 = load %struct.mpv_global*, %struct.mpv_global** %10, align 8
  %87 = icmp ne %struct.mpv_global* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %72
  %89 = load %struct.mp_sws_context*, %struct.mp_sws_context** %16, align 8
  %90 = load %struct.mpv_global*, %struct.mpv_global** %10, align 8
  %91 = call i32 @mp_sws_enable_cmdline_opts(%struct.mp_sws_context* %89, %struct.mpv_global* %90)
  br label %92

92:                                               ; preds = %88, %72
  %93 = load %struct.mp_sws_context*, %struct.mp_sws_context** %16, align 8
  %94 = load %struct.mp_image*, %struct.mp_image** %15, align 8
  %95 = bitcast %struct.mp_image* %94 to %struct.mp_sws_context*
  %96 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %97 = bitcast %struct.mp_image* %96 to %struct.mp_sws_context*
  %98 = call i64 @mp_sws_scale(%struct.mp_sws_context* %93, %struct.mp_sws_context* %95, %struct.mp_sws_context* %97)
  %99 = icmp sge i64 %98, 0
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %17, align 4
  %101 = load %struct.mp_sws_context*, %struct.mp_sws_context** %16, align 8
  %102 = call i32 @talloc_free(%struct.mp_sws_context* %101)
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %92
  %106 = load %struct.mp_log*, %struct.mp_log** %11, align 8
  %107 = call i32 @mp_err(%struct.mp_log* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.mp_image*, %struct.mp_image** %15, align 8
  %109 = bitcast %struct.mp_image* %108 to %struct.mp_sws_context*
  %110 = call i32 @talloc_free(%struct.mp_sws_context* %109)
  store %struct.mp_image* null, %struct.mp_image** %6, align 8
  br label %113

111:                                              ; preds = %92
  %112 = load %struct.mp_image*, %struct.mp_image** %15, align 8
  store %struct.mp_image* %112, %struct.mp_image** %6, align 8
  br label %113

113:                                              ; preds = %111, %105, %69, %53
  %114 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  ret %struct.mp_image* %114
}

declare dso_local i32 @mp_image_params_get_dsize(%struct.mp_image_params*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_image_params_guess_csp(%struct.mp_image_params*) #1

declare dso_local i64 @mp_image_params_equal(%struct.mp_image_params*, %struct.mp_image_params*) #1

declare dso_local %struct.mp_sws_context* @mp_image_new_ref(%struct.mp_sws_context*) #1

declare dso_local %struct.mp_sws_context* @mp_image_alloc(i32, i32, i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*) #1

declare dso_local i32 @mp_image_copy_attributes(%struct.mp_sws_context*, %struct.mp_sws_context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.mp_sws_context* @mp_sws_alloc(i32*) #1

declare dso_local i32 @mp_sws_enable_cmdline_opts(%struct.mp_sws_context*, %struct.mpv_global*) #1

declare dso_local i64 @mp_sws_scale(%struct.mp_sws_context*, %struct.mp_sws_context*, %struct.mp_sws_context*) #1

declare dso_local i32 @talloc_free(%struct.mp_sws_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
