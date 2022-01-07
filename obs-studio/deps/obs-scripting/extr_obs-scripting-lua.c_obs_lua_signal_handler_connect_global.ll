; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_signal_handler_connect_global.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_signal_handler_connect_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_obs_callback = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@signal_handler_t = common dso_local global i32 0, align 4
@handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"handler\00", align 1
@defer_connect_global = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @obs_lua_signal_handler_connect_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_lua_signal_handler_connect_global(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.lua_obs_callback*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @signal_handler_t, align 4
  %6 = load i32, i32* @handler, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load i32, i32* @signal_handler_t, align 4
  %9 = call i32 @ls_get_libobs_obj(i32 %8, i32 1, i32* @handler)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @is_function(i32* %13, i32 2)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %28

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.lua_obs_callback* @add_lua_obs_callback(i32* %18, i32 2)
  store %struct.lua_obs_callback* %19, %struct.lua_obs_callback** %4, align 8
  %20 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %4, align 8
  %21 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* @handler, align 4
  %24 = call i32 @calldata_set_ptr(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @defer_connect_global, align 4
  %26 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %4, align 8
  %27 = call i32 @defer_call_post(i32 %25, %struct.lua_obs_callback* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %17, %16, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ls_get_libobs_obj(i32, i32, i32*) #1

declare dso_local i32 @is_function(i32*, i32) #1

declare dso_local %struct.lua_obs_callback* @add_lua_obs_callback(i32*, i32) #1

declare dso_local i32 @calldata_set_ptr(i32*, i8*, i32) #1

declare dso_local i32 @defer_call_post(i32, %struct.lua_obs_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
