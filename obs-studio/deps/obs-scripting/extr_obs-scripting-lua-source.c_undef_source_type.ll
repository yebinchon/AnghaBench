; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_undef_source_type.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_undef_source_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_script = type { i32 }
%struct.obs_lua_source = type { i32, i32*, %struct.obs_lua_data*, i32 }
%struct.obs_lua_data = type { %struct.obs_lua_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_lua_script*, %struct.obs_lua_source*)* @undef_source_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @undef_source_type(%struct.obs_lua_script* %0, %struct.obs_lua_source* %1) #0 {
  %3 = alloca %struct.obs_lua_script*, align 8
  %4 = alloca %struct.obs_lua_source*, align 8
  %5 = alloca %struct.obs_lua_data*, align 8
  store %struct.obs_lua_script* %0, %struct.obs_lua_script** %3, align 8
  store %struct.obs_lua_source* %1, %struct.obs_lua_source** %4, align 8
  %6 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %7 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %6, i32 0, i32 0
  %8 = call i32 @pthread_mutex_lock(i32* %7)
  %9 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %10 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %9, i32 0, i32 0
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %13 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @obs_enable_source_type(i32 %14, i32 0)
  %16 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %17 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %16, i32 0, i32 2
  %18 = load %struct.obs_lua_data*, %struct.obs_lua_data** %17, align 8
  store %struct.obs_lua_data* %18, %struct.obs_lua_data** %5, align 8
  br label %19

19:                                               ; preds = %22, %2
  %20 = load %struct.obs_lua_data*, %struct.obs_lua_data** %5, align 8
  %21 = icmp ne %struct.obs_lua_data* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.obs_lua_data*, %struct.obs_lua_data** %5, align 8
  %24 = call i32 @call_destroy(%struct.obs_lua_data* %23)
  %25 = load %struct.obs_lua_data*, %struct.obs_lua_data** %5, align 8
  %26 = getelementptr inbounds %struct.obs_lua_data, %struct.obs_lua_data* %25, i32 0, i32 0
  %27 = load %struct.obs_lua_data*, %struct.obs_lua_data** %26, align 8
  store %struct.obs_lua_data* %27, %struct.obs_lua_data** %5, align 8
  br label %19

28:                                               ; preds = %19
  %29 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %30 = call i32 @source_type_unload(%struct.obs_lua_source* %29)
  %31 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %32 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %34 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %33, i32 0, i32 0
  %35 = call i32 @pthread_mutex_unlock(i32* %34)
  %36 = load %struct.obs_lua_source*, %struct.obs_lua_source** %4, align 8
  %37 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %36, i32 0, i32 0
  %38 = call i32 @pthread_mutex_unlock(i32* %37)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @obs_enable_source_type(i32, i32) #1

declare dso_local i32 @call_destroy(%struct.obs_lua_data*) #1

declare dso_local i32 @source_type_unload(%struct.obs_lua_source*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
