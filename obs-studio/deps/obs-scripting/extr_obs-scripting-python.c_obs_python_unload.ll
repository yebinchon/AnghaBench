; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_unload.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@python_loaded_at_all = common dso_local global i32 0, align 4
@python_loaded = common dso_local global i64 0, align 8
@py_obspython = common dso_local global i32 0, align 4
@python_tick = common dso_local global i32 0, align 4
@python_paths = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@tick_mutex = common dso_local global i32 0, align 4
@timer_mutex = common dso_local global i32 0, align 4
@cur_py_log_chunk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_python_unload() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @python_loaded_at_all, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %39

5:                                                ; preds = %0
  %6 = load i64, i64* @python_loaded, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = call i64 (...) @Py_IsInitialized()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = call i32 (...) @PyGILState_Ensure()
  %13 = load i32, i32* @py_obspython, align 4
  %14 = call i32 @Py_XDECREF(i32 %13)
  %15 = call i32 (...) @Py_Finalize()
  br label %16

16:                                               ; preds = %11, %8, %5
  %17 = load i32, i32* @python_tick, align 4
  %18 = call i32 @obs_remove_tick_callback(i32 %17, i32* null)
  store i64 0, i64* %1, align 8
  br label %19

19:                                               ; preds = %29, %16
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @python_paths, i32 0, i32 0), align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @python_paths, i32 0, i32 1), align 8
  %25 = load i64, i64* %1, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bfree(i32 %27)
  br label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %1, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %1, align 8
  br label %19

32:                                               ; preds = %19
  %33 = load i64, i64* getelementptr inbounds ({ i64, i32* }, { i64, i32* }* bitcast (%struct.TYPE_3__* @python_paths to { i64, i32* }*), i32 0, i32 0), align 8
  %34 = load i32*, i32** getelementptr inbounds ({ i64, i32* }, { i64, i32* }* bitcast (%struct.TYPE_3__* @python_paths to { i64, i32* }*), i32 0, i32 1), align 8
  %35 = call i32 @da_free(i64 %33, i32* %34)
  %36 = call i32 @pthread_mutex_destroy(i32* @tick_mutex)
  %37 = call i32 @pthread_mutex_destroy(i32* @timer_mutex)
  %38 = call i32 @dstr_free(i32* @cur_py_log_chunk)
  store i32 0, i32* @python_loaded_at_all, align 4
  br label %39

39:                                               ; preds = %32, %4
  ret void
}

declare dso_local i64 @Py_IsInitialized(...) #1

declare dso_local i32 @PyGILState_Ensure(...) #1

declare dso_local i32 @Py_XDECREF(i32) #1

declare dso_local i32 @Py_Finalize(...) #1

declare dso_local i32 @obs_remove_tick_callback(i32, i32*) #1

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @da_free(i64, i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @dstr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
