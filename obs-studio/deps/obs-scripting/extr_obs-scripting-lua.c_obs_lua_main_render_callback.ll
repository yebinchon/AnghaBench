; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_main_render_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_main_render_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_obs_callback = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @obs_lua_main_render_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_lua_main_render_callback(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lua_obs_callback*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.lua_obs_callback*
  store %struct.lua_obs_callback* %10, %struct.lua_obs_callback** %7, align 8
  %11 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %7, align 8
  %12 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %7, align 8
  %15 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %7, align 8
  %21 = call i32 @obs_remove_main_render_callback(void (i8*, i64, i64)* @obs_lua_main_render_callback, %struct.lua_obs_callback* %20)
  br label %34

22:                                               ; preds = %3
  %23 = call i32 (...) @lock_callback()
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %5, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @lua_pushinteger(i32* %24, i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @lua_pushinteger(i32* %28, i32 %30)
  %32 = call i32 @call_func(void (i8*, i64, i64)* @obs_lua_main_render_callback, i32 2, i32 0)
  %33 = call i32 (...) @unlock_callback()
  br label %34

34:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @obs_remove_main_render_callback(void (i8*, i64, i64)*, %struct.lua_obs_callback*) #1

declare dso_local i32 @lock_callback(...) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @call_func(void (i8*, i64, i64)*, i32, i32) #1

declare dso_local i32 @unlock_callback(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
