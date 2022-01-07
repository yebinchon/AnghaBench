; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-output.c_audio_monitor_reset.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-output.c_audio_monitor_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_monitor = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_monitor_reset(%struct.audio_monitor* %0) #0 {
  %2 = alloca %struct.audio_monitor*, align 8
  %3 = alloca %struct.audio_monitor, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.audio_monitor* %0, %struct.audio_monitor** %2, align 8
  %6 = bitcast %struct.audio_monitor* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %8 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %7, i32 0, i32 1
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %11 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @audio_monitor_init(%struct.audio_monitor* %3, i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %15 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %14, i32 0, i32 1
  %16 = call i32 @pthread_mutex_unlock(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %21 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %24 = call i32 @audio_monitor_free(%struct.audio_monitor* %23)
  %25 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %26 = bitcast %struct.audio_monitor* %25 to i8*
  %27 = bitcast %struct.audio_monitor* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %29 = call i32 @audio_monitor_init_final(%struct.audio_monitor* %28)
  br label %32

30:                                               ; preds = %1
  %31 = call i32 @audio_monitor_free(%struct.audio_monitor* %3)
  br label %32

32:                                               ; preds = %30, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @audio_monitor_init(%struct.audio_monitor*, i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @audio_monitor_free(%struct.audio_monitor*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @audio_monitor_init_final(%struct.audio_monitor*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
