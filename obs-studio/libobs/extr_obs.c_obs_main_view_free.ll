; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_main_view_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_main_view_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_view = type { i32, i32* }

@MAX_CHANNELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_main_view_free(%struct.obs_view* %0) #0 {
  %2 = alloca %struct.obs_view*, align 8
  %3 = alloca i64, align 8
  store %struct.obs_view* %0, %struct.obs_view** %2, align 8
  %4 = load %struct.obs_view*, %struct.obs_view** %2, align 8
  %5 = icmp ne %struct.obs_view* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %31

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %20, %7
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @MAX_CHANNELS, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.obs_view*, %struct.obs_view** %2, align 8
  %14 = getelementptr inbounds %struct.obs_view, %struct.obs_view* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @obs_source_release(i32 %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.obs_view*, %struct.obs_view** %2, align 8
  %25 = getelementptr inbounds %struct.obs_view, %struct.obs_view* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @memset(i32* %26, i32 0, i32 8)
  %28 = load %struct.obs_view*, %struct.obs_view** %2, align 8
  %29 = getelementptr inbounds %struct.obs_view, %struct.obs_view* %28, i32 0, i32 0
  %30 = call i32 @pthread_mutex_destroy(i32* %29)
  br label %31

31:                                               ; preds = %23, %6
  ret void
}

declare dso_local i32 @obs_source_release(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
