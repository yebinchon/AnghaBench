; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_stage_output_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_stage_output_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_video = type { i32*, i32*, i32***, i64, i32, i32 }

@stage_output_texture_name = common dso_local global i32 0, align 4
@NUM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_core_video*, i32)* @stage_output_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stage_output_texture(%struct.obs_core_video* %0, i32 %1) #0 {
  %3 = alloca %struct.obs_core_video*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.obs_core_video* %0, %struct.obs_core_video** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @stage_output_texture_name, align 4
  %9 = call i32 @profile_start(i32 %8)
  %10 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %11 = call i32 @unmap_last_surface(%struct.obs_core_video* %10)
  %12 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %13 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %2
  %17 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %18 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %17, i32 0, i32 2
  %19 = load i32***, i32**** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32**, i32*** %19, i64 %21
  %23 = load i32**, i32*** %22, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %31 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @gs_stage_texture(i32* %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %16
  %35 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %36 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 1, i32* %40, align 4
  br label %87

41:                                               ; preds = %2
  %42 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %43 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %76, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @NUM_CHANNELS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %53 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %52, i32 0, i32 2
  %54 = load i32***, i32**** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32**, i32*** %54, i64 %56
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %51
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %68 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @gs_stage_texture(i32* %66, i32 %73)
  br label %75

75:                                               ; preds = %65, %51
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %47

79:                                               ; preds = %47
  %80 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %81 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %79, %41
  br label %87

87:                                               ; preds = %86, %34
  %88 = load i32, i32* @stage_output_texture_name, align 4
  %89 = call i32 @profile_end(i32 %88)
  ret void
}

declare dso_local i32 @profile_start(i32) #1

declare dso_local i32 @unmap_last_surface(%struct.obs_core_video*) #1

declare dso_local i32 @gs_stage_texture(i32*, i32) #1

declare dso_local i32 @profile_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
