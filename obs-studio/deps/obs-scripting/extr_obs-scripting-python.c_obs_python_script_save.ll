; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_script_save.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_script_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@python_loaded = common dso_local global i32 0, align 4
@cur_python_script = common dso_local global %struct.obs_python_script* null, align 8
@obs_data_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"(O)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_python_script_save(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.obs_python_script*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = bitcast %struct.TYPE_3__* %7 to %struct.obs_python_script*
  store %struct.obs_python_script* %8, %struct.obs_python_script** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @python_loaded, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %1
  br label %49

17:                                               ; preds = %13
  %18 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %19 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %49

23:                                               ; preds = %17
  %24 = call i32 (...) @lock_python()
  %25 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  store %struct.obs_python_script* %25, %struct.obs_python_script** @cur_python_script, align 8
  %26 = load i32, i32* @obs_data_t, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @libobs_to_py(i32 %26, i32 %29, i32 0, i32** %4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %23
  %33 = load i32*, i32** %4, align 8
  %34 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %33)
  store i32* %34, i32** %5, align 8
  %35 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %36 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32* @PyObject_CallObject(i32 %37, i32* %38)
  store i32* %39, i32** %6, align 8
  %40 = call i32 (...) @py_error()
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @Py_XDECREF(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @Py_XDECREF(i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @Py_XDECREF(i32* %45)
  br label %47

47:                                               ; preds = %32, %23
  store %struct.obs_python_script* null, %struct.obs_python_script** @cur_python_script, align 8
  %48 = call i32 (...) @unlock_python()
  br label %49

49:                                               ; preds = %47, %22, %16
  ret void
}

declare dso_local i32 @lock_python(...) #1

declare dso_local i64 @libobs_to_py(i32, i32, i32, i32**) #1

declare dso_local i32* @Py_BuildValue(i8*, i32*) #1

declare dso_local i32* @PyObject_CallObject(i32, i32*) #1

declare dso_local i32 @py_error(...) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @unlock_python(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
