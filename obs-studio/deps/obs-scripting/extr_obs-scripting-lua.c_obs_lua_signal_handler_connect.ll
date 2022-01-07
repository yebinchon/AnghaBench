; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_signal_handler_connect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_signal_handler_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_obs_callback = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@signal_handler_t = common dso_local global i32 0, align 4
@handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"handler\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@defer_connect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @obs_lua_signal_handler_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_lua_signal_handler_connect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_obs_callback*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @signal_handler_t, align 4
  %7 = load i32, i32* @handler, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i32, i32* @signal_handler_t, align 4
  %10 = call i32 @ls_get_libobs_obj(i32 %9, i32 1, i32* @handler)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @lua_tostring(i32* %14, i32 2)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %40

19:                                               ; preds = %13
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @is_function(i32* %20, i32 3)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %40

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = call %struct.lua_obs_callback* @add_lua_obs_callback(i32* %25, i32 3)
  store %struct.lua_obs_callback* %26, %struct.lua_obs_callback** %5, align 8
  %27 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %28 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* @handler, align 4
  %31 = call i32 @calldata_set_ptr(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %33 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @calldata_set_string(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @defer_connect, align 4
  %38 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %5, align 8
  %39 = call i32 @defer_call_post(i32 %37, %struct.lua_obs_callback* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %24, %23, %18, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ls_get_libobs_obj(i32, i32, i32*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @is_function(i32*, i32) #1

declare dso_local %struct.lua_obs_callback* @add_lua_obs_callback(i32*, i32) #1

declare dso_local i32 @calldata_set_ptr(i32*, i8*, i32) #1

declare dso_local i32 @calldata_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @defer_call_post(i32, %struct.lua_obs_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
