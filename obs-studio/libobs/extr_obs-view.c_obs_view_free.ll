; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-view.c_obs_view_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-view.c_obs_view_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_view = type { i32, %struct.obs_source** }
%struct.obs_source = type { i32 }

@MAX_CHANNELS = common dso_local global i64 0, align 8
@AUX_VIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_view_free(%struct.obs_view* %0) #0 {
  %2 = alloca %struct.obs_view*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.obs_source*, align 8
  store %struct.obs_view* %0, %struct.obs_view** %2, align 8
  %5 = load %struct.obs_view*, %struct.obs_view** %2, align 8
  %6 = icmp ne %struct.obs_view* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %40

8:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %29, %8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MAX_CHANNELS, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load %struct.obs_view*, %struct.obs_view** %2, align 8
  %15 = getelementptr inbounds %struct.obs_view, %struct.obs_view* %14, i32 0, i32 1
  %16 = load %struct.obs_source**, %struct.obs_source*** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.obs_source*, %struct.obs_source** %16, i64 %17
  %19 = load %struct.obs_source*, %struct.obs_source** %18, align 8
  store %struct.obs_source* %19, %struct.obs_source** %4, align 8
  %20 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %21 = icmp ne %struct.obs_source* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %24 = load i32, i32* @AUX_VIEW, align 4
  %25 = call i32 @obs_source_deactivate(%struct.obs_source* %23, i32 %24)
  %26 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %27 = call i32 @obs_source_release(%struct.obs_source* %26)
  br label %28

28:                                               ; preds = %22, %13
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.obs_view*, %struct.obs_view** %2, align 8
  %34 = getelementptr inbounds %struct.obs_view, %struct.obs_view* %33, i32 0, i32 1
  %35 = load %struct.obs_source**, %struct.obs_source*** %34, align 8
  %36 = call i32 @memset(%struct.obs_source** %35, i32 0, i32 8)
  %37 = load %struct.obs_view*, %struct.obs_view** %2, align 8
  %38 = getelementptr inbounds %struct.obs_view, %struct.obs_view* %37, i32 0, i32 0
  %39 = call i32 @pthread_mutex_destroy(i32* %38)
  br label %40

40:                                               ; preds = %32, %7
  ret void
}

declare dso_local i32 @obs_source_deactivate(%struct.obs_source*, i32) #1

declare dso_local i32 @obs_source_release(%struct.obs_source*) #1

declare dso_local i32 @memset(%struct.obs_source**, i32, i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
