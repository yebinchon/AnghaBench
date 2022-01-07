; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_signal_volume_changed.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_signal_volume_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_fader = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.fader_cb* }
%struct.fader_cb = type { i32, i32 (i32, float)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_fader*, float)* @signal_volume_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_volume_changed(%struct.obs_fader* %0, float %1) #0 {
  %3 = alloca %struct.obs_fader*, align 8
  %4 = alloca float, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.fader_cb, align 8
  store %struct.obs_fader* %0, %struct.obs_fader** %3, align 8
  store float %1, float* %4, align 4
  %7 = load %struct.obs_fader*, %struct.obs_fader** %3, align 8
  %8 = getelementptr inbounds %struct.obs_fader, %struct.obs_fader* %7, i32 0, i32 0
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.obs_fader*, %struct.obs_fader** %3, align 8
  %11 = getelementptr inbounds %struct.obs_fader, %struct.obs_fader* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %33, %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load %struct.obs_fader*, %struct.obs_fader** %3, align 8
  %19 = getelementptr inbounds %struct.obs_fader, %struct.obs_fader* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.fader_cb*, %struct.fader_cb** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds %struct.fader_cb, %struct.fader_cb* %21, i64 %23
  %25 = bitcast %struct.fader_cb* %6 to i8*
  %26 = bitcast %struct.fader_cb* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.fader_cb, %struct.fader_cb* %6, i32 0, i32 1
  %28 = load i32 (i32, float)*, i32 (i32, float)** %27, align 8
  %29 = getelementptr inbounds %struct.fader_cb, %struct.fader_cb* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load float, float* %4, align 4
  %32 = call i32 %28(i32 %30, float %31)
  br label %33

33:                                               ; preds = %17
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %5, align 8
  br label %14

36:                                               ; preds = %14
  %37 = load %struct.obs_fader*, %struct.obs_fader** %3, align 8
  %38 = getelementptr inbounds %struct.obs_fader, %struct.obs_fader* %37, i32 0, i32 0
  %39 = call i32 @pthread_mutex_unlock(i32* %38)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
