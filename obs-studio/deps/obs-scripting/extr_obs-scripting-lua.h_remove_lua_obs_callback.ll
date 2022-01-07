; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.h_remove_lua_obs_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.h_remove_lua_obs_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_obs_callback = type { i32, i32, i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lua_obs_callback*)* @remove_lua_obs_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_lua_obs_callback(%struct.lua_obs_callback* %0) #0 {
  %2 = alloca %struct.lua_obs_callback*, align 8
  store %struct.lua_obs_callback* %0, %struct.lua_obs_callback** %2, align 8
  %3 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %2, align 8
  %4 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %3, i32 0, i32 2
  %5 = call i32 @remove_script_callback(i32* %4)
  %6 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %2, align 8
  %7 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %10 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %2, align 8
  %11 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @luaL_unref(i32 %8, i32 %9, i32 %12)
  ret void
}

declare dso_local i32 @remove_script_callback(i32*) #1

declare dso_local i32 @luaL_unref(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
