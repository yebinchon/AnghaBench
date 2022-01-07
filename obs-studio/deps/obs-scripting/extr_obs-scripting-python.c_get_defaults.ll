; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_get_defaults.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_get_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@obs_data_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"(O)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_python_script*, i32*)* @get_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_defaults(%struct.obs_python_script* %0, i32* %1) #0 {
  %3 = alloca %struct.obs_python_script*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.obs_python_script* %0, %struct.obs_python_script** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @obs_data_t, align 4
  %9 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %10 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @libobs_to_py(i32 %8, i32 %12, i32 0, i32** %5)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %29

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @PyObject_CallObject(i32* %19, i32* %20)
  store i32* %21, i32** %7, align 8
  %22 = call i32 (...) @py_error()
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @Py_XDECREF(i32* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @Py_XDECREF(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @Py_XDECREF(i32* %27)
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @libobs_to_py(i32, i32, i32, i32**) #1

declare dso_local i32* @Py_BuildValue(i8*, i32*) #1

declare dso_local i32* @PyObject_CallObject(i32*, i32*) #1

declare dso_local i32 @py_error(...) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
