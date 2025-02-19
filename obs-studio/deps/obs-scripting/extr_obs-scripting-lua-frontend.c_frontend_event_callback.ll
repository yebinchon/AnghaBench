; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-frontend.c_frontend_event_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-frontend.c_frontend_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_obs_callback = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @frontend_event_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_event_callback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_obs_callback*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.lua_obs_callback*
  store %struct.lua_obs_callback* %8, %struct.lua_obs_callback** %5, align 8
  %9 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %10 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %13 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %19 = call i32 @obs_frontend_remove_event_callback(void (i32, i8*)* @frontend_event_callback, %struct.lua_obs_callback* %18)
  br label %27

20:                                               ; preds = %2
  %21 = call i32 (...) @lock_callback()
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @lua_pushinteger(i32* %22, i32 %23)
  %25 = call i32 @call_func(void (i32, i8*)* @frontend_event_callback, i32 1, i32 0)
  %26 = call i32 (...) @unlock_callback()
  br label %27

27:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @obs_frontend_remove_event_callback(void (i32, i8*)*, %struct.lua_obs_callback*) #1

declare dso_local i32 @lock_callback(...) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @call_func(void (i32, i8*)*, i32, i32) #1

declare dso_local i32 @unlock_callback(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
