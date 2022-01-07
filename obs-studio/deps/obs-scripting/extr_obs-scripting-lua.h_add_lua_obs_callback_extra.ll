; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.h_add_lua_obs_callback_extra.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.h_add_lua_obs_callback_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_script = type { i32 }
%struct.lua_obs_callback = type { i32*, i32 }

@current_lua_script = common dso_local global %struct.obs_lua_script* null, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lua_obs_callback* (i32*, i32, i64)* @add_lua_obs_callback_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lua_obs_callback* @add_lua_obs_callback_extra(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.obs_lua_script*, align 8
  %8 = alloca %struct.lua_obs_callback*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.obs_lua_script*, %struct.obs_lua_script** @current_lua_script, align 8
  store %struct.obs_lua_script* %9, %struct.obs_lua_script** %7, align 8
  %10 = load %struct.obs_lua_script*, %struct.obs_lua_script** %7, align 8
  %11 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %10, i32 0, i32 0
  %12 = load %struct.obs_lua_script*, %struct.obs_lua_script** %7, align 8
  %13 = bitcast %struct.obs_lua_script* %12 to i32*
  %14 = load i64, i64* %6, align 8
  %15 = add i64 16, %14
  %16 = trunc i64 %15 to i32
  %17 = call %struct.lua_obs_callback* @add_script_callback(i32* %11, i32* %13, i32 %16)
  store %struct.lua_obs_callback* %17, %struct.lua_obs_callback** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @lua_pushvalue(i32* %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %23 = call i32 @luaL_ref(i32* %21, i32 %22)
  %24 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %8, align 8
  %25 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %8, align 8
  %28 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %8, align 8
  ret %struct.lua_obs_callback* %29
}

declare dso_local %struct.lua_obs_callback* @add_script_callback(i32*, i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
