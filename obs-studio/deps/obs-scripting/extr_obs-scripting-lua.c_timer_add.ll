; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_timer_add.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_timer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_obs_callback = type { i32 }
%struct.lua_obs_timer = type { i64, i32 }

@defer_timer_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @timer_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_add(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_obs_callback*, align 8
  %6 = alloca %struct.lua_obs_timer*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @is_function(i32* %7, i32 1)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @lua_tointeger(i32* %12, i32 2)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %34

18:                                               ; preds = %11
  %19 = load i32*, i32** %3, align 8
  %20 = call %struct.lua_obs_callback* @add_lua_obs_callback_extra(i32* %19, i32 1, i32 16)
  store %struct.lua_obs_callback* %20, %struct.lua_obs_callback** %5, align 8
  %21 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %22 = call %struct.lua_obs_timer* @lua_obs_callback_extra_data(%struct.lua_obs_callback* %21)
  store %struct.lua_obs_timer* %22, %struct.lua_obs_timer** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 1000000
  %26 = load %struct.lua_obs_timer*, %struct.lua_obs_timer** %6, align 8
  %27 = getelementptr inbounds %struct.lua_obs_timer, %struct.lua_obs_timer* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = call i32 (...) @obs_get_video_frame_time()
  %29 = load %struct.lua_obs_timer*, %struct.lua_obs_timer** %6, align 8
  %30 = getelementptr inbounds %struct.lua_obs_timer, %struct.lua_obs_timer* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @defer_timer_init, align 4
  %32 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %33 = call i32 @defer_call_post(i32 %31, %struct.lua_obs_callback* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %18, %17, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @is_function(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local %struct.lua_obs_callback* @add_lua_obs_callback_extra(i32*, i32, i32) #1

declare dso_local %struct.lua_obs_timer* @lua_obs_callback_extra_data(%struct.lua_obs_callback*) #1

declare dso_local i32 @obs_get_video_frame_time(...) #1

declare dso_local i32 @defer_call_post(i32, %struct.lua_obs_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
