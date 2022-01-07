; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.h_call_func_.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.h_call_func_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_script = type { i32 }

@LUA_REFNIL = common dso_local global i32 0, align 4
@current_lua_script = common dso_local global %struct.obs_lua_script* null, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to call %s for %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i8*, i8*)* @call_func_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_func_(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.obs_lua_script*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @LUA_REFNIL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %45

19:                                               ; preds = %6
  %20 = load %struct.obs_lua_script*, %struct.obs_lua_script** @current_lua_script, align 8
  store %struct.obs_lua_script* %20, %struct.obs_lua_script** %14, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @lua_rawgeti(i32* %21, i32 %22, i32 %23)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 -1, %26
  %28 = call i32 @lua_insert(i32* %25, i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @lua_pcall(i32* %29, i32 %30, i32 %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %19
  %35 = load %struct.obs_lua_script*, %struct.obs_lua_script** %14, align 8
  %36 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %35, i32 0, i32 0
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @lua_tostring(i32* %39, i32 -1)
  %41 = call i32 @script_warn(i32* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @lua_pop(i32* %42, i32 1)
  store i32 0, i32* %7, align 4
  br label %45

44:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %34, %18
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @script_warn(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
