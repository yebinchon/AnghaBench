; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-view.c_obs_view_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-view.c_obs_view_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.obs_source** }
%struct.obs_source = type { i64 }

@MAX_CHANNELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_view_render(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.obs_source*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %50

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %43, %8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @MAX_CHANNELS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.obs_source**, %struct.obs_source*** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.obs_source*, %struct.obs_source** %19, i64 %20
  %22 = load %struct.obs_source*, %struct.obs_source** %21, align 8
  store %struct.obs_source* %22, %struct.obs_source** %4, align 8
  %23 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %24 = icmp ne %struct.obs_source* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %16
  %26 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %27 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %32 = call i32 @obs_source_release(%struct.obs_source* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.obs_source**, %struct.obs_source*** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.obs_source*, %struct.obs_source** %35, i64 %36
  store %struct.obs_source* null, %struct.obs_source** %37, align 8
  br label %41

38:                                               ; preds = %25
  %39 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %40 = call i32 @obs_source_video_render(%struct.obs_source* %39)
  br label %41

41:                                               ; preds = %38, %30
  br label %42

42:                                               ; preds = %41, %16
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %12

46:                                               ; preds = %12
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %7
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @obs_source_release(%struct.obs_source*) #1

declare dso_local i32 @obs_source_video_render(%struct.obs_source*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
