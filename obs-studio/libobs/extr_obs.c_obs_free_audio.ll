; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_free_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_free_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_audio }
%struct.obs_core_audio = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @obs_free_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_free_audio() #0 {
  %1 = alloca %struct.obs_core_audio*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store %struct.obs_core_audio* %3, %struct.obs_core_audio** %1, align 8
  %4 = load %struct.obs_core_audio*, %struct.obs_core_audio** %1, align 8
  %5 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %4, i32 0, i32 7
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load %struct.obs_core_audio*, %struct.obs_core_audio** %1, align 8
  %10 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @audio_output_close(i64 %11)
  br label %13

13:                                               ; preds = %8, %0
  %14 = load %struct.obs_core_audio*, %struct.obs_core_audio** %1, align 8
  %15 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %14, i32 0, i32 6
  %16 = call i32 @circlebuf_free(i32* %15)
  %17 = load %struct.obs_core_audio*, %struct.obs_core_audio** %1, align 8
  %18 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @da_free(i32 %19)
  %21 = load %struct.obs_core_audio*, %struct.obs_core_audio** %1, align 8
  %22 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @da_free(i32 %23)
  %25 = load %struct.obs_core_audio*, %struct.obs_core_audio** %1, align 8
  %26 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @da_free(i32 %27)
  %29 = load %struct.obs_core_audio*, %struct.obs_core_audio** %1, align 8
  %30 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bfree(i32 %31)
  %33 = load %struct.obs_core_audio*, %struct.obs_core_audio** %1, align 8
  %34 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bfree(i32 %35)
  %37 = load %struct.obs_core_audio*, %struct.obs_core_audio** %1, align 8
  %38 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %37, i32 0, i32 0
  %39 = call i32 @pthread_mutex_destroy(i32* %38)
  %40 = load %struct.obs_core_audio*, %struct.obs_core_audio** %1, align 8
  %41 = call i32 @memset(%struct.obs_core_audio* %40, i32 0, i32 40)
  ret void
}

declare dso_local i32 @audio_output_close(i64) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @memset(%struct.obs_core_audio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
