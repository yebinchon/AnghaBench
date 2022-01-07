; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_free_graphics.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_free_graphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @obs_free_graphics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_free_graphics() #0 {
  %1 = alloca %struct.obs_core_video*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store %struct.obs_core_video* %3, %struct.obs_core_video** %1, align 8
  %4 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %5 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %70

8:                                                ; preds = %0
  %9 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %10 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @gs_enter_context(i32* %11)
  %13 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %14 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %13, i32 0, i32 12
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gs_texture_destroy(i32 %15)
  %17 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %18 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @gs_samplerstate_destroy(i32 %19)
  %21 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %22 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @gs_effect_destroy(i32* %23)
  %25 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %26 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %25, i32 0, i32 10
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @gs_effect_destroy(i32* %27)
  %29 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %30 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %29, i32 0, i32 9
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @gs_effect_destroy(i32* %31)
  %33 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %34 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @gs_effect_destroy(i32* %35)
  %37 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %38 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @gs_effect_destroy(i32* %39)
  %41 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %42 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @gs_effect_destroy(i32* %43)
  %45 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %46 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @gs_effect_destroy(i32* %47)
  %49 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %50 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @gs_effect_destroy(i32* %51)
  %53 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %54 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @gs_effect_destroy(i32* %55)
  %57 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %58 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @gs_effect_destroy(i32* %59)
  %61 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %62 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = call i32 (...) @gs_leave_context()
  %64 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %65 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @gs_destroy(i32* %66)
  %68 = load %struct.obs_core_video*, %struct.obs_core_video** %1, align 8
  %69 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %8, %0
  ret void
}

declare dso_local i32 @gs_enter_context(i32*) #1

declare dso_local i32 @gs_texture_destroy(i32) #1

declare dso_local i32 @gs_samplerstate_destroy(i32) #1

declare dso_local i32 @gs_effect_destroy(i32*) #1

declare dso_local i32 @gs_leave_context(...) #1

declare dso_local i32 @gs_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
