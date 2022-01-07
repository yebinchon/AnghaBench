; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_obs_volmeter_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_obs_volmeter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_volmeter = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_volmeter* @obs_volmeter_create(i32 %0) #0 {
  %2 = alloca %struct.obs_volmeter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.obs_volmeter*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.obs_volmeter* @bzalloc(i32 12)
  store %struct.obs_volmeter* %5, %struct.obs_volmeter** %4, align 8
  %6 = load %struct.obs_volmeter*, %struct.obs_volmeter** %4, align 8
  %7 = icmp ne %struct.obs_volmeter* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.obs_volmeter* null, %struct.obs_volmeter** %2, align 8
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.obs_volmeter*, %struct.obs_volmeter** %4, align 8
  %11 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %10, i32 0, i32 2
  %12 = call i32 @pthread_mutex_init_value(i32* %11)
  %13 = load %struct.obs_volmeter*, %struct.obs_volmeter** %4, align 8
  %14 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %13, i32 0, i32 1
  %15 = call i32 @pthread_mutex_init_value(i32* %14)
  %16 = load %struct.obs_volmeter*, %struct.obs_volmeter** %4, align 8
  %17 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %16, i32 0, i32 2
  %18 = call i64 @pthread_mutex_init(i32* %17, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %34

21:                                               ; preds = %9
  %22 = load %struct.obs_volmeter*, %struct.obs_volmeter** %4, align 8
  %23 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %22, i32 0, i32 1
  %24 = call i64 @pthread_mutex_init(i32* %23, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.obs_volmeter*, %struct.obs_volmeter** %4, align 8
  %30 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.obs_volmeter*, %struct.obs_volmeter** %4, align 8
  %32 = call i32 @obs_volmeter_set_update_interval(%struct.obs_volmeter* %31, i32 50)
  %33 = load %struct.obs_volmeter*, %struct.obs_volmeter** %4, align 8
  store %struct.obs_volmeter* %33, %struct.obs_volmeter** %2, align 8
  br label %37

34:                                               ; preds = %26, %20
  %35 = load %struct.obs_volmeter*, %struct.obs_volmeter** %4, align 8
  %36 = call i32 @obs_volmeter_destroy(%struct.obs_volmeter* %35)
  store %struct.obs_volmeter* null, %struct.obs_volmeter** %2, align 8
  br label %37

37:                                               ; preds = %34, %27, %8
  %38 = load %struct.obs_volmeter*, %struct.obs_volmeter** %2, align 8
  ret %struct.obs_volmeter* %38
}

declare dso_local %struct.obs_volmeter* @bzalloc(i32) #1

declare dso_local i32 @pthread_mutex_init_value(i32*) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @obs_volmeter_set_update_interval(%struct.obs_volmeter*, i32) #1

declare dso_local i32 @obs_volmeter_destroy(%struct.obs_volmeter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
