; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_stop_gpu_encode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_stop_gpu_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@obs = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_gpu_encode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.obs_core_video*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @obs, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store %struct.obs_core_video* %6, %struct.obs_core_video** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %8 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %7, i32 0, i32 4
  %9 = call i32 @os_atomic_dec_long(i32* %8)
  %10 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %11 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @video_output_dec_texture_encoders(i32 %12)
  %14 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %15 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %14, i32 0, i32 0
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  %17 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %18 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @da_erase_item(i32 %20, i32** %2)
  %22 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %23 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %30 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %29, i32 0, i32 0
  %31 = call i32 @pthread_mutex_unlock(i32* %30)
  %32 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %33 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @os_event_wait(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %28
  %39 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %40 = call i32 @stop_gpu_encoding_thread(%struct.obs_core_video* %39)
  %41 = call i32 (...) @obs_enter_graphics()
  %42 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %43 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %42, i32 0, i32 0
  %44 = call i32 @pthread_mutex_lock(i32* %43)
  %45 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %46 = call i32 @free_gpu_encoding(%struct.obs_core_video* %45)
  %47 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %48 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %47, i32 0, i32 0
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  %50 = call i32 (...) @obs_leave_graphics()
  br label %51

51:                                               ; preds = %38, %28
  ret void
}

declare dso_local i32 @os_atomic_dec_long(i32*) #1

declare dso_local i32 @video_output_dec_texture_encoders(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @da_erase_item(i32, i32**) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @os_event_wait(i32) #1

declare dso_local i32 @stop_gpu_encoding_thread(%struct.obs_core_video*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @free_gpu_encoding(%struct.obs_core_video*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
