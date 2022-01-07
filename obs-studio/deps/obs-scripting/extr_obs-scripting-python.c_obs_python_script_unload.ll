; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_script_unload.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_script_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.obs_python_script = type { %struct.script_callback*, i32*, i32*, i32*, i32*, %struct.obs_python_script*, %struct.obs_python_script** }
%struct.script_callback = type { %struct.script_callback* }

@python_loaded = common dso_local global i32 0, align 4
@tick_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_python_script_unload(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.obs_python_script*, align 8
  %4 = alloca %struct.obs_python_script*, align 8
  %5 = alloca %struct.script_callback*, align 8
  %6 = alloca %struct.script_callback*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = bitcast %struct.TYPE_3__* %7 to %struct.obs_python_script*
  store %struct.obs_python_script* %8, %struct.obs_python_script** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @python_loaded, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %1
  br label %90

17:                                               ; preds = %13
  %18 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %19 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %18, i32 0, i32 6
  %20 = load %struct.obs_python_script**, %struct.obs_python_script*** %19, align 8
  %21 = icmp ne %struct.obs_python_script** %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = call i32 @pthread_mutex_lock(i32* @tick_mutex)
  %24 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %25 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %24, i32 0, i32 5
  %26 = load %struct.obs_python_script*, %struct.obs_python_script** %25, align 8
  store %struct.obs_python_script* %26, %struct.obs_python_script** %4, align 8
  %27 = load %struct.obs_python_script*, %struct.obs_python_script** %4, align 8
  %28 = icmp ne %struct.obs_python_script* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %31 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %30, i32 0, i32 6
  %32 = load %struct.obs_python_script**, %struct.obs_python_script*** %31, align 8
  %33 = load %struct.obs_python_script*, %struct.obs_python_script** %4, align 8
  %34 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %33, i32 0, i32 6
  store %struct.obs_python_script** %32, %struct.obs_python_script*** %34, align 8
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.obs_python_script*, %struct.obs_python_script** %4, align 8
  %37 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %38 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %37, i32 0, i32 6
  %39 = load %struct.obs_python_script**, %struct.obs_python_script*** %38, align 8
  store %struct.obs_python_script* %36, %struct.obs_python_script** %39, align 8
  %40 = call i32 @pthread_mutex_unlock(i32* @tick_mutex)
  %41 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %42 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %41, i32 0, i32 6
  store %struct.obs_python_script** null, %struct.obs_python_script*** %42, align 8
  %43 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %44 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %43, i32 0, i32 5
  store %struct.obs_python_script* null, %struct.obs_python_script** %44, align 8
  br label %45

45:                                               ; preds = %35, %17
  %46 = call i32 (...) @lock_python()
  %47 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %48 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @Py_XDECREF(i32* %49)
  %51 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %52 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @Py_XDECREF(i32* %53)
  %55 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %56 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @Py_XDECREF(i32* %57)
  %59 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %60 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @Py_XDECREF(i32* %61)
  %63 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %64 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %63, i32 0, i32 4
  store i32* null, i32** %64, align 8
  %65 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %66 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  %67 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %68 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  %69 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %70 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %72 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %71, i32 0, i32 0
  %73 = load %struct.script_callback*, %struct.script_callback** %72, align 8
  store %struct.script_callback* %73, %struct.script_callback** %5, align 8
  br label %74

74:                                               ; preds = %77, %45
  %75 = load %struct.script_callback*, %struct.script_callback** %5, align 8
  %76 = icmp ne %struct.script_callback* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.script_callback*, %struct.script_callback** %5, align 8
  %79 = getelementptr inbounds %struct.script_callback, %struct.script_callback* %78, i32 0, i32 0
  %80 = load %struct.script_callback*, %struct.script_callback** %79, align 8
  store %struct.script_callback* %80, %struct.script_callback** %6, align 8
  %81 = load %struct.script_callback*, %struct.script_callback** %5, align 8
  %82 = call i32 @remove_script_callback(%struct.script_callback* %81)
  %83 = load %struct.script_callback*, %struct.script_callback** %6, align 8
  store %struct.script_callback* %83, %struct.script_callback** %5, align 8
  br label %74

84:                                               ; preds = %74
  %85 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %86 = call i32 @unload_python_script(%struct.obs_python_script* %85)
  %87 = call i32 (...) @unlock_python()
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %16
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @lock_python(...) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @remove_script_callback(%struct.script_callback*) #1

declare dso_local i32 @unload_python_script(%struct.obs_python_script*) #1

declare dso_local i32 @unlock_python(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
