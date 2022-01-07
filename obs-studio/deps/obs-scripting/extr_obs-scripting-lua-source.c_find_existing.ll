; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_find_existing.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_find_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_source = type { i8*, %struct.obs_lua_source* }

@lua_source_def_mutex = common dso_local global i32 0, align 4
@first_source_def = common dso_local global %struct.obs_lua_source* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_lua_source* (i8*)* @find_existing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_lua_source* @find_existing(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obs_lua_source*, align 8
  %4 = alloca %struct.obs_lua_source*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.obs_lua_source* null, %struct.obs_lua_source** %3, align 8
  %5 = call i32 @pthread_mutex_lock(i32* @lua_source_def_mutex)
  %6 = load %struct.obs_lua_source*, %struct.obs_lua_source** @first_source_def, align 8
  store %struct.obs_lua_source* %6, %struct.obs_lua_source** %4, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %9 = icmp ne %struct.obs_lua_source* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %12 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  store %struct.obs_lua_source* %17, %struct.obs_lua_source** %3, align 8
  br label %22

18:                                               ; preds = %10
  %19 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %20 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %19, i32 0, i32 1
  %21 = load %struct.obs_lua_source*, %struct.obs_lua_source** %20, align 8
  store %struct.obs_lua_source* %21, %struct.obs_lua_source** %4, align 8
  br label %7

22:                                               ; preds = %16, %7
  %23 = call i32 @pthread_mutex_unlock(i32* @lua_source_def_mutex)
  %24 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  ret %struct.obs_lua_source* %24
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
