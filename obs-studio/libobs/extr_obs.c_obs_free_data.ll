; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_free_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_free_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_data }
%struct.obs_core_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Freeing OBS context data\00", align 1
@source = common dso_local global i32 0, align 4
@output = common dso_local global i32 0, align 4
@encoder = common dso_local global i32 0, align 4
@display = common dso_local global i32 0, align 4
@service = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @obs_free_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_free_data() #0 {
  %1 = alloca %struct.obs_core_data*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store %struct.obs_core_data* %3, %struct.obs_core_data** %1, align 8
  %4 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %5 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %7 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %6, i32 0, i32 11
  %8 = call i32 @obs_main_view_free(i32* %7)
  %9 = load i32, i32* @LOG_INFO, align 4
  %10 = call i32 @blog(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @source, align 4
  %12 = call i32 @FREE_OBS_LINKED_LIST(i32 %11)
  %13 = load i32, i32* @output, align 4
  %14 = call i32 @FREE_OBS_LINKED_LIST(i32 %13)
  %15 = load i32, i32* @encoder, align 4
  %16 = call i32 @FREE_OBS_LINKED_LIST(i32 %15)
  %17 = load i32, i32* @display, align 4
  %18 = call i32 @FREE_OBS_LINKED_LIST(i32 %17)
  %19 = load i32, i32* @service, align 4
  %20 = call i32 @FREE_OBS_LINKED_LIST(i32 %19)
  %21 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %22 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %21, i32 0, i32 10
  %23 = call i32 @pthread_mutex_destroy(i32* %22)
  %24 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %25 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %24, i32 0, i32 9
  %26 = call i32 @pthread_mutex_destroy(i32* %25)
  %27 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %28 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %27, i32 0, i32 8
  %29 = call i32 @pthread_mutex_destroy(i32* %28)
  %30 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %31 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %30, i32 0, i32 7
  %32 = call i32 @pthread_mutex_destroy(i32* %31)
  %33 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %34 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %33, i32 0, i32 6
  %35 = call i32 @pthread_mutex_destroy(i32* %34)
  %36 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %37 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %36, i32 0, i32 5
  %38 = call i32 @pthread_mutex_destroy(i32* %37)
  %39 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %40 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %39, i32 0, i32 4
  %41 = call i32 @pthread_mutex_destroy(i32* %40)
  %42 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %43 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @da_free(i32 %44)
  %46 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %47 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @da_free(i32 %48)
  %50 = load %struct.obs_core_data*, %struct.obs_core_data** %1, align 8
  %51 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @obs_data_release(i32 %52)
  ret void
}

declare dso_local i32 @obs_main_view_free(i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @FREE_OBS_LINKED_LIST(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @obs_data_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
