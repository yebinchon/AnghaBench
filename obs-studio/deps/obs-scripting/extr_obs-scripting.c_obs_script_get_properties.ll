; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting.c_obs_script_get_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting.c_obs_script_get_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@OBS_SCRIPT_LANG_LUA = common dso_local global i64 0, align 8
@OBS_SCRIPT_LANG_PYTHON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_script_get_properties(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @ptr_valid(%struct.TYPE_6__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %17

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32* (...) @obs_properties_create()
  store i32* %14, i32** %4, align 8
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32*, i32** %4, align 8
  store i32* %16, i32** %2, align 8
  br label %17

17:                                               ; preds = %15, %8
  %18 = load i32*, i32** %2, align 8
  ret i32* %18
}

declare dso_local i32 @ptr_valid(%struct.TYPE_6__*) #1

declare dso_local i32* @obs_properties_create(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
