; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-view.c_obs_view_set_source.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-view.c_obs_view_set_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.obs_source** }
%struct.obs_source = type { i32 }

@MAX_CHANNELS = common dso_local global i64 0, align 8
@AUX_VIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_view_set_source(%struct.TYPE_3__* %0, i64 %1, %struct.obs_source* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.obs_source*, align 8
  %7 = alloca %struct.obs_source*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.obs_source* %2, %struct.obs_source** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @MAX_CHANNELS, align 8
  %10 = icmp ult i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %57

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @MAX_CHANNELS, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %57

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @pthread_mutex_lock(i32* %23)
  %25 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %26 = call i32 @obs_source_addref(%struct.obs_source* %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.obs_source**, %struct.obs_source*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.obs_source*, %struct.obs_source** %29, i64 %30
  %32 = load %struct.obs_source*, %struct.obs_source** %31, align 8
  store %struct.obs_source* %32, %struct.obs_source** %7, align 8
  %33 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.obs_source**, %struct.obs_source*** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.obs_source*, %struct.obs_source** %36, i64 %37
  store %struct.obs_source* %33, %struct.obs_source** %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @pthread_mutex_unlock(i32* %40)
  %42 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %43 = icmp ne %struct.obs_source* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %21
  %45 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %46 = load i32, i32* @AUX_VIEW, align 4
  %47 = call i32 @obs_source_activate(%struct.obs_source* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %21
  %49 = load %struct.obs_source*, %struct.obs_source** %7, align 8
  %50 = icmp ne %struct.obs_source* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.obs_source*, %struct.obs_source** %7, align 8
  %53 = load i32, i32* @AUX_VIEW, align 4
  %54 = call i32 @obs_source_deactivate(%struct.obs_source* %52, i32 %53)
  %55 = load %struct.obs_source*, %struct.obs_source** %7, align 8
  %56 = call i32 @obs_source_release(%struct.obs_source* %55)
  br label %57

57:                                               ; preds = %15, %20, %51, %48
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @obs_source_addref(%struct.obs_source*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @obs_source_activate(%struct.obs_source*, i32) #1

declare dso_local i32 @obs_source_deactivate(%struct.obs_source*, i32) #1

declare dso_local i32 @obs_source_release(%struct.obs_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
