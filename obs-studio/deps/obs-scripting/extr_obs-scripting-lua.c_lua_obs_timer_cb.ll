; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_lua_obs_timer_cb.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_lua_obs_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_obs_callback = type { i32 }
%struct.lua_obs_timer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lua_obs_callback* (%struct.lua_obs_timer*)* @lua_obs_timer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lua_obs_callback* @lua_obs_timer_cb(%struct.lua_obs_timer* %0) #0 {
  %2 = alloca %struct.lua_obs_timer*, align 8
  store %struct.lua_obs_timer* %0, %struct.lua_obs_timer** %2, align 8
  %3 = load %struct.lua_obs_timer*, %struct.lua_obs_timer** %2, align 8
  %4 = bitcast %struct.lua_obs_timer* %3 to %struct.lua_obs_callback*
  %5 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %4, i64 -1
  ret %struct.lua_obs_callback* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
