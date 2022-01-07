; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_obs_lua_source_video_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_obs_lua_source_video_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_data = type { %struct.obs_lua_source* }
%struct.obs_lua_source = type { i32, i32 }

@video_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @obs_lua_source_video_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_lua_source_video_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.obs_lua_data*, align 8
  %6 = alloca %struct.obs_lua_source*, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.obs_lua_data*
  store %struct.obs_lua_data* %8, %struct.obs_lua_data** %5, align 8
  %9 = load %struct.obs_lua_data*, %struct.obs_lua_data** %5, align 8
  %10 = getelementptr inbounds %struct.obs_lua_data, %struct.obs_lua_data* %9, i32 0, i32 0
  %11 = load %struct.obs_lua_source*, %struct.obs_lua_source** %10, align 8
  store %struct.obs_lua_source* %11, %struct.obs_lua_source** %6, align 8
  %12 = load %struct.obs_lua_source*, %struct.obs_lua_source** %6, align 8
  %13 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %12, i32 0, i32 0
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  %15 = load %struct.obs_lua_source*, %struct.obs_lua_source** %6, align 8
  %16 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %37

20:                                               ; preds = %2
  %21 = load i32, i32* @video_tick, align 4
  %22 = call i32 @have_func(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %37

25:                                               ; preds = %20
  %26 = call i32 (...) @lock_script()
  %27 = call i32 (...) @ls_push_data()
  %28 = load %struct.obs_lua_source*, %struct.obs_lua_source** %6, align 8
  %29 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load float, float* %4, align 4
  %32 = fpext float %31 to double
  %33 = call i32 @lua_pushnumber(i32 %30, double %32)
  %34 = load i32, i32* @video_tick, align 4
  %35 = call i32 @call_func(i32 %34, i32 2, i32 0)
  %36 = call i32 (...) @unlock_script()
  br label %37

37:                                               ; preds = %25, %24, %19
  %38 = load %struct.obs_lua_source*, %struct.obs_lua_source** %6, align 8
  %39 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %38, i32 0, i32 0
  %40 = call i32 @pthread_mutex_unlock(i32* %39)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @have_func(i32) #1

declare dso_local i32 @lock_script(...) #1

declare dso_local i32 @ls_push_data(...) #1

declare dso_local i32 @lua_pushnumber(i32, double) #1

declare dso_local i32 @call_func(i32, i32, i32) #1

declare dso_local i32 @unlock_script(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
