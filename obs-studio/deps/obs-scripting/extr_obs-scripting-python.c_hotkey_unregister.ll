; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_hotkey_unregister.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_hotkey_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { i32 }
%struct.python_obs_callback = type { i32 }

@cur_python_script = common dso_local global %struct.obs_python_script* null, align 8
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No active script, report this to Jim\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @hotkey_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hotkey_unregister(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.obs_python_script*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.python_obs_callback*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.obs_python_script*, %struct.obs_python_script** @cur_python_script, align 8
  store %struct.obs_python_script* %9, %struct.obs_python_script** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %11 = icmp ne %struct.obs_python_script* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @PyExc_RuntimeError, align 4
  %14 = call i32 @PyErr_SetString(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %43

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @parse_args(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32** %7)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = call i32* (...) @python_none()
  store i32* %20, i32** %3, align 8
  br label %43

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @PyFunction_Check(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %21
  %29 = call i32* (...) @python_none()
  store i32* %29, i32** %3, align 8
  br label %43

30:                                               ; preds = %24
  %31 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call %struct.python_obs_callback* @find_python_obs_callback(%struct.obs_python_script* %31, i32* %32)
  store %struct.python_obs_callback* %33, %struct.python_obs_callback** %8, align 8
  %34 = load %struct.python_obs_callback*, %struct.python_obs_callback** %8, align 8
  %35 = icmp ne %struct.python_obs_callback* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.python_obs_callback*, %struct.python_obs_callback** %8, align 8
  %38 = call i32 @remove_python_obs_callback(%struct.python_obs_callback* %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @UNUSED_PARAMETER(i32* %40)
  %42 = call i32* (...) @python_none()
  store i32* %42, i32** %3, align 8
  br label %43

43:                                               ; preds = %39, %28, %19, %12
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @parse_args(i32*, i8*, i32**) #1

declare dso_local i32* @python_none(...) #1

declare dso_local i32 @PyFunction_Check(i32*) #1

declare dso_local %struct.python_obs_callback* @find_python_obs_callback(%struct.obs_python_script*, i32*) #1

declare dso_local i32 @remove_python_obs_callback(%struct.python_obs_callback*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
