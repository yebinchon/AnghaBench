; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_python_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_python_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { %struct.obs_python_script*, i32 }
%struct.python_obs_timer = type { i64, i64, %struct.python_obs_timer* }
%struct.python_obs_callback = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@tick_mutex = common dso_local global i32 0, align 4
@first_tick_script = common dso_local global %struct.obs_python_script* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"(f)\00", align 1
@cur_python_script = common dso_local global %struct.obs_python_script* null, align 8
@timer_mutex = common dso_local global i32 0, align 4
@first_timer = common dso_local global %struct.python_obs_timer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @python_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @python_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.obs_python_script*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.python_obs_timer*, align 8
  %11 = alloca %struct.python_obs_timer*, align 8
  %12 = alloca %struct.python_obs_callback*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %14 = call i64 (...) @obs_get_video_frame_time()
  store i64 %14, i64* %7, align 8
  %15 = call i32 @pthread_mutex_lock(i32* @tick_mutex)
  %16 = load %struct.obs_python_script*, %struct.obs_python_script** @first_tick_script, align 8
  %17 = icmp ne %struct.obs_python_script* %16, null
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = call i32 @pthread_mutex_unlock(i32* @tick_mutex)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %2
  %25 = call i32 (...) @lock_python()
  %26 = load float, float* %4, align 4
  %27 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), float %26)
  store i32* %27, i32** %8, align 8
  %28 = call i32 @pthread_mutex_lock(i32* @tick_mutex)
  %29 = load %struct.obs_python_script*, %struct.obs_python_script** @first_tick_script, align 8
  store %struct.obs_python_script* %29, %struct.obs_python_script** %5, align 8
  br label %30

30:                                               ; preds = %33, %24
  %31 = load %struct.obs_python_script*, %struct.obs_python_script** %5, align 8
  %32 = icmp ne %struct.obs_python_script* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.obs_python_script*, %struct.obs_python_script** %5, align 8
  store %struct.obs_python_script* %34, %struct.obs_python_script** @cur_python_script, align 8
  %35 = load %struct.obs_python_script*, %struct.obs_python_script** %5, align 8
  %36 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @PyObject_CallObject(i32 %37, i32* %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @Py_XDECREF(i32* %40)
  %42 = call i32 (...) @py_error()
  %43 = load %struct.obs_python_script*, %struct.obs_python_script** %5, align 8
  %44 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %43, i32 0, i32 0
  %45 = load %struct.obs_python_script*, %struct.obs_python_script** %44, align 8
  store %struct.obs_python_script* %45, %struct.obs_python_script** %5, align 8
  br label %30

46:                                               ; preds = %30
  store %struct.obs_python_script* null, %struct.obs_python_script** @cur_python_script, align 8
  %47 = call i32 @pthread_mutex_unlock(i32* @tick_mutex)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @Py_XDECREF(i32* %48)
  %50 = call i32 (...) @unlock_python()
  br label %51

51:                                               ; preds = %46, %2
  %52 = call i32 @pthread_mutex_lock(i32* @timer_mutex)
  %53 = load %struct.python_obs_timer*, %struct.python_obs_timer** @first_timer, align 8
  store %struct.python_obs_timer* %53, %struct.python_obs_timer** %10, align 8
  br label %54

54:                                               ; preds = %96, %51
  %55 = load %struct.python_obs_timer*, %struct.python_obs_timer** %10, align 8
  %56 = icmp ne %struct.python_obs_timer* %55, null
  br i1 %56, label %57, label %98

57:                                               ; preds = %54
  %58 = load %struct.python_obs_timer*, %struct.python_obs_timer** %10, align 8
  %59 = getelementptr inbounds %struct.python_obs_timer, %struct.python_obs_timer* %58, i32 0, i32 2
  %60 = load %struct.python_obs_timer*, %struct.python_obs_timer** %59, align 8
  store %struct.python_obs_timer* %60, %struct.python_obs_timer** %11, align 8
  %61 = load %struct.python_obs_timer*, %struct.python_obs_timer** %10, align 8
  %62 = call %struct.python_obs_callback* @python_obs_timer_cb(%struct.python_obs_timer* %61)
  store %struct.python_obs_callback* %62, %struct.python_obs_callback** %12, align 8
  %63 = load %struct.python_obs_callback*, %struct.python_obs_callback** %12, align 8
  %64 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.python_obs_timer*, %struct.python_obs_timer** %10, align 8
  %70 = call i32 @python_obs_timer_remove(%struct.python_obs_timer* %69)
  br label %96

71:                                               ; preds = %57
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.python_obs_timer*, %struct.python_obs_timer** %10, align 8
  %74 = getelementptr inbounds %struct.python_obs_timer, %struct.python_obs_timer* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.python_obs_timer*, %struct.python_obs_timer** %10, align 8
  %79 = getelementptr inbounds %struct.python_obs_timer, %struct.python_obs_timer* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %71
  %83 = call i32 (...) @lock_python()
  %84 = load %struct.python_obs_callback*, %struct.python_obs_callback** %12, align 8
  %85 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %84, i32 0, i32 0
  %86 = call i32 @timer_call(%struct.TYPE_2__* %85)
  %87 = call i32 (...) @unlock_python()
  %88 = load %struct.python_obs_timer*, %struct.python_obs_timer** %10, align 8
  %89 = getelementptr inbounds %struct.python_obs_timer, %struct.python_obs_timer* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.python_obs_timer*, %struct.python_obs_timer** %10, align 8
  %92 = getelementptr inbounds %struct.python_obs_timer, %struct.python_obs_timer* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %82, %71
  br label %96

96:                                               ; preds = %95, %68
  %97 = load %struct.python_obs_timer*, %struct.python_obs_timer** %11, align 8
  store %struct.python_obs_timer* %97, %struct.python_obs_timer** %10, align 8
  br label %54

98:                                               ; preds = %54
  %99 = call i32 @pthread_mutex_unlock(i32* @timer_mutex)
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @UNUSED_PARAMETER(i8* %100)
  ret void
}

declare dso_local i64 @obs_get_video_frame_time(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @lock_python(...) #1

declare dso_local i32* @Py_BuildValue(i8*, float) #1

declare dso_local i32* @PyObject_CallObject(i32, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @py_error(...) #1

declare dso_local i32 @unlock_python(...) #1

declare dso_local %struct.python_obs_callback* @python_obs_timer_cb(%struct.python_obs_timer*) #1

declare dso_local i32 @python_obs_timer_remove(%struct.python_obs_timer*) #1

declare dso_local i32 @timer_call(%struct.TYPE_2__*) #1

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
