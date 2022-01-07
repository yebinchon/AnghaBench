; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_alloc_out.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_alloc_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IMGFMT_VAAPI = common dso_local global i32 0, align 4
@IMGFMT_NV12 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to create hw pool.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to allocate frame from hw pool.\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Unknown error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_image* (%struct.mp_filter*)* @alloc_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_image* @alloc_out(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_image*, align 8
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mp_image*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  %11 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %12 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %11, i32 0, i32 0
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %4, align 8
  %14 = load %struct.priv*, %struct.priv** %4, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mp_image* @mp_refqueue_get_format(i32 %16)
  store %struct.mp_image* %17, %struct.mp_image** %5, align 8
  %18 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %19 = icmp ne %struct.mp_image* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %22 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %1
  store %struct.mp_image* null, %struct.mp_image** %2, align 8
  br label %90

26:                                               ; preds = %20
  %27 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %28 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %6, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.priv*, %struct.priv** %4, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 0
  %42 = load %struct.priv*, %struct.priv** %4, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IMGFMT_VAAPI, align 4
  %46 = load i32, i32* @IMGFMT_NV12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @mp_update_av_hw_frames_pool(i32* %41, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %26
  %52 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %53 = call i32 @MP_ERR(%struct.mp_filter* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.mp_image* null, %struct.mp_image** %2, align 8
  br label %90

54:                                               ; preds = %26
  %55 = call i32* (...) @av_frame_alloc()
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 (...) @abort() #3
  unreachable

60:                                               ; preds = %54
  %61 = load %struct.priv*, %struct.priv** %4, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @av_hwframe_get_buffer(i32 %63, i32* %64, i32 0)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %69 = call i32 @MP_ERR(%struct.mp_filter* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 @av_frame_free(i32** %9)
  store %struct.mp_image* null, %struct.mp_image** %2, align 8
  br label %90

71:                                               ; preds = %60
  %72 = load i32*, i32** %9, align 8
  %73 = call %struct.mp_image* @mp_image_from_av_frame(i32* %72)
  store %struct.mp_image* %73, %struct.mp_image** %10, align 8
  %74 = call i32 @av_frame_free(i32** %9)
  %75 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %76 = icmp ne %struct.mp_image* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %79 = call i32 @MP_ERR(%struct.mp_filter* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.mp_image* null, %struct.mp_image** %2, align 8
  br label %90

80:                                               ; preds = %71
  %81 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %82 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %83 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %86 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @mp_image_set_size(%struct.mp_image* %81, i32 %84, i32 %87)
  %89 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  store %struct.mp_image* %89, %struct.mp_image** %2, align 8
  br label %90

90:                                               ; preds = %80, %77, %67, %51, %25
  %91 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  ret %struct.mp_image* %91
}

declare dso_local %struct.mp_image* @mp_refqueue_get_format(i32) #1

declare dso_local i32 @mp_update_av_hw_frames_pool(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

declare dso_local i32* @av_frame_alloc(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @av_hwframe_get_buffer(i32, i32*, i32) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local %struct.mp_image* @mp_image_from_av_frame(i32*) #1

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
