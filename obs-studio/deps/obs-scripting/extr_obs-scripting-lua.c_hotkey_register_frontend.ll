; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_hotkey_register_frontend.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_hotkey_register_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_obs_callback = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@on_remove_hotkey = common dso_local global i32 0, align 4
@hotkey_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@OBS_INVALID_HOTKEY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hotkey_register_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotkey_register_frontend(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lua_obs_callback*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @lua_tostring(i32* %8, i32 1)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @lua_tostring(i32* %14, i32 2)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %52

19:                                               ; preds = %13
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @is_function(i32* %20, i32 3)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %52

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = call %struct.lua_obs_callback* @add_lua_obs_callback(i32* %25, i32 3)
  store %struct.lua_obs_callback* %26, %struct.lua_obs_callback** %7, align 8
  %27 = load i32, i32* @on_remove_hotkey, align 4
  %28 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %7, align 8
  %29 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @hotkey_callback, align 4
  %34 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %7, align 8
  %35 = call i64 @obs_hotkey_register_frontend(i8* %31, i8* %32, i32 %33, %struct.lua_obs_callback* %34)
  store i64 %35, i64* %4, align 8
  %36 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %7, align 8
  %37 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @calldata_set_int(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @lua_pushinteger(i32* %41, i32 %43)
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @OBS_INVALID_HOTKEY_ID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %24
  %49 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %7, align 8
  %50 = call i32 @remove_lua_obs_callback(%struct.lua_obs_callback* %49)
  br label %51

51:                                               ; preds = %48, %24
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %23, %18, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @is_function(i32*, i32) #1

declare dso_local %struct.lua_obs_callback* @add_lua_obs_callback(i32*, i32) #1

declare dso_local i64 @obs_hotkey_register_frontend(i8*, i8*, i32, %struct.lua_obs_callback*) #1

declare dso_local i32 @calldata_set_int(i32*, i8*, i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @remove_lua_obs_callback(%struct.lua_obs_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
