; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_obs_lua_source_get_width.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_obs_lua_source_get_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_data = type { %struct.obs_lua_source* }
%struct.obs_lua_source = type { i32, i32 }

@get_width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @obs_lua_source_get_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @obs_lua_source_get_width(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obs_lua_data*, align 8
  %4 = alloca %struct.obs_lua_source*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.obs_lua_data*
  store %struct.obs_lua_data* %7, %struct.obs_lua_data** %3, align 8
  %8 = load %struct.obs_lua_data*, %struct.obs_lua_data** %3, align 8
  %9 = getelementptr inbounds %struct.obs_lua_data, %struct.obs_lua_data* %8, i32 0, i32 0
  %10 = load %struct.obs_lua_source*, %struct.obs_lua_source** %9, align 8
  store %struct.obs_lua_source* %10, %struct.obs_lua_source** %4, align 8
  store i64 0, i64* %5, align 8
  %11 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %12 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %11, i32 0, i32 0
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %15 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %38

19:                                               ; preds = %1
  %20 = load i32, i32* @get_width, align 4
  %21 = call i32 @have_func(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %38

24:                                               ; preds = %19
  %25 = call i32 (...) @lock_script()
  %26 = call i32 (...) @ls_push_data()
  %27 = load i32, i32* @get_width, align 4
  %28 = call i64 @call_func(i32 %27, i32 1, i32 1)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %32 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @lua_tointeger(i32 %33, i32 -1)
  store i64 %34, i64* %5, align 8
  %35 = call i32 @ls_pop(i32 1)
  br label %36

36:                                               ; preds = %30, %24
  %37 = call i32 (...) @unlock_script()
  br label %38

38:                                               ; preds = %36, %23, %18
  %39 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %40 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %39, i32 0, i32 0
  %41 = call i32 @pthread_mutex_unlock(i32* %40)
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @have_func(i32) #1

declare dso_local i32 @lock_script(...) #1

declare dso_local i32 @ls_push_data(...) #1

declare dso_local i64 @call_func(i32, i32, i32) #1

declare dso_local i64 @lua_tointeger(i32, i32) #1

declare dso_local i32 @ls_pop(i32) #1

declare dso_local i32 @unlock_script(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
