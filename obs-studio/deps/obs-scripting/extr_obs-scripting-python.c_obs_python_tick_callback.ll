; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_tick_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_tick_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.python_obs_callback = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"(f)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @obs_python_tick_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_python_tick_callback(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.python_obs_callback*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.python_obs_callback*
  store %struct.python_obs_callback* %9, %struct.python_obs_callback** %5, align 8
  %10 = load %struct.python_obs_callback*, %struct.python_obs_callback** %5, align 8
  %11 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.python_obs_callback*, %struct.python_obs_callback** %5, align 8
  %17 = call i32 @obs_remove_tick_callback(void (i8*, float)* @obs_python_tick_callback, %struct.python_obs_callback* %16)
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.python_obs_callback*, %struct.python_obs_callback** %5, align 8
  %20 = call i32 @lock_callback(%struct.python_obs_callback* %19)
  %21 = load float, float* %4, align 4
  %22 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), float %21)
  store i32* %22, i32** %6, align 8
  %23 = load %struct.python_obs_callback*, %struct.python_obs_callback** %5, align 8
  %24 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @PyObject_CallObject(i32 %25, i32* %26)
  store i32* %27, i32** %7, align 8
  %28 = call i32 (...) @py_error()
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @Py_XDECREF(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @Py_XDECREF(i32* %31)
  %33 = call i32 (...) @unlock_callback()
  br label %34

34:                                               ; preds = %18, %15
  ret void
}

declare dso_local i32 @obs_remove_tick_callback(void (i8*, float)*, %struct.python_obs_callback*) #1

declare dso_local i32 @lock_callback(%struct.python_obs_callback*) #1

declare dso_local i32* @Py_BuildValue(i8*, float) #1

declare dso_local i32* @PyObject_CallObject(i32, i32*) #1

declare dso_local i32 @py_error(...) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @unlock_callback(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
