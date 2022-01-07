; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_init_finalize.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_init_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.obs_source* }
%struct.obs_source = type { i32, %struct.obs_source*, %struct.obs_source** }

@obs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source*)* @obs_source_init_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_source_init_finalize(%struct.obs_source* %0) #0 {
  %2 = alloca %struct.obs_source*, align 8
  store %struct.obs_source* %0, %struct.obs_source** %2, align 8
  %3 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %4 = call i64 @is_audio_source(%struct.obs_source* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load %struct.obs_source*, %struct.obs_source** %13, align 8
  %15 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %16 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %15, i32 0, i32 1
  store %struct.obs_source* %14, %struct.obs_source** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %21 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %20, i32 0, i32 2
  store %struct.obs_source** %19, %struct.obs_source*** %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load %struct.obs_source*, %struct.obs_source** %24, align 8
  %26 = icmp ne %struct.obs_source* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %6
  %28 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %29 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load %struct.obs_source*, %struct.obs_source** %32, align 8
  %34 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %33, i32 0, i32 2
  store %struct.obs_source** %29, %struct.obs_source*** %34, align 8
  br label %35

35:                                               ; preds = %27, %6
  %36 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store %struct.obs_source* %36, %struct.obs_source** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = call i32 @pthread_mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %35, %1
  %45 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %46 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @obs_context_data_insert(i32* %46, i32* %49, i32* %52)
  ret void
}

declare dso_local i64 @is_audio_source(%struct.obs_source*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @obs_context_data_insert(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
