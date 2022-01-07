; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_signal_handler_connect_global.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_signal_handler_connect_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { i32 }
%struct.python_obs_callback = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cur_python_script = common dso_local global %struct.obs_python_script* null, align 8
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No active script, report this to Jim\00", align 1
@signal_handler_t = common dso_local global i32 0, align 4
@handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"handler\00", align 1
@calldata_signal_callback_global = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @obs_python_signal_handler_connect_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @obs_python_signal_handler_connect_global(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.obs_python_script*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.python_obs_callback*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.obs_python_script*, %struct.obs_python_script** @cur_python_script, align 8
  store %struct.obs_python_script* %10, %struct.obs_python_script** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %12 = icmp ne %struct.obs_python_script* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @PyExc_RuntimeError, align 4
  %15 = call i32 @PyErr_SetString(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %57

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @UNUSED_PARAMETER(i32* %17)
  %19 = load i32, i32* @signal_handler_t, align 4
  %20 = load i32, i32* @handler, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @parse_args(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32** %7, i32** %8)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = call i32* (...) @python_none()
  store i32* %26, i32** %3, align 8
  br label %57

27:                                               ; preds = %16
  %28 = load i32, i32* @signal_handler_t, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @py_to_libobs(i32 %28, i32* %29, i32* @handler)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32* (...) @python_none()
  store i32* %33, i32** %3, align 8
  br label %57

34:                                               ; preds = %27
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @PyFunction_Check(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37, %34
  %42 = call i32* (...) @python_none()
  store i32* %42, i32** %3, align 8
  br label %57

43:                                               ; preds = %37
  %44 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call %struct.python_obs_callback* @add_python_obs_callback(%struct.obs_python_script* %44, i32* %45)
  store %struct.python_obs_callback* %46, %struct.python_obs_callback** %9, align 8
  %47 = load %struct.python_obs_callback*, %struct.python_obs_callback** %9, align 8
  %48 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* @handler, align 4
  %51 = call i32 @calldata_set_ptr(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @handler, align 4
  %53 = load i32, i32* @calldata_signal_callback_global, align 4
  %54 = load %struct.python_obs_callback*, %struct.python_obs_callback** %9, align 8
  %55 = call i32 @signal_handler_connect_global(i32 %52, i32 %53, %struct.python_obs_callback* %54)
  %56 = call i32* (...) @python_none()
  store i32* %56, i32** %3, align 8
  br label %57

57:                                               ; preds = %43, %41, %32, %25, %13
  %58 = load i32*, i32** %3, align 8
  ret i32* %58
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @parse_args(i32*, i8*, i32**, i32**) #1

declare dso_local i32* @python_none(...) #1

declare dso_local i32 @py_to_libobs(i32, i32*, i32*) #1

declare dso_local i32 @PyFunction_Check(i32*) #1

declare dso_local %struct.python_obs_callback* @add_python_obs_callback(%struct.obs_python_script*, i32*) #1

declare dso_local i32 @calldata_set_ptr(i32*, i8*, i32) #1

declare dso_local i32 @signal_handler_connect_global(i32, i32, %struct.python_obs_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
