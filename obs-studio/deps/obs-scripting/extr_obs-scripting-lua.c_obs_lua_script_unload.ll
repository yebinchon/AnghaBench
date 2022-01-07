; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_script_unload.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_script_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.obs_lua_script = type { i32, i64, %struct.obs_lua_script*, %struct.obs_lua_script**, i32* }
%struct.lua_obs_callback = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@tick_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"script_unload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_lua_script_unload(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.obs_lua_script*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.obs_lua_script*, align 8
  %6 = alloca %struct.lua_obs_callback*, align 8
  %7 = alloca %struct.lua_obs_callback*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = bitcast %struct.TYPE_5__* %8 to %struct.obs_lua_script*
  store %struct.obs_lua_script* %9, %struct.obs_lua_script** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %17 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %20 = call i32 @undef_lua_script_sources(%struct.obs_lua_script* %19)
  %21 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %22 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %21, i32 0, i32 3
  %23 = load %struct.obs_lua_script**, %struct.obs_lua_script*** %22, align 8
  %24 = icmp ne %struct.obs_lua_script** %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %15
  %26 = call i32 @pthread_mutex_lock(i32* @tick_mutex)
  %27 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %28 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %27, i32 0, i32 2
  %29 = load %struct.obs_lua_script*, %struct.obs_lua_script** %28, align 8
  store %struct.obs_lua_script* %29, %struct.obs_lua_script** %5, align 8
  %30 = load %struct.obs_lua_script*, %struct.obs_lua_script** %5, align 8
  %31 = icmp ne %struct.obs_lua_script* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %34 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %33, i32 0, i32 3
  %35 = load %struct.obs_lua_script**, %struct.obs_lua_script*** %34, align 8
  %36 = load %struct.obs_lua_script*, %struct.obs_lua_script** %5, align 8
  %37 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %36, i32 0, i32 3
  store %struct.obs_lua_script** %35, %struct.obs_lua_script*** %37, align 8
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.obs_lua_script*, %struct.obs_lua_script** %5, align 8
  %40 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %41 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %40, i32 0, i32 3
  %42 = load %struct.obs_lua_script**, %struct.obs_lua_script*** %41, align 8
  store %struct.obs_lua_script* %39, %struct.obs_lua_script** %42, align 8
  %43 = call i32 @pthread_mutex_unlock(i32* @tick_mutex)
  %44 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %45 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %44, i32 0, i32 3
  store %struct.obs_lua_script** null, %struct.obs_lua_script*** %45, align 8
  %46 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %47 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %46, i32 0, i32 2
  store %struct.obs_lua_script* null, %struct.obs_lua_script** %47, align 8
  br label %48

48:                                               ; preds = %38, %15
  %49 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %50 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %49, i32 0, i32 0
  %51 = call i32 @pthread_mutex_lock(i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @lua_getglobal(i32* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @lua_pcall(i32* %54, i32 0, i32 0, i32 0)
  %56 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %57 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.lua_obs_callback*
  store %struct.lua_obs_callback* %59, %struct.lua_obs_callback** %6, align 8
  br label %60

60:                                               ; preds = %63, %48
  %61 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %6, align 8
  %62 = icmp ne %struct.lua_obs_callback* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %6, align 8
  %65 = getelementptr inbounds %struct.lua_obs_callback, %struct.lua_obs_callback* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.lua_obs_callback*
  store %struct.lua_obs_callback* %68, %struct.lua_obs_callback** %7, align 8
  %69 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %6, align 8
  %70 = call i32 @remove_lua_obs_callback(%struct.lua_obs_callback* %69)
  %71 = load %struct.lua_obs_callback*, %struct.lua_obs_callback** %7, align 8
  store %struct.lua_obs_callback* %71, %struct.lua_obs_callback** %6, align 8
  br label %60

72:                                               ; preds = %60
  %73 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %74 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %73, i32 0, i32 0
  %75 = call i32 @pthread_mutex_unlock(i32* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @lua_close(i32* %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %14
  ret void
}

declare dso_local i32 @undef_lua_script_sources(%struct.obs_lua_script*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @remove_lua_obs_callback(%struct.lua_obs_callback*) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
