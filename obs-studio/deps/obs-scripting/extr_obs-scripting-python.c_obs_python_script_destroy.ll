; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_script_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_obs_python_script_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@python_loaded = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_python_script_destroy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.obs_python_script*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.obs_python_script*
  store %struct.obs_python_script* %5, %struct.obs_python_script** %3, align 8
  %6 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %7 = icmp ne %struct.obs_python_script* %6, null
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = load i64, i64* @python_loaded, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = call i32 (...) @lock_python()
  %13 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %14 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @Py_XDECREF(i32 %15)
  %17 = call i32 (...) @unlock_python()
  br label %18

18:                                               ; preds = %11, %8
  %19 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %20 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = call i32 @dstr_free(i32* %21)
  %23 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %24 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = call i32 @dstr_free(i32* %25)
  %27 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %28 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @dstr_free(i32* %29)
  %31 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %32 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @obs_data_release(i32 %34)
  %36 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %37 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %36, i32 0, i32 1
  %38 = call i32 @dstr_free(i32* %37)
  %39 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %40 = getelementptr inbounds %struct.obs_python_script, %struct.obs_python_script* %39, i32 0, i32 0
  %41 = call i32 @dstr_free(i32* %40)
  %42 = load %struct.obs_python_script*, %struct.obs_python_script** %3, align 8
  %43 = call i32 @bfree(%struct.obs_python_script* %42)
  br label %44

44:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @lock_python(...) #1

declare dso_local i32 @Py_XDECREF(i32) #1

declare dso_local i32 @unlock_python(...) #1

declare dso_local i32 @dstr_free(i32*) #1

declare dso_local i32 @obs_data_release(i32) #1

declare dso_local i32 @bfree(%struct.obs_python_script*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
