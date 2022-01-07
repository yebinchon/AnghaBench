; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_signal_handler_connect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_signal_handler_connect.c"
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
@.str.1 = private unnamed_addr constant [4 x i8] c"OsO\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"handler\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@calldata_signal_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @obs_python_signal_handler_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @obs_python_signal_handler_connect(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.obs_python_script*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.python_obs_callback*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.obs_python_script*, %struct.obs_python_script** @cur_python_script, align 8
  store %struct.obs_python_script* %11, %struct.obs_python_script** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %13 = icmp ne %struct.obs_python_script* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @PyExc_RuntimeError, align 4
  %16 = call i32 @PyErr_SetString(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %64

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @UNUSED_PARAMETER(i32* %18)
  %20 = load i32, i32* @signal_handler_t, align 4
  %21 = load i32, i32* @handler, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @parse_args(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32** %7, i8** %9, i32** %8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = call i32* (...) @python_none()
  store i32* %27, i32** %3, align 8
  br label %64

28:                                               ; preds = %17
  %29 = load i32, i32* @signal_handler_t, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @py_to_libobs(i32 %29, i32* %30, i32* @handler)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32* (...) @python_none()
  store i32* %34, i32** %3, align 8
  br label %64

35:                                               ; preds = %28
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @PyFunction_Check(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38, %35
  %43 = call i32* (...) @python_none()
  store i32* %43, i32** %3, align 8
  br label %64

44:                                               ; preds = %38
  %45 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call %struct.python_obs_callback* @add_python_obs_callback(%struct.obs_python_script* %45, i32* %46)
  store %struct.python_obs_callback* %47, %struct.python_obs_callback** %10, align 8
  %48 = load %struct.python_obs_callback*, %struct.python_obs_callback** %10, align 8
  %49 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* @handler, align 4
  %52 = call i32 @calldata_set_ptr(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.python_obs_callback*, %struct.python_obs_callback** %10, align 8
  %54 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @calldata_set_string(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @handler, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* @calldata_signal_callback, align 4
  %61 = load %struct.python_obs_callback*, %struct.python_obs_callback** %10, align 8
  %62 = call i32 @signal_handler_connect(i32 %58, i8* %59, i32 %60, %struct.python_obs_callback* %61)
  %63 = call i32* (...) @python_none()
  store i32* %63, i32** %3, align 8
  br label %64

64:                                               ; preds = %44, %42, %33, %26, %14
  %65 = load i32*, i32** %3, align 8
  ret i32* %65
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @parse_args(i32*, i8*, i32**, i8**, i32**) #1

declare dso_local i32* @python_none(...) #1

declare dso_local i32 @py_to_libobs(i32, i32*, i32*) #1

declare dso_local i32 @PyFunction_Check(i32*) #1

declare dso_local %struct.python_obs_callback* @add_python_obs_callback(%struct.obs_python_script*, i32*) #1

declare dso_local i32 @calldata_set_ptr(i32*, i8*, i32) #1

declare dso_local i32 @calldata_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @signal_handler_connect(i32, i8*, i32, %struct.python_obs_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
