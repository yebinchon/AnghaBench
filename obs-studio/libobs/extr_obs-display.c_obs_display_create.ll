; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-display.c_obs_display_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-display.c_obs_display_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.obs_display* }
%struct.obs_display = type { %struct.obs_display*, %struct.obs_display**, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gs_init_data = type { i32 }

@obs = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_display* @obs_display_create(%struct.gs_init_data* %0, i32 %1) #0 {
  %3 = alloca %struct.gs_init_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.obs_display*, align 8
  store %struct.gs_init_data* %0, %struct.gs_init_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.obs_display* @bzalloc(i32 24)
  store %struct.obs_display* %6, %struct.obs_display** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @gs_enter_context(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  %14 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  %16 = load %struct.gs_init_data*, %struct.gs_init_data** %3, align 8
  %17 = call i32 @obs_display_init(%struct.obs_display* %15, %struct.gs_init_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  %21 = call i32 @obs_display_destroy(%struct.obs_display* %20)
  store %struct.obs_display* null, %struct.obs_display** %5, align 8
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @pthread_mutex_lock(i32* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  %31 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %30, i32 0, i32 1
  store %struct.obs_display** %29, %struct.obs_display*** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.obs_display*, %struct.obs_display** %34, align 8
  %36 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  %37 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %36, i32 0, i32 0
  store %struct.obs_display* %35, %struct.obs_display** %37, align 8
  %38 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store %struct.obs_display* %38, %struct.obs_display** %41, align 8
  %42 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  %43 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %42, i32 0, i32 0
  %44 = load %struct.obs_display*, %struct.obs_display** %43, align 8
  %45 = icmp ne %struct.obs_display* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %22
  %47 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  %48 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %47, i32 0, i32 0
  %49 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  %50 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %49, i32 0, i32 0
  %51 = load %struct.obs_display*, %struct.obs_display** %50, align 8
  %52 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %51, i32 0, i32 1
  store %struct.obs_display** %48, %struct.obs_display*** %52, align 8
  br label %53

53:                                               ; preds = %46, %22
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @pthread_mutex_unlock(i32* %56)
  br label %58

58:                                               ; preds = %53, %19
  %59 = call i32 (...) @gs_leave_context()
  %60 = load %struct.obs_display*, %struct.obs_display** %5, align 8
  ret %struct.obs_display* %60
}

declare dso_local %struct.obs_display* @bzalloc(i32) #1

declare dso_local i32 @gs_enter_context(i32) #1

declare dso_local i32 @obs_display_init(%struct.obs_display*, %struct.gs_init_data*) #1

declare dso_local i32 @obs_display_destroy(%struct.obs_display*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @gs_leave_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
