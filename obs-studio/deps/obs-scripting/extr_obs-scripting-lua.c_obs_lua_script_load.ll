; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_script_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua.c_obs_lua_script_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_lua_script = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_lua_script_load(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.obs_lua_script*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.obs_lua_script*
  store %struct.obs_lua_script* %5, %struct.obs_lua_script** %3, align 8
  %6 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %7 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  %12 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %13 = call i32 @load_lua_script(%struct.obs_lua_script* %12)
  %14 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %15 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %18 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @obs_lua_script_update(i32* %23, i32* null)
  br label %25

25:                                               ; preds = %22, %11
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.obs_lua_script*, %struct.obs_lua_script** %3, align 8
  %28 = getelementptr inbounds %struct.obs_lua_script, %struct.obs_lua_script* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  ret i32 %30
}

declare dso_local i32 @load_lua_script(%struct.obs_lua_script*) #1

declare dso_local i32 @obs_lua_script_update(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
