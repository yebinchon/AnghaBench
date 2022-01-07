; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_lua_obs_timer_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_lua_obs_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_obs_timer = type { %struct.lua_obs_timer*, %struct.lua_obs_timer** }

@timer_mutex = common dso_local global i32 0, align 4
@first_timer = common dso_local global %struct.lua_obs_timer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lua_obs_timer*)* @lua_obs_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lua_obs_timer_init(%struct.lua_obs_timer* %0) #0 {
  %2 = alloca %struct.lua_obs_timer*, align 8
  %3 = alloca %struct.lua_obs_timer*, align 8
  store %struct.lua_obs_timer* %0, %struct.lua_obs_timer** %2, align 8
  %4 = call i32 @pthread_mutex_lock(i32* @timer_mutex)
  %5 = load %struct.lua_obs_timer*, %struct.lua_obs_timer** @first_timer, align 8
  store %struct.lua_obs_timer* %5, %struct.lua_obs_timer** %3, align 8
  %6 = load %struct.lua_obs_timer*, %struct.lua_obs_timer** %3, align 8
  %7 = load %struct.lua_obs_timer*, %struct.lua_obs_timer** %2, align 8
  %8 = getelementptr inbounds %struct.lua_obs_timer, %struct.lua_obs_timer* %7, i32 0, i32 0
  store %struct.lua_obs_timer* %6, %struct.lua_obs_timer** %8, align 8
  %9 = load %struct.lua_obs_timer*, %struct.lua_obs_timer** %2, align 8
  %10 = getelementptr inbounds %struct.lua_obs_timer, %struct.lua_obs_timer* %9, i32 0, i32 1
  store %struct.lua_obs_timer** @first_timer, %struct.lua_obs_timer*** %10, align 8
  %11 = load %struct.lua_obs_timer*, %struct.lua_obs_timer** %3, align 8
  %12 = icmp ne %struct.lua_obs_timer* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.lua_obs_timer*, %struct.lua_obs_timer** %2, align 8
  %15 = getelementptr inbounds %struct.lua_obs_timer, %struct.lua_obs_timer* %14, i32 0, i32 0
  %16 = load %struct.lua_obs_timer*, %struct.lua_obs_timer** %3, align 8
  %17 = getelementptr inbounds %struct.lua_obs_timer, %struct.lua_obs_timer* %16, i32 0, i32 1
  store %struct.lua_obs_timer** %15, %struct.lua_obs_timer*** %17, align 8
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.lua_obs_timer*, %struct.lua_obs_timer** %2, align 8
  store %struct.lua_obs_timer* %19, %struct.lua_obs_timer** @first_timer, align 8
  %20 = call i32 @pthread_mutex_unlock(i32* @timer_mutex)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
