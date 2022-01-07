; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_obs_lua_source_free_type_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_obs_lua_source_free_type_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_source = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @obs_lua_source_free_type_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_lua_source_free_type_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obs_lua_source*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.obs_lua_source*
  store %struct.obs_lua_source* %5, %struct.obs_lua_source** %3, align 8
  %6 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  %7 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %6, i32 0, i32 0
  %8 = call i32 @pthread_mutex_lock(i32* %7)
  %9 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  %10 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = call i32 (...) @lock_script()
  %15 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  %16 = call i32 @source_type_unload(%struct.obs_lua_source* %15)
  %17 = call i32 (...) @unlock_script()
  %18 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  %19 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  %22 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %21, i32 0, i32 0
  %23 = call i32 @pthread_mutex_unlock(i32* %22)
  %24 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  %25 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %24, i32 0, i32 0
  %26 = call i32 @pthread_mutex_destroy(i32* %25)
  %27 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  %28 = call i32 @bfree(%struct.obs_lua_source* %27)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @lock_script(...) #1

declare dso_local i32 @source_type_unload(%struct.obs_lua_source*) #1

declare dso_local i32 @unlock_script(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @bfree(%struct.obs_lua_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
