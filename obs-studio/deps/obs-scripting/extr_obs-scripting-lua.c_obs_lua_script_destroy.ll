; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_script_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_script_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_script = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_lua_script_destroy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.obs_lua_script*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.obs_lua_script*
  store %struct.obs_lua_script* %5, %struct.obs_lua_script** %3, align 8
  %6 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %7 = icmp ne %struct.obs_lua_script* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %10 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %9, i32 0, i32 3
  %11 = call i32 @pthread_mutex_destroy(i32* %10)
  %12 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %13 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = call i32 @dstr_free(i32* %14)
  %16 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %17 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = call i32 @dstr_free(i32* %18)
  %20 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %21 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @dstr_free(i32* %22)
  %24 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %25 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @obs_data_release(i32 %27)
  %29 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %30 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %29, i32 0, i32 1
  %31 = call i32 @dstr_free(i32* %30)
  %32 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %33 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %32, i32 0, i32 0
  %34 = call i32 @dstr_free(i32* %33)
  %35 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %36 = call i32 @bfree(%struct.obs_lua_script* %35)
  br label %37

37:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @dstr_free(i32*) #1

declare dso_local i32 @obs_data_release(i32) #1

declare dso_local i32 @bfree(%struct.obs_lua_script*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
