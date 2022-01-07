; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.h_find_next_lua_obs_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.h_find_next_lua_obs_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_script = type { i64 }
%struct.lua_obs_callback = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@current_lua_script = common dso_local global %struct.obs_lua_script* null, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lua_obs_callback* (i32*, %struct.lua_obs_callback*, i32)* @find_next_lua_obs_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lua_obs_callback* @find_next_lua_obs_callback(i32* %0, %struct.lua_obs_callback* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lua_obs_callback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.obs_lua_script*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.lua_obs_callback* %1, %struct.lua_obs_callback** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.obs_lua_script*, %struct.obs_lua_script** @current_lua_script, align 8
  store %struct.obs_lua_script* %9, %struct.obs_lua_script** %7, align 8
  %10 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %11 = icmp ne %struct.lua_obs_callback* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %14 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.lua_obs_callback*
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.obs_lua_script*, %struct.obs_lua_script** %7, align 8
  %20 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.lua_obs_callback*
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi %struct.lua_obs_callback* [ %17, %12 ], [ %22, %18 ]
  store %struct.lua_obs_callback* %24, %struct.lua_obs_callback** %5, align 8
  br label %25

25:                                               ; preds = %43, %23
  %26 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %27 = icmp ne %struct.lua_obs_callback* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %31 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %32 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @lua_rawgeti(i32* %29, i32 %30, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @lua_rawequal(i32* %35, i32 -1, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @lua_pop(i32* %38, i32 1)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %49

43:                                               ; preds = %28
  %44 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %45 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.lua_obs_callback*
  store %struct.lua_obs_callback* %48, %struct.lua_obs_callback** %5, align 8
  br label %25

49:                                               ; preds = %42, %25
  %50 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  ret %struct.lua_obs_callback* %50
}

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_rawequal(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
