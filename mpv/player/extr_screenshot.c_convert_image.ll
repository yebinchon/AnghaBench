; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_screenshot.c_convert_image.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_screenshot.c_convert_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { %struct.mp_log*, %struct.mp_image_params }
%struct.mp_image_params = type { i32, i32, i32, i32, i32 }
%struct.mpv_global = type { i32 }
%struct.mp_log = type { i32 }
%struct.mp_sws_context = type { %struct.mp_log*, %struct.mp_image_params }

@.str = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Error when converting image.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @convert_image(%struct.mp_image* %0, i32 %1, %struct.mpv_global* %2, %struct.mp_log* %3) #0 {
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpv_global*, align 8
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mp_image_params, align 4
  %13 = alloca %struct.mp_image*, align 8
  %14 = alloca %struct.mp_sws_context*, align 8
  %15 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mpv_global* %2, %struct.mpv_global** %8, align 8
  store %struct.mp_log* %3, %struct.mp_log** %9, align 8
  %16 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %17 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %16, i32 0, i32 1
  %18 = call i32 @mp_image_params_get_dsize(%struct.mp_image_params* %17, i32* %10, i32* %11)
  %19 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %12, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %12, i32 0, i32 1
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %12, i32 0, i32 2
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %12, i32 0, i32 3
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %12, i32 0, i32 4
  store i32 1, i32* %26, align 4
  %27 = call i32 @mp_image_params_guess_csp(%struct.mp_image_params* %12)
  %28 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %29 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %28, i32 0, i32 1
  %30 = call i64 @mp_image_params_equal(%struct.mp_image_params* %12, %struct.mp_image_params* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %34 = bitcast %struct.mp_image* %33 to %struct.mp_sws_context*
  %35 = call %struct.mp_sws_context* @mp_image_new_ref(%struct.mp_sws_context* %34)
  %36 = bitcast %struct.mp_sws_context* %35 to %struct.mp_image*
  store %struct.mp_image* %36, %struct.mp_image** %5, align 8
  br label %92

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %12, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %12, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.mp_sws_context* @mp_image_alloc(i32 %39, i32 %41, i32 %43)
  %45 = bitcast %struct.mp_sws_context* %44 to %struct.mp_image*
  store %struct.mp_image* %45, %struct.mp_image** %13, align 8
  %46 = load %struct.mp_image*, %struct.mp_image** %13, align 8
  %47 = icmp ne %struct.mp_image* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %50 = call i32 @mp_err(%struct.mp_log* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.mp_image* null, %struct.mp_image** %5, align 8
  br label %92

51:                                               ; preds = %37
  %52 = load %struct.mp_image*, %struct.mp_image** %13, align 8
  %53 = bitcast %struct.mp_image* %52 to %struct.mp_sws_context*
  %54 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %55 = bitcast %struct.mp_image* %54 to %struct.mp_sws_context*
  %56 = call i32 @mp_image_copy_attributes(%struct.mp_sws_context* %53, %struct.mp_sws_context* %55)
  %57 = load %struct.mp_image*, %struct.mp_image** %13, align 8
  %58 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %57, i32 0, i32 1
  %59 = bitcast %struct.mp_image_params* %58 to i8*
  %60 = bitcast %struct.mp_image_params* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 4 %60, i64 20, i1 false)
  %61 = call %struct.mp_sws_context* @mp_sws_alloc(i32* null)
  store %struct.mp_sws_context* %61, %struct.mp_sws_context** %14, align 8
  %62 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %63 = load %struct.mp_sws_context*, %struct.mp_sws_context** %14, align 8
  %64 = getelementptr inbounds %struct.mp_sws_context, %struct.mp_sws_context* %63, i32 0, i32 0
  store %struct.mp_log* %62, %struct.mp_log** %64, align 8
  %65 = load %struct.mpv_global*, %struct.mpv_global** %8, align 8
  %66 = icmp ne %struct.mpv_global* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %51
  %68 = load %struct.mp_sws_context*, %struct.mp_sws_context** %14, align 8
  %69 = load %struct.mpv_global*, %struct.mpv_global** %8, align 8
  %70 = call i32 @mp_sws_enable_cmdline_opts(%struct.mp_sws_context* %68, %struct.mpv_global* %69)
  br label %71

71:                                               ; preds = %67, %51
  %72 = load %struct.mp_sws_context*, %struct.mp_sws_context** %14, align 8
  %73 = load %struct.mp_image*, %struct.mp_image** %13, align 8
  %74 = bitcast %struct.mp_image* %73 to %struct.mp_sws_context*
  %75 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %76 = bitcast %struct.mp_image* %75 to %struct.mp_sws_context*
  %77 = call i64 @mp_sws_scale(%struct.mp_sws_context* %72, %struct.mp_sws_context* %74, %struct.mp_sws_context* %76)
  %78 = icmp sge i64 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %15, align 4
  %80 = load %struct.mp_sws_context*, %struct.mp_sws_context** %14, align 8
  %81 = call i32 @talloc_free(%struct.mp_sws_context* %80)
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %71
  %85 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %86 = call i32 @mp_err(%struct.mp_log* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.mp_image*, %struct.mp_image** %13, align 8
  %88 = bitcast %struct.mp_image* %87 to %struct.mp_sws_context*
  %89 = call i32 @talloc_free(%struct.mp_sws_context* %88)
  store %struct.mp_image* null, %struct.mp_image** %5, align 8
  br label %92

90:                                               ; preds = %71
  %91 = load %struct.mp_image*, %struct.mp_image** %13, align 8
  store %struct.mp_image* %91, %struct.mp_image** %5, align 8
  br label %92

92:                                               ; preds = %90, %84, %48, %32
  %93 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  ret %struct.mp_image* %93
}

declare dso_local i32 @mp_image_params_get_dsize(%struct.mp_image_params*, i32*, i32*) #1

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
