; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_textures.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i8*, i8*, i64**, i64, i64 }
%struct.obs_video_info = type { i32, i32, i32, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@NUM_TEXTURES = common dso_local global i64 0, align 8
@GS_RGBA = common dso_local global i32 0, align 4
@GS_RENDER_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_video_info*)* @obs_init_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_init_textures(%struct.obs_video_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.obs_video_info*, align 8
  %4 = alloca %struct.obs_core_video*, align 8
  %5 = alloca i64, align 8
  store %struct.obs_video_info* %0, %struct.obs_video_info** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.obs_core_video* %7, %struct.obs_core_video** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @NUM_TEXTURES, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %14 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @obs_init_gpu_copy_surfaces(%struct.obs_video_info* %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %90

23:                                               ; preds = %17
  br label %51

24:                                               ; preds = %12
  %25 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %26 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %29 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GS_RGBA, align 4
  %32 = call i64 @gs_stagesurface_create(i32 %27, i32 %30, i32 %31)
  %33 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %34 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %33, i32 0, i32 2
  %35 = load i64**, i64*** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i64*, i64** %35, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 %32, i64* %39, align 8
  %40 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %41 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %40, i32 0, i32 2
  %42 = load i64**, i64*** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i64*, i64** %42, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %90

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50, %23
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %8

55:                                               ; preds = %8
  %56 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %57 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %60 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GS_RGBA, align 4
  %63 = load i32, i32* @GS_RENDER_TARGET, align 4
  %64 = call i8* @gs_texture_create(i32 %58, i32 %61, i32 %62, i32 1, i32* null, i32 %63)
  %65 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %66 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %68 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %90

72:                                               ; preds = %55
  %73 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %74 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.obs_video_info*, %struct.obs_video_info** %3, align 8
  %77 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @GS_RGBA, align 4
  %80 = load i32, i32* @GS_RENDER_TARGET, align 4
  %81 = call i8* @gs_texture_create(i32 %75, i32 %78, i32 %79, i32 1, i32* null, i32 %80)
  %82 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %83 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.obs_core_video*, %struct.obs_core_video** %4, align 8
  %85 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %90

89:                                               ; preds = %72
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %88, %71, %49, %22
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @obs_init_gpu_copy_surfaces(%struct.obs_video_info*, i64) #1

declare dso_local i64 @gs_stagesurface_create(i32, i32, i32) #1

declare dso_local i8* @gs_texture_create(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
