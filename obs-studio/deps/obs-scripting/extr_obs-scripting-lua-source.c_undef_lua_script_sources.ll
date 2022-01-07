; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_undef_lua_script_sources.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_undef_lua_script_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_source = type { i64, %struct.obs_lua_source* }
%struct.obs_lua_script = type { i64 }

@lua_source_def_mutex = common dso_local global i32 0, align 4
@first_source_def = common dso_local global %struct.obs_lua_source* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @undef_lua_script_sources(%struct.obs_lua_script* %0) #0 {
  %2 = alloca %struct.obs_lua_script*, align 8
  %3 = alloca %struct.obs_lua_source*, align 8
  store %struct.obs_lua_script* %0, %struct.obs_lua_script** %2, align 8
  %4 = call i32 @pthread_mutex_lock(i32* @lua_source_def_mutex)
  %5 = load %struct.obs_lua_source*, %struct.obs_lua_source** @first_source_def, align 8
  store %struct.obs_lua_source* %5, %struct.obs_lua_source** %3, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  %8 = icmp ne %struct.obs_lua_source* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  %11 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %14 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.obs_lua_script*, %struct.obs_lua_script** %2, align 8
  %19 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  %20 = call i32 @undef_source_type(%struct.obs_lua_script* %18, %struct.obs_lua_source* %19)
  br label %21

21:                                               ; preds = %17, %9
  %22 = load %struct.obs_lua_source*, %struct.obs_lua_source** %3, align 8
  %23 = getelementptr inbounds %struct.obs_lua_source, %struct.obs_lua_source* %22, i32 0, i32 1
  %24 = load %struct.obs_lua_source*, %struct.obs_lua_source** %23, align 8
  store %struct.obs_lua_source* %24, %struct.obs_lua_source** %3, align 8
  br label %6

25:                                               ; preds = %6
  %26 = call i32 @pthread_mutex_unlock(i32* @lua_source_def_mutex)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @undef_source_type(%struct.obs_lua_script*, %struct.obs_lua_source*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
