; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_source_volume_changed.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_source_volume_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_volmeter = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @volmeter_source_volume_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volmeter_source_volume_changed(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.obs_volmeter*, align 8
  %6 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.obs_volmeter*
  store %struct.obs_volmeter* %8, %struct.obs_volmeter** %5, align 8
  %9 = load %struct.obs_volmeter*, %struct.obs_volmeter** %5, align 8
  %10 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %9, i32 0, i32 0
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @calldata_float(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = sitofp i64 %13 to float
  store float %14, float* %6, align 4
  %15 = load float, float* %6, align 4
  %16 = call i32 @mul_to_db(float %15)
  %17 = load %struct.obs_volmeter*, %struct.obs_volmeter** %5, align 8
  %18 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.obs_volmeter*, %struct.obs_volmeter** %5, align 8
  %20 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_unlock(i32* %20)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @calldata_float(i32*, i8*) #1

declare dso_local i32 @mul_to_db(float) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
