; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_scripting_load_python.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_scripting_load_python.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@python_loaded = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@__const.obs_scripting_load_python.argv = private unnamed_addr constant [2 x i8*] [i8* bitcast ([1 x i32]* @.str to i8*), i8* null], align 16
@SCRIPT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"obspython\00", align 1
@py_obspython = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Error importing obspython.py', unloading obs-python\00", align 1
@startup_script = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to load python plugin\00", align 1
@python_loaded_at_all = common dso_local global i32 0, align 4
@python_tick = common dso_local global i32 0, align 4
@home_path = common dso_local global i32 0, align 4
@pythondir = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_scripting_load_python(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [2 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @python_loaded, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %67

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @UNUSED_PARAMETER(i8* %11)
  %13 = call i32 (...) @Py_Initialize()
  %14 = call i32 (...) @Py_IsInitialized()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %67

17:                                               ; preds = %10
  %18 = call i32 (...) @PyEval_InitThreads()
  %19 = call i32 (...) @PyEval_ThreadsInitialized()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %67

22:                                               ; preds = %17
  %23 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([2 x i8*]* @__const.obs_scripting_load_python.argv to i8*), i64 16, i1 false)
  store i32 1, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %26 = call i32 @PySys_SetArgv(i32 %24, i8** %25)
  %27 = load i32, i32* @SCRIPT_DIR, align 4
  %28 = call i32 @add_to_python_path(i32 %27)
  %29 = call i32 @PyImport_ImportModule(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* @py_obspython, align 4
  %30 = call i32 (...) @py_error()
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %22
  %37 = call i32 @warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %50

38:                                               ; preds = %22
  %39 = load i8*, i8** @startup_script, align 8
  %40 = call i64 @PyRun_SimpleString(i8* %39)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* @python_loaded, align 4
  %43 = call i32 (...) @py_error()
  %44 = load i32, i32* @py_obspython, align 4
  %45 = call i32 @add_hook_functions(i32 %44)
  %46 = call i32 (...) @py_error()
  %47 = load i32, i32* @py_obspython, align 4
  %48 = call i32 @add_python_frontend_funcs(i32 %47)
  %49 = call i32 (...) @py_error()
  br label %50

50:                                               ; preds = %38, %36
  %51 = call i32 (...) @PyGILState_GetThisThreadState()
  %52 = call i32 @PyEval_ReleaseThread(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 (...) @obs_python_unload()
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* @python_loaded_at_all, align 4
  %60 = load i32, i32* @python_loaded, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @python_tick, align 4
  %64 = call i32 @obs_add_tick_callback(i32 %63, i32* null)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* @python_loaded, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %21, %16, %9
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i32 @Py_Initialize(...) #1

declare dso_local i32 @Py_IsInitialized(...) #1

declare dso_local i32 @PyEval_InitThreads(...) #1

declare dso_local i32 @PyEval_ThreadsInitialized(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PySys_SetArgv(i32, i8**) #1

declare dso_local i32 @add_to_python_path(i32) #1

declare dso_local i32 @PyImport_ImportModule(i8*) #1

declare dso_local i32 @py_error(...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @PyRun_SimpleString(i8*) #1

declare dso_local i32 @add_hook_functions(i32) #1

declare dso_local i32 @add_python_frontend_funcs(i32) #1

declare dso_local i32 @PyEval_ReleaseThread(i32) #1

declare dso_local i32 @PyGILState_GetThisThreadState(...) #1

declare dso_local i32 @obs_python_unload(...) #1

declare dso_local i32 @obs_add_tick_callback(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
