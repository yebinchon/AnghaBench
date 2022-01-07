; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.h_add_python_obs_callback_extra.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.h_add_python_obs_callback_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.python_obs_callback = type { i32* }
%struct.obs_python_script = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.python_obs_callback* (%struct.obs_python_script*, i32*, i64)* @add_python_obs_callback_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.python_obs_callback* @add_python_obs_callback_extra(%struct.obs_python_script* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.obs_python_script*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.python_obs_callback*, align 8
  store %struct.obs_python_script* %0, %struct.obs_python_script** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.obs_python_script*, %struct.obs_python_script** %4, align 8
  %9 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %8, i32 0, i32 0
  %10 = load %struct.obs_python_script*, %struct.obs_python_script** %4, align 8
  %11 = bitcast %struct.obs_python_script* %10 to i32*
  %12 = load i64, i64* %6, align 8
  %13 = add i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.python_obs_callback* @add_script_callback(i32* %9, i32* %11, i32 %14)
  store %struct.python_obs_callback* %15, %struct.python_obs_callback** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @Py_XINCREF(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.python_obs_callback*, %struct.python_obs_callback** %7, align 8
  %20 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.python_obs_callback*, %struct.python_obs_callback** %7, align 8
  ret %struct.python_obs_callback* %21
}

declare dso_local %struct.python_obs_callback* @add_script_callback(i32*, i32*, i32) #1

declare dso_local i32 @Py_XINCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
