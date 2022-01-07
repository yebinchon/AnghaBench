; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_coreaudio-output.c_audio_monitor_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_coreaudio-output.c_audio_monitor_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.audio_monitor = type { i32 }

@obs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.audio_monitor* @audio_monitor_create(i32* %0) #0 {
  %2 = alloca %struct.audio_monitor*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.audio_monitor*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.audio_monitor* @bzalloc(i32 4)
  store %struct.audio_monitor* %5, %struct.audio_monitor** %4, align 8
  %6 = load %struct.audio_monitor*, %struct.audio_monitor** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @audio_monitor_init(%struct.audio_monitor* %6, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @da_push_back(i32 %19, %struct.audio_monitor** %4)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @pthread_mutex_unlock(i32* %23)
  %25 = load %struct.audio_monitor*, %struct.audio_monitor** %4, align 8
  %26 = call i32 @audio_monitor_init_final(%struct.audio_monitor* %25)
  %27 = load %struct.audio_monitor*, %struct.audio_monitor** %4, align 8
  store %struct.audio_monitor* %27, %struct.audio_monitor** %2, align 8
  br label %33

28:                                               ; preds = %10
  %29 = load %struct.audio_monitor*, %struct.audio_monitor** %4, align 8
  %30 = call i32 @audio_monitor_free(%struct.audio_monitor* %29)
  %31 = load %struct.audio_monitor*, %struct.audio_monitor** %4, align 8
  %32 = call i32 @bfree(%struct.audio_monitor* %31)
  store %struct.audio_monitor* null, %struct.audio_monitor** %2, align 8
  br label %33

33:                                               ; preds = %28, %11
  %34 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  ret %struct.audio_monitor* %34
}

declare dso_local %struct.audio_monitor* @bzalloc(i32) #1

declare dso_local i32 @audio_monitor_init(%struct.audio_monitor*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @da_push_back(i32, %struct.audio_monitor**) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @audio_monitor_init_final(%struct.audio_monitor*) #1

declare dso_local i32 @audio_monitor_free(%struct.audio_monitor*) #1

declare dso_local i32 @bfree(%struct.audio_monitor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
